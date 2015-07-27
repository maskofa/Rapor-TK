unit ufrmMasterKompetensi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,
  AdvSmoothPanel;

type
  TfrmMasterKompetensi = class(TfrmDefaultMaster)
    Label2: TLabel;
    edNama: TEdit;
    cbCaps: TCheckBox;
    procedure cbCapsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterKompetensi: TfrmMasterKompetensi;

implementation

{$R *.dfm}

procedure TfrmMasterKompetensi.cbCapsClick(Sender: TObject);
begin
  inherited;
  if cbCaps.Checked then
  edNama.CharCase := ecUpperCase else
  edNama.CharCase := ecNormal;
end;

end.
