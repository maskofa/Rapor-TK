unit ufrmLookUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AdvCGrid, ExtCtrls, DB, StdCtrls,
  ZDataset, AdvPanel, Shader,  AdvGroupBox, AdvGlowButton, AdvCombo,
  AdvToolBar, AdvOfficeHint, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvToolBarStylers, ADODB;

type
  TLookUpResult = record
    Count : Integer;
    Text  : string;
  end;

  TfrmLookUp = class(TForm)
    sgData: TAdvColumnGrid;
    AdvGroupBox2: TAdvGroupBox;
    gbSearch: TAdvGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    edKeyword: TEdit;
    cbSearch: TAdvComboBox;
    gbButton: TAdvGroupBox;
    btnCancel: TAdvGlowButton;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    btnOK: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sgDataGetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure sgDataDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cbSearchChange(Sender: TObject);
    procedure edKeywordKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    zqr : TZQuery;
  public
    { Public declarations }
  end;

function LookUpData(ACaption, ASql: String; HideCol: Integer= -1;
                    cbox:boolean=false):TLookUpResult;
function LookUpCells(AData: TStrings; ACol, ARow: Integer): string;
function LookUpList(Str: string; index: Integer): string;

var
  frmLookUp: TfrmLookUp;

implementation

uses ufrmErrorQuery, myEngine, StrUtils, ufrmLogin;

var
  isCBox : Boolean;
  FSql : String;
  AHideCol: Integer;
  sResult: string;
  ACount: integer;

{$R *.dfm}

function Lebar_Form(i: Integer): Integer;
begin
  frmLookUp.Width := i;
  Result := i;
end;

function LookUpList(Str: string; index: Integer): string;
var
  lst : TStrings;
begin
  lst := TStringList.Create;
  lst.Text := Str;
  result := lst[Index];
end;

function LookUpCells(AData: TStrings; ACol, ARow: Integer): string;
var
  str: String;
  int: integer;
begin
  result := '';
  str    := format('[%d, %d]', [ACol, ARow]);  //IntToStr(ACol) + ', ' + IntToStr(ARow);
  int    := AData.IndexOf(str);
  if int < 0 then exit;
  result := AData[int + 1];
end;

function LookUpData(ACaption, ASql: String;HideCol: Integer= -1;
                    cbox:boolean=false): TLookUpResult;
begin
  IsCBox       := cbox;
  frmLookUp    := TfrmLookUp.Create(nil);
  AHideCol     := HideCol;
  FSql         := ASql;
  result.Text  := '';
  result.Count := 0;

  frmLookUp.zqr.SQL.Text := ASql;
  if ErrorExecQuery(frmLookUp.zqr) then exit;
  if frmLookUp.zqr.IsEmpty then
  begin
    cmsgInfo('Data yang akan ditampilkan kosong');
    exit;
  end;
  frmLookUp.mRibbon.Caption.Caption := '.:: ' + ACaption + ' ::.';
  frmLookUp.mRibbon.Hint            := ACaption;
  frmLookUp.ShowModal;
  result.Text  := sResult;
  result.Count := ACount;
end;

procedure TfrmLookUp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  zqr.Free;
  if Tag <> 1 then
  begin
   sResult := '';
   ACount  := 0;
  end;
end;

procedure TfrmLookUp.FormShow(Sender: TObject);
var
  ACol: Integer;
  Added: Integer;
  FontSizer: Integer;
  i: Integer;
begin
  if IsCBox then Added := 1 else Added := 0;
  FontSizer := ((sgData.Font.Size * 7) div 7);
  if sgData.RowCount > 2 then
  sgData.RemoveRows(2, sgData.RowCount - 2);
  sgData.Rows[1].Clear;

  if IsCBox then
  begin
    sgData.Columns[1].Editor := edDataCheckBox;
    sgData.Columns[1].Width  := 19;
    sgData.Columns[1].Header := '';
    sgData.MergeCells(1, 0, 2, 1);
  end;

  ACol := zqr.FieldCount + 1 + Added;
  cbSearch.Clear;
  sgData.ColCount := ACol;
  for i := 1 + Added to sgdata.ColCount - 1 do
  begin
    ACol := i - 1 - Added;
    sgData.Columns[i].Header := '   ' + uppercase(zqr.Fields[ACol].FieldName);
    sgData.Columns[i].Width  := zqr.Fields[ACol].DisplayWidth * FontSizer;
    sgData.Columns[i].Color  := clWindow;
    cbSearch.AddItem(sgData.Columns[i].Header, nil);
  end;

  while not zqr.Eof do
  begin
    for i := 0 to zqr.FieldCount - 1 do
    begin
      ACol := i + 1 + Added;
      FillGrid(sgData, zqr.Fields[i].AsString, ACol, LAST_ROW);
      sgData.Columns[ACol].SortPrefix := zqr.Fields[i].FieldName;
    end;
    zqr.Next;
    sgData.AddRow;
  end;
  if sgData.RowCount > 2 then
  sgData.RemoveRows(sgData.RowCount - 1, 1);
  if AHideCol <> -1 then
  sgData.Columns[AHideCol].Width := 0;
  Tag := 0;
end;

procedure TfrmLookUp.sgDataGetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  if (ARow > 0) and (ACol = 0) then Value := IntToStr(ARow);
end;

procedure TfrmLookUp.btnOKClick(Sender: TObject);
var
  check: Boolean;
  i, j : Integer;
  ARow: Integer;
  str : string;
  lst: TStrings;
begin
  if IsCBox then
  begin
    sResult := '';
    ACount  := 0;
    for i := 1 to sgData.RowCount - 1 do
    begin
      sgData.GetCheckBoxState(1, i, check);
      if check then
      begin
        inc(ACount);
        lst := sgData.Rows[i];
        for j := 0 to lst.Count - 1 do
        begin
          str := format('[%d, %d]', [j, ACount - 1]) + #13#10;
          str := str + lst[j];
          sResult := sResult + str + #13#10;
        end;
      end;
    end;
  end else
  begin
    ARow := sgData.Row;
    if ARow <= 0 then exit;
    sResult := sgData.Rows[ARow].Text;
    ACount  := 1;
  end;
  Tag := 1;
  Close;
end;

procedure TfrmLookUp.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLookUp.sgDataDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if not IscBox then btnOkClick(sender);
end;

procedure TfrmLookUp.cbSearchChange(Sender: TObject);
var
  x: Integer;
begin
  x := cbSearch.Items.IndexOf(cbSearch.Text);
  if x < 0 then exit;
  sgData.Col := x + 1;
end;

procedure TfrmLookUp.edKeywordKeyPress(Sender: TObject; var Key: Char);
var
  Field: string;
begin
  if Key <> #13 then exit;
  if cbSearch.Items.IndexOf(cbSearch.Text) < 0 then exit;
  Field := OriginalField(FSql, cbSearch.Text);
  zqr.SQL.Text := SearchQuery(FSql, Field, edKeyword.Text);
  if ErrorExecQuery(zqr) then exit;
  FormShow(sender);
end;

procedure TfrmLookUp.FormCreate(Sender: TObject);
begin
  zqr := NewZQuery;
end;

end.
