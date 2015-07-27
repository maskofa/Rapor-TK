unit ufrmDefaultMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeHint, AdvSmoothPanel, Grids, BaseGrid,
  AdvGrid, AdvCGrid, StdCtrls, AdvEdit, AdvGlowButton, ZDataSet, myEngine,
  ADODB, ComCtrls;

type
  TControlBy = (cbHint, cbHelpKeyword, cbName);

  TfrmDefaultMaster = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvSmoothPanel1: TAdvSmoothPanel;
    btnNew: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnSimpan: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    Label1: TLabel;
    sgData: TAdvColumnGrid;
    edID: TEdit;
    mmSQL: TMemo;
    procedure sgDataGetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sgDataClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure MustBeNumber(Sender: TObject; var Key: Char);
    procedure MustBeUpperCase(Sender: TObject; var Key: Char);

  private
  public
    FQueryType: TQueryType;
    ParentID: Integer;
    FLoaded: boolean;
    procedure FillControlFromQuery(Ctrl: TControl; zqr: TZQuery; Field: String);
    procedure FillGridFromEdit;
    function  GetControlBy(ABy: TControlBy; AKey: String): TControl;
    function  GetControlFill(ABy: TControlBy; AKey: String): string;
    procedure LoadComboboxData;
  end;

const
  SQL_GRID   = 0;
  SQL_DATA   = 1;
  SQL_INSERT = 2;
  SQL_UPDATE = 3;
  SQL_DELETE = 4;
  SQL_MAXID  = 5;

var
  frmDefaultMaster: TfrmDefaultMaster;

{
   //property order to control (Usage this class);

   Hint : nama field;
   HelpKeyword : nama parameter;
   Tag : hapus text & nomor index (Column) di grid  (nilai >= 1);
         jika tidak ditampilakn di grid diisi 100;
   HelpContext : harus diIsi (nilai = 18);
   ImeName : nama field yg akan tampil saat field tidak diisi;
   btnNew.Hint : focus pada komponen yg bernama hint saat klik tambah diklik;
   sgData.Tag : nomor pengambilan txt untuk konfimasi penghapusan data;
   sgData.Hint: title (nama object) untuk konfimasi saat penghapusan data; 
}

implementation

uses ufrmLogin, ufrmErrorQuery, ExtCtrls, AdvSmoothDatePicker;

{$R *.dfm}

procedure TfrmDefaultMaster.FillControlFromQuery(Ctrl: TControl;
          zqr: TZQuery; Field: String);
var
  str: string;
begin
  if Ctrl is TEdit then
  TEdit(Ctrl).Text := FieldToStr(zqr, Field);
  if Ctrl is TMemo then
  TMemo(Ctrl).Text := FieldToStr(zqr, Field);
  if Ctrl is TCombobox then
  SetActiveData1(TCombobox(Ctrl), FieldToStr(zqr, Field));
  if Ctrl is TAdvSmoothDatePicker then
  TAdvSmoothDatePicker(Ctrl).Date := FieldToDate(zqr, Field);
  if Ctrl is TDateTimePicker then
  TDateTimePicker(Ctrl).Date := FieldToDate(zqr, Field);
  if Ctrl is TImage then
  begin
    str := AppPath + 'photo\' + FieldToStr(zqr, Field);
    if FileExists(str) then
    TImage(Ctrl).Picture.LoadFromFile(str) else
    TImage(Ctrl).Picture     := nil;
    TPanel(Ctrl.Parent).Hint := FieldToStr(zqr, Field);
  end;
end;

procedure TfrmDefaultMaster.MustBeUpperCase(Sender: TObject; var Key: Char);
begin
  Key := Upcase(Key);
end;

procedure TfrmDefaultMaster.sgDataGetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  if (ACol = 0) and (ARow > 0) then
  Value := IntToStr(ARow);
end;

procedure TfrmDefaultMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDefaultMaster.FormCreate(Sender: TObject);
var
  i: Integer;
  str: string;
begin
  str := mmSQL.Lines[SQL_GRID];
  zqr.SQL.Text := str;

  if zqr.Params.FindParam('ParentID') <> nil then
  zqr.ParamByName('ParentID').AsInteger := ParentID;
  if ErrorExecQuery(zqr) then exit;

  ClearGrid(sgData);
  while not zqr.Eof do
  begin
    AddRow(sgData);
    for i := 1 to zqr.FieldCount do
    FillLastGrid(sgData, zqr.Fields[i - 1].AsString, i);
    zqr.Next;
  end;
  FQueryType := qtUnKnown;
  if not FLoaded then
  LoadComboboxData;
end;

function TfrmDefaultMaster.GetControlBy(ABy: TControlBy; AKey: String):
    TControl;
var
  i: Integer;
begin
  Result := Nil;
  for i := 0 to ComponentCount - 1 do
  begin
    try
      if ABy = cbHint then
      begin
        if TControl(Components[i]).Hint = AKey then
        begin
          result := TControl(Components[i]);
          exit;
        end;
      end;
      if ABy = cbHelpkeyword then
      begin
        if TControl(Components[i]).HelpKeyword = AKey then
        begin
          result := TControl(Components[i]);
          exit;
        end;
      end;
      if ABy = cbName then
      begin
        if TControl(Components[i]).Name = AKey then
        begin
          result := TControl(Components[i]);
          exit;
        end;
      end;
    except
    end;
  end;
end;

procedure TfrmDefaultMaster.sgDataClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  i: Integer;
  str: string;
  Ctrl: TControl;
  ids: string;
begin
  if sgData.Cells[1, ARow] = '' then exit;
  str := mmSQL.Lines[SQL_DATA];
  ids := sgData.Cells[1, ARow];
  zqr.SQL.Text := str;
  zqr.ParamByName('id').AsString := ids;
  if ErrorExecQuery(zqr) then exit;
  if zqr.IsEmpty then exit;

  for i := 0 to zqr.FieldCount - 1 do
  begin
    str  := zqr.Fields[i].FieldName;
    Ctrl := GetControlBy(cbHint, str);
    if Ctrl <> nil then
    begin
      FillControlFromQuery(Ctrl, zqr, str);
    end;
  end;
  FQueryType := qtUnKnown;
  btnEditClick(BtnEdit);
end;

procedure TfrmDefaultMaster.btnNewClick(Sender: TObject);
var
  Ctrl: TControl;
begin
  FQueryType   := qtInsert;
  zqr.SQL.Text := mmSQL.Lines[SQL_INSERT];
  Ctrl         := GetControlBy(cbName, btnNew.Hint);
  ClearControl(Self, 1, true);
  if Ctrl <> nil then TWinControl(Ctrl).SetFocus;
end;

procedure TfrmDefaultMaster.btnEditClick(Sender: TObject);
var
  Ctrl: TControl;
begin
  if trim(edID.Text) = '' then
  begin
    cmsgPerhatian('Data belum dipilih.');
    exit;
  end;

  FQueryType   := qtUpdate;
  zqr.SQL.Text := mmSQL.Lines[SQL_UPDATE];
  Ctrl         := GetControlBy(cbName, btnEdit.Hint);

  try
    if Ctrl <> nil then TWinControl(Ctrl).SetFocus;
  except
  end;
end;

procedure TfrmDefaultMaster.btnSimpanClick(Sender: TObject);
var
  prm: string;
  idx: Integer;
  str: string;
  i: Integer;
begin
  if FQueryType = qtUnKnown then
  begin
    cmsgPerhatian('Mode Operasi Data belum dipilih');
    exit;
  end;

  str := zqr.SQL.Text;
  if Pos(':auto', str) > 0 then
  begin
    zqr.SQL.Text := mmSQL.Lines[SQL_MAXID];
    if ErrorExecQuery(zqr) then exit;
    idx := FieldToInt(zqr, 'maxid') + 1;
    str := StringReplace(str, ':auto', IntToStr(idx), [rfReplaceAll]);
    zqr.SQL.Text := str;
  end;

  CheckCompletion(Self, 18);

  for i := 0 to zqr.Params.Count - 1 do
  begin
    prm := zqr.Params[i].Name;
    str := GetControlFill(cbHelpKeyword, prm);
    if prm = 'pass' then
    begin
      if copy(str, 1, length('[NULL]')) = '[NULL]' then
      str := copy(str, length('[NULL]') + 1, length(str)) else
      str := Log10Crypt(str);
    end;
    zqr.Params[i].AsString := str;
  end;
  if ErrorExecQuery(zqr) then exit;

  if FQueryType = qtInsert then
  begin
    zqr.SQL.Text := mmSQL.Lines[SQL_MAXID];
    if GetQueryType(zqr.SQL.Text) = qtSelect then
    begin
      if ErrorExecQuery(zqr) then exit;
      edID.Text := FieldToStr(zqr, 'maxid');
    end;
    AddRow(sgData);
    sgData.Row := sgData.RowCount - 1;
  end;
  FillGridFromEdit;
  cmsgInfo('Data berhasil disimpan');
  FQueryType := qtUnknown;
end;

procedure TfrmDefaultMaster.btnDeleteClick(Sender: TObject);
var
  str: string;
  idx: Integer;
  ARow: Integer;
begin
  FQueryType := qtUnKnown;
  ARow       := sgData.Row;

  if sgData.Cells[1, 1] = '' then exit;

  if ARow < 1 then
  begin
    cmsgPerhatian('Data belum dipilih.');
    exit;
  end;

  idx := sgData.Tag;
  str := 'Apakah Anda Yakin akan menghapus ' + sgData.Hint + ' "%s" ?';
  str := format(str, [sgData.Cells[idx, ARow]]);
  if cmsgTanya(str) = mrYes then
  begin
    zqr.SQL.Text := mmSQL.Lines[SQL_DELETE];
    zqr.ParamByName('id').AsString := sgData.Cells[1, ARow];
    ErrorExecQuery(zqr);
    DeleteActiveRow(sgData);
  end;
end;

procedure TfrmDefaultMaster.FillGridFromEdit;
var
  str: string;
  comp: TComponent;
  int: Integer;
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    comp := Components[i];
    int  := Comp.Tag;
    if  (int > 0) and (int < sgData.ColCount)  then
    begin
      if Comp is TEdit then
      FillGrid(sgData, TEdit(Comp).Text, int);
      if Comp is TCombobox then
      FillGrid(sgData, TCombobox(Comp).Text, int);
      if Comp is TAdvSmoothDatePicker then
      begin
        str := FormatDateTime('dd/MM/yyyy', TAdvSmoothDatePicker(Comp).Date);
        FillGrid(sgData, str, int);
      end;
    end;
  end;
end;

function TfrmDefaultMaster.GetControlFill(ABy: TControlBy; AKey: String):
    string;
var
  Ctrl: TControl;
begin
  Result := '';
  Ctrl   := GetControlBy(ABy, AKey);

  if Ctrl = nil then exit;

  if Ctrl is TEdit then
  result := TEdit(Ctrl).Text;
  if Ctrl is TAdvEdit then
  result := TAdvEdit(Ctrl).Text;
  if Ctrl is TCombobox then
  result := GetActiveData1(TCombobox(Ctrl));
  if Ctrl is TMemo then
  result := TMemo(Ctrl).Text;
  if Ctrl is TImage then
  result := TPanel(Ctrl.Parent).Hint;
  if Ctrl is TAdvSmoothDatePicker then
  result := FormatDateTime('dd/mm/yyyy', TAdvSmoothDatePicker(Ctrl).Date);
  if Ctrl is TDateTimePicker then
  result := FormatDateTime('dd/mm/yyyy', TDateTimePicker(Ctrl).Date);
end;

procedure TfrmDefaultMaster.LoadComboboxData;
var
  j: Integer;
  i: Integer;
  x: Integer;
  PGenData: TPGenData;
  int: Integer;
  sNm: string;
  str: string;
  Comp: TComponent;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    Comp := Components[i];
    if Comp is TComboBox then
    begin
      sNm := format('[%s]', [Comp.Name]);
      int := GetIndexOfLike(sNm, mmSQL.Lines, 6);
      if int >= 0 then
      begin
        str := mmSQL.Lines[int];
        str := copy(str, length(sNm) + 1, MAXINT);
        zqr.SQL.Text := str;
        if ErrorExecQuery(zqr) then exit;

        TComboBox(Comp).Items.Clear;
        x := 0;
        while not zqr.Eof do
        begin
          inc(x);
          New(PGenData);
          PGenData.Index := x;
          PGenData.Data1 := zqr.Fields[0].AsString;
          str            := zqr.Fields[1].AsString;
          TComboBox(Comp).AddItem(str, TObject(PGenData));
          zqr.Next;
        end;
      end else
      begin
        x := 0;
        for j := 0 to TComboBox(Comp).Items.Count - 1 do
        begin
          inc(x);
          New(PGenData);
          PGenData.Index := x;
          PGenData.Data1 := TComboBox(Comp).Items[j];
          TComboBox(Comp).Items.Objects[j] := TObject(PGenData);
        end;
      end;
    end;
  end;
  FLoaded := true;
end;

procedure TfrmDefaultMaster.MustBeNumber(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

end.
