unit ufrmIndikator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvSmoothListBox, AdvSmoothComboBox,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeHint, StdCtrls, Grids, BaseGrid, AdvGrid,
  AdvCGrid, AdvGlowButton, AdvSmoothPanel, ufrmKosong;

type
  TfrmIndikator = class(TfrmDefaultMaster)
    Label2: TLabel;
    edNama: TEdit;
    Label3: TLabel;
    edHB: TComboBox;
    Label4: TLabel;
    edKomp: TComboBox;
    cbCaps: TCheckBox;
    procedure edKompChange(Sender: TObject);
    procedure edHBSelect(Sender: TObject);
    procedure cbCapsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndikator: TfrmIndikator;

implementation

uses myEngine, ufrmLogin, ufrmErrorQuery;


{$R *.dfm}

procedure TfrmIndikator.edKompChange(Sender: TObject);
var
  PGenData: TPGenData;
  x: Integer;
  kid: string;
  str: string;
begin
  inherited;
  kid := GetActiveData1(edKomp);
  str := 'select hb_id, hb_name from tbhb where kompetensi_id=' + kid;
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;

  x := 0;
  edHB.Clear;
  while not zqr.Eof do
  begin
    inc(x);
    New(PGenData);
    PGenData.Index := x;
    PGenData.Data1 := zqr.Fields[0].AsString;
    str            := zqr.Fields[1].AsString;
    edHB.AddItem(str, TObject(PGenData));
    zqr.Next;
  end;
end;

procedure TfrmIndikator.edHBSelect(Sender: TObject);
begin
  inherited;
  ParentID       := StrToIntDef(GetActiveData1(edHB), 0);
  FormCreate(Sender);
  edID.Text      := '';
  edNama.Text    := '';
  btnNew.Enabled := true;
end;

procedure TfrmIndikator.cbCapsClick(Sender: TObject);
begin
  inherited;
  if cbCaps.Checked then
  edNama.CharCase := ecUpperCase else
  edNama.CharCase := ecNormal;
end;

end.
