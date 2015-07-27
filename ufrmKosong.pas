unit ufrmKosong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeHint, AdvSmoothPanel, Grids, BaseGrid,
  AdvGrid, AdvCGrid, StdCtrls, AdvEdit, AdvGlowButton, ZDataSet, myEngine,
  AdvSmoothComboBox, ADODB, ComCtrls;

type
  TControlBy = (cbHint, cbHelpKeyword, cbName);

  TfrmKosong = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MustBeNumber(Sender: TObject; var Key: Char);
    procedure MustBeUpperCase(Sender: TObject; var Key: Char);
  private
  public
  end;


var
  frmKosong: TfrmKosong;


implementation


{$R *.dfm}

procedure TfrmKosong.MustBeUpperCase(Sender: TObject; var Key: Char);
begin
  Key := Upcase(Key);
end;

procedure TfrmKosong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKosong.MustBeNumber(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

end.
