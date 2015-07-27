unit ufrmUtama;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  TransEff, ExeInfo,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvMenus, AdvMenuStylers, Menus, AdvOfficeHint,
  ExtCtrls, StdCtrls, AdvGlowButton, jpeg, FormCont, teRandom, teTimed,
  teMasked, teWFall, teForm;


type
  TfrmUtama = class(TForm)
    Timer1: TTimer;
    mRibbon: TAdvToolBarPager;
    m1: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    m10: TAdvPage;
    tbBantuan: TAdvToolBar;
    btnCHM: TAdvGlowButton;
    Image1: TImage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    btnPDF: TAdvGlowButton;
    tbAktivasi: TAdvToolBar;
    btnAktifasi: TAdvGlowButton;
    btnUpdate: TAdvGlowButton;
    sb: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    Image2: TImage;
    ExeInfo1: TExeInfo;
    btnAllowDesign: TAdvGlowButton;
    frmAni: TFormTransitions;
    TransitionList1: TTransitionList;
    FormContainer1: TFormContainer;
    cbAnimation: TCheckBox;
    m7: TAdvPage;
    tbKoneksi: TAdvToolBar;
    btnKoneksi: TAdvGlowButton;
    tbKonek: TAdvToolBar;
    btnLogout: TAdvGlowButton;
    btnLogin: TAdvGlowButton;
    btnKeluar: TAdvGlowButton;
    btnGantiPass: TAdvGlowButton;
    btnReconnect: TAdvGlowButton;
    Transition1: TWaterfallTransition;
    Transition2: TWaterfallTransition;
    TabMaster: TAdvPage;
    GroupDataMaster: TAdvToolBar;
    btnMasterUser: TAdvGlowButton;
    btnUserGroup: TAdvGlowButton;
    btnHakAkses: TAdvGlowButton;
    btnIdentitas: TAdvGlowButton;
    btnItemGroup: TAdvGlowButton;
    btnMasterItem: TAdvGlowButton;
    btnStatusItem: TAdvGlowButton;
    tabTransaksi: TAdvPage;
    TabReport: TAdvPage;
    btnIndikator: TAdvGlowButton;
    AdvToolBar1: TAdvToolBar;
    bnNilai: TAdvGlowButton;
    AdvToolBar2: TAdvToolBar;
    btnCetak: TAdvGlowButton;
    procedure btnReconnectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAnimationClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnGantiPassClick(Sender: TObject);
    procedure btnKoneksiClick(Sender: TObject);
    procedure btnMasterUserClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnUserGroupClick(Sender: TObject);
    procedure btnHakAksesClick(Sender: TObject);
    procedure btnIdentitasClick(Sender: TObject);
    procedure btnItemGroupClick(Sender: TObject);
    procedure btnStatusItemClick(Sender: TObject);
    procedure btnMasterItemClick(Sender: TObject);
    procedure btnIndikatorClick(Sender: TObject);
    procedure bnNilaiClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
  private
  public
    ErrorCode: Integer;
    procedure ShowMenu(AShow: boolean);
  end;


var
  frmUtama : TfrmUtama;

implementation

uses myEngine, ufrmLogin, ufrmGantiPassword, ufrmKoneksi, ufrmMasterUser,
  ufrmUserGroup, ufrmHakAkses, ufrmIdentitas, ufrmMasterSiswa,
  ufrmMasterKompetensi, ufrmMasterHB, ufrmIndikator, ufrmEntriNilai,
  ufrmCetakRaport;

{$R *.dfm}
{$R admin.RES}

procedure TfrmUtama.btnReconnectClick(Sender: TObject);
begin
  if cmsgTanya('Apakah anda yakin akan melakukan koneksi ulang?') = mrYes then
  begin
    try
      dbKoneksi.Connect;
      cmsgInfo('Berhasil Melakukan Reconnect');
    except
      cmsgPerhatian('Gagal Melakukan Reconnect'#13
                    + 'Silahkan dicoba lagi');
    end;
  end;
end;


procedure TfrmUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cmsgTanya('Apakah Anda Yakin Akan Menutup Aplikasi') <> mrYes then
  Action := caNone;
end;

procedure TfrmUtama.cbAnimationClick(Sender: TObject);
begin
  if cbAnimation.Checked then
  WriteConfig('animation', 'enabled', 'true') else
  WriteConfig('animation', 'enabled', 'false');
  frmAni.Enabled := cbAnimation.Checked;
end;

procedure TfrmUtama.FormCreate(Sender: TObject);
var
  str: string;
begin
  ErrorCode := 0;
  ShowMenu(false);

  sb.Panels[3].Text := frmLogin.FileName;
  sb.Panels[4].Text := 'By : mas_kofa (081 11 04 11 75)';
  
  mRibbon.ActivePageIndex := 0;
  if FileExists(AppPath + 'bg.jpg') then
  Image2.Picture.LoadFromFile(AppPath + 'bg.jpg');
  str := lowercase(ReadConfig('animation', 'enabled'));
  cbAnimation.Checked := (str = 'true') or (str = '');
  frmAni.Enabled      := (str = 'true') or (str = '');

  mRibbon.Caption.Caption := format('%s [Version : %s]',
                             [mRibbon.Caption.Caption, ExeInfo1.FileVersion]);
end;

procedure TfrmUtama.ShowMenu(AShow: boolean);
begin
  btnGantiPass.Visible    := AShow;
  m7.TabVisible           := AShow;
  TabMaster.TabVisible    := AShow;
  TabTransaksi.TabVisible := AShow;
  TabReport.TabVisible    := AShow;
  btnLogout.Visible       := AShow;
  btnLogin.Visible        := not AShow;
  
  if AShow then
  begin
    tbKonek.Width := 375;
  end else
  begin
    tbKonek.Width := 283;
  end;
end;

procedure TfrmUtama.btnLoginClick(Sender: TObject);
begin
  frmLogin.ShowModal;
  if Pengguna.UserName = '' then exit;
  ShowMenu(true);
end;

procedure TfrmUtama.btnLogoutClick(Sender: TObject);
begin
  ResetPengguna;
  ShowMenu(false);
end;

procedure TfrmUtama.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUtama.btnGantiPassClick(Sender: TObject);
begin
  frmGantiPassword.ShowModal;
end;

procedure TfrmUtama.btnKoneksiClick(Sender: TObject);
begin
  OpenForm(TfrmKoneksi, frmKoneksi);
end;

procedure TfrmUtama.btnMasterUserClick(Sender: TObject);
begin
  OpenForm(TfrmMasterUser, frmMasterUser);
end;

procedure TfrmUtama.Timer1Timer(Sender: TObject);
begin
  sb.Panels[0].Text := FormatDateTime('dddd; dd MMMM yyyy', Date);
  sb.Panels[1].Text := FormatDateTime('HH:mm:ss', Time);
  sb.Panels[2].Text := 'Login User : ' + Pengguna.UserName;
end;

procedure TfrmUtama.btnUserGroupClick(Sender: TObject);
begin
  OpenForm(TfrmUserGroup, frmUserGroup);
end;

procedure TfrmUtama.btnHakAksesClick(Sender: TObject);
begin
  OpenForm(TfrmHakAkses, frmHakAkses);
end;

procedure TfrmUtama.btnIdentitasClick(Sender: TObject);
begin
  OpenForm(TfrmIdentitas, frmIdentitas);
end;

procedure TfrmUtama.btnItemGroupClick(Sender: TObject);
begin
  OpenForm(TfrmMasterSiswa, frmMasterSiswa);
end;

procedure TfrmUtama.btnStatusItemClick(Sender: TObject);
begin
  OpenForm(TfrmMasterKompetensi, frmMasterKompetensi);
end;

procedure TfrmUtama.btnMasterItemClick(Sender: TObject);
begin
  OpenForm(TfrmMasterHB, frmMasterHB);
end;

procedure TfrmUtama.btnIndikatorClick(Sender: TObject);
begin
  OpenForm(TfrmIndikator, frmIndikator);
end;

procedure TfrmUtama.bnNilaiClick(Sender: TObject);
begin
  OpenForm(TfrmEntriNilai, frmEntriNilai);
end;

procedure TfrmUtama.btnCetakClick(Sender: TObject);
begin
  OpenForm(TfrmCetakRaport, frmCetakRaport);
end;

end.
