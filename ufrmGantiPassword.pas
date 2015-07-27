unit ufrmGantiPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, AdvDirectoryEdit, AdvGlowButton,
  ExtCtrls, Shader, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvToolBar, AdvToolBarStylers, AdvOfficeHint;

type
  TfrmGantiPassword = class(TForm)
    edPass: TShader;
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edLama: TEdit;
    edBaru: TEdit;
    edKonfirm: TEdit;
    btnSimpan: TAdvGlowButton;
    btnBatal: TAdvGlowButton;
    procedure btnSimpanClick(Sender: TObject);
    procedure edLamaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGantiPassword: TfrmGantiPassword;

implementation

uses ufrmLogin, myEngine, ufrmErrorQuery, ufrmUtama;

{$R *.dfm}

procedure TfrmGantiPassword.btnSimpanClick(Sender: TObject);
begin
  if edLama.Text <> Pengguna.Password then
  begin
    cmsgPerhatian('Password Lama Salah');
    exit;
  end;
  if edBaru.Text <> edKonfirm.Text then
  begin
    cmsgPerhatian('Password Konfirmasi harus sama dengan Password Baru');
    exit;
  end;
  if edBaru.Text = '' then
  begin
    cmsgPerhatian('Password Tidak Boleh Kosong');
    exit;
  end;

  zqr.SQL.Text := 'update tbuser set user_pass=:pass where user_code=:id';
  zqr.ParamByName('pass').AsString := Log10Crypt(edBaru.Text);
  zqr.ParamByName('id').AsString   := Pengguna.UserCode;
  if ErrorExecQuery(zqr) then exit;
  close;
  cmsgInfo('Perubahan Password Berhasil disimpan');
  frmUtama.btnLogoutClick(sender);
end;

procedure TfrmGantiPassword.edLamaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['A'..'Z', 'a'..'z', '0'..'9', '!','@','#','$','%','^',
                  '&','*','(',')','_','+', #8]) then
  Key := #0;
end;

procedure TfrmGantiPassword.FormCreate(Sender: TObject);
var
  sHint: string;
begin
  sHint := 'Karakter yg diperbolehkan :'#13#13
           + '   a..z, A..Z 0..9 ! @ # $ % ^ & * ( ) _ +';
  edLama.Hint    := sHint;
  edBaru.Hint    := sHint;
  edKonfirm.Hint := sHint;
  Label4.Caption := '*) ' + sHint;
end;

procedure TfrmGantiPassword.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGantiPassword.FormShow(Sender: TObject);
begin
  edLama.SetFocus;
end;

end.
 