unit ufrmMasterHB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,
  AdvSmoothPanel, AdvSmoothListBox, AdvSmoothComboBox, ufrmKosong;

type
  TfrmMasterHB = class(TfrmDefaultMaster)
    Label2: TLabel;
    Label3: TLabel;
    edNama: TEdit;
    edKompetensi: TComboBox;
    cbCaps: TCheckBox;
    procedure edKompetensiSelect(Sender: TObject);
    procedure cbCapsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterHB: TfrmMasterHB;

implementation

uses myEngine;

{$R *.dfm}

procedure TfrmMasterHB.edKompetensiSelect(Sender: TObject);
begin
  inherited;
  ParentID := StrToIntDef(GetActiveData1(edKompetensi), 0);
  FormCreate(Sender);
  edID.Text   := '';
  edNama.Text := '';
end;

procedure TfrmMasterHB.cbCapsClick(Sender: TObject);
begin
  inherited;
  if cbCaps.Checked then
  edNama.CharCase := ecUpperCase else
  edNama.CharCase := ecNormal;
end;

end.
