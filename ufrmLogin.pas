unit ufrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Shader,
  AdvGlowButton, Chart, AdvToolBar, DB,
  ZAbstractRODataset, ZAbstractDataset, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBarStylers, AdvOfficeHint, ZDataSet,
  ZConnection;

type
  TPengguna = class
    UserID      : Integer;
    UserName    : String;
    UserCode    : string;
    GroupID     : Integer;
    Password    : String;
  end;

  TfrmLogin = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    Label2: TLabel;
    Label1: TLabel;
    edPass: TEdit;
    edUser: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPassKeyPress(Sender: TObject; var Key: Char);
    procedure edUserKeyPress(Sender: TObject; var Key: Char);
    procedure edUserExit(Sender: TObject);
  private
  public
    AllowDesign : boolean;
    FileName  : string;
  end;

var
  frmLogin  : TfrmLogin;
  Pengguna  : TPengguna;
  zqr       : TZQuery;
  dbKoneksi : TZConnection;


procedure OpenForm(FormClass: TFormClass; var Reference);
procedure ResetPengguna;
function  NewZQuery: TZQuery;

implementation

uses myEngine, ufrmUtama, ufrmKoneksi, ufrmErrorQuery, DateUtils;

{$R *.dfm}

const
  pre = 'connection_';

function  NewZQuery: TZQuery;
begin
  result := TZQuery.Create(frmLogin);
  result.Connection := dbKoneksi;
end;

procedure ResetPengguna;
begin
  with Pengguna do
  begin
    UserName    := '';
    UserCode    := '';
    GroupID     :=  0;
    Password    := '';
  end;
end;

procedure OpenForm(FormClass: TFormClass; var Reference);
var
  desc: string;
  str: string;
  sForm: string;
begin
  sForm := copy(FormClass.ClassName, 2, MAXINT);
  str   := 'select * from tbprivilege p, tbform f, tbuser u where '
           + 'p.usergroup_id=u.usergroup_id and f.form_id=p.form_id and '
           + 'u.user_id=:id and form_name=:nm';
  zqr.SQL.Text := str;
  zqr.ParamByName('id').AsInteger := Pengguna.UserID;
  zqr.ParamByName('nm').AsString  := sForm;
  if ErrorExecQuery(zqr) then exit;
  if zqr.IsEmpty then
  begin
    str := 'select * from tbform where form_name=:nm';
    zqr.SQL.Text := str;
    zqr.ParamByName('nm').AsString := sForm;
    if ErrorExecQuery(zqr) then exit;
    if zqr.IsEmpty then
    cmsgPerhatian(format('Modul "%s" belum ter-register', [sForm])) else
    begin
      desc := FieldToStr(zqr, 'form_desc');
      cmsgPerhatian(format('Maaf, Anda tidak berhak membuka Modul "%s"',
                    [desc]));
    end;
    exit;
  end;
  Application.CreateForm(FormClass, Reference);
  TForm(Reference).ShowModal;
end;


procedure TfrmLogin.FormShow(Sender: TObject);
var
  str: string;
begin
  str         := ReadConfigDef('login', 'lastuser', 'user_tk');
  edPass.Text := '';
  edUser.Text := str;
  if str <> '' then edPass.SetFocus else
  edUser.SetFocus;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  dbKoneksi          := TZConnection.Create(self);
  dbKoneksi.Protocol := 'ado';
  Filename           := MyINIFile.ReadString('mdbconfig', 'filename',
                        'database.mdb');
  dbKoneksi.database := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
                        + Filename + ';Persist Security Info=False;'
                        + 'Jet OLEDB:Database Password="raport_tarki"';
  try
    dbKoneksi.Connect;
  except
  end;
  Pengguna  := TPengguna.Create;
  zqr       := NewZQuery;
end;

procedure TfrmLogin.edPassKeyPress(Sender: TObject; var Key: Char);
var
  str: string;
begin
  if Key <> #13 then exit;
  if edPass.Text = '' then
  begin
    cmsgPerhatian('Maaf password harus diisi');
    exit;
  end;

  ResetPengguna;
  str := 'select * from tbuser where user_code=:cd and '
         + 'user_pass=:pass';

  zqr.SQL.Text := str;
  zqr.ParamByName('cd').AsString   := edUser.Text;
  zqr.ParamByName('pass').AsString := Log10Crypt(edPass.Text);
  if ErrorExecQuery(zqr) then exit;

  if zqr.IsEmpty then
  begin
    cmsgPerhatian('Maaf Password atau UserName Anda Salah');
  end else
  begin
    with Pengguna do
    begin
      UserID      := FieldToInt(zqr, 'user_id');;
      UserName    := FieldToStr(zqr, 'user_name');
      UserCode    := FieldToStr(zqr, 'user_code');;
      GroupID     := FieldToInt(zqr, 'usergroup_id');
      Password    := edPass.Text;

      str := 'select * from tbprivilege where form_id=12 and usergroup_id=:id';
      zqr.SQL.Text := str;
      zqr.ParamByName('id').AsInteger := GroupID;
      if ErrorExecQuery(zqr) then exit;
      AllowDesign := not zqr.IsEmpty;
    end;
    Close;
  end;
  edPass.Text := '';
end;

procedure TfrmLogin.edUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then edPass.SetFocus;
end;

procedure TfrmLogin.edUserExit(Sender: TObject);
begin
  WriteConfig('login', 'lastuser', edUser.Text);
end;

end.
