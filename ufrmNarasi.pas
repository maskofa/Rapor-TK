unit ufrmNarasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvOfficeHint, StdCtrls, ExtCtrls,
  AdvGlowButton, Grids, BaseGrid, AdvGrid, AdvCGrid;

type
  TfrmNarasi = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    Label5: TLabel;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    pnSiswa: TPanel;
    pnKomp: TPanel;
    mmNara: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    grdRekapHB: TAdvColumnGrid;
    btnSimpan: TAdvGlowButton;
    btnClose: TAdvGlowButton;
    Label1: TLabel;
    lbHuruf: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    SaveNarasi : boolean;
  end;

var
  frmNarasi: TfrmNarasi;

implementation

{$R *.dfm}

procedure TfrmNarasi.FormShow(Sender: TObject);
begin
  SaveNarasi := false;
end;

procedure TfrmNarasi.btnSimpanClick(Sender: TObject);
begin
  SaveNarasi := true;
  Close;
end;

procedure TfrmNarasi.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
