unit ufrmKoneksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,  IniFiles,
  DBCtrls, ZSqlUpdate,   ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, AdvPanel, AdvGlowButton, Shader, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint;

type
  TfrmKoneksi = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    edPort: TEdit;
    edPass: TEdit;
    edUser: TEdit;
    edbase: TEdit;
    edHost: TEdit;
    cbConn: TComboBox;
    btnTambah: TAdvGlowButton;
    btnHapus: TAdvGlowButton;
    btnKeluar: TAdvGlowButton;
    btnSimpan: TAdvGlowButton;
    btnTest: TAdvGlowButton;
    Conn: TZConnection;
    AdvGlowButton1: TAdvGlowButton;
    OD1: TOpenDialog;
    procedure btnTestClick(Sender: TObject);
    procedure edPortKeyPress(Sender: TObject; var Key: Char);
    procedure BtnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbConnExit(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cbConnChange(Sender: TObject);
    procedure cbConnKeyPress(Sender: TObject; var Key: Char);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    function TesKoneksi: boolean;
  end;

const
  pre = 'connection_';
  len = 11;

var
  frmKoneksi   : TfrmKoneksi;
  sFile      : string;
  cbReadOnly : boolean;
  Param1     : string;


implementation

uses StrUtils, ufrmMessage, Math, ShellAPI, myEngine, ufrmLogin, ufrmUtama;

{$R *.dfm}


function  EncodePassword(Pass:String):String;
var i, x : Integer;
    s1, s2 : String;
begin
  s1 := '';
  for i := 1 to length(pass) do
  begin
    s1 := s1 + RightStr('00' + IntToStr(ord(pass[i])),3);
  end;
  pass := ReverseString(s1);
  x := Ceil(length(pass)/2);
  s1 := '';
  for i := 1 to x do
  begin
    s2 := copy(pass,i*2-1,2);
    x := 128 + StrToIntDef(s2,0);
    if length(s2) = 1 then
    begin
      x := x + 100;
    end;
    s1 := s1 + char(x);
  end;
  result := ReverseString(s1);
end;

function  DecodePassword(Pass:String):String;
var i, x : Integer;
    s1, s2 : String;
begin
  s1 := '';
  Pass := ReverseString(Pass);
  for i := 1 to length(pass) do
  begin
    x  := ord(ord(pass[i]));
    if x < 228 then
    begin
      x  := x  - 128;
      s2 := IntToStr(x);
      s2 := RightStr('0' + s2,2);
    end else
    begin
      x  := x  - 228;
      s2 := IntToStr(x);
    end;
    s1 := s1 + s2;
  end;
  pass := ReverseString(s1);
  result := pass;
  s1 := '';
  for i := 1 to (length(pass) div 3) do
  s1 := s1 + Char(StrToIntDef(copy(pass,i*3-2,3),0));
  result := s1;
end;


function TfrmKoneksi.TesKoneksi: boolean;
begin
  with Conn do
  begin
    frmLogin.Filename := edBase.Text;
    database := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
                + frmLogin.Filename + ';Persist Security Info=False;'
                + 'Jet OLEDB:Database Password="raport_tarki"';
    Disconnect;
    try
      Connect;
      btnSimpan.Enabled := true;
    except
      btnSimpan.Enabled := false;
    end;
    result := Connected;
  end;
end;

procedure TfrmKoneksi.btnTestClick(Sender: TObject);
begin
  if TesKoneksi then
  cInformation('Koneksi berhasil terhubung ke database.') else
  cError('Koneksi gagal terhubung ke database, silahkan '
                 + 'memperbaikinya terlebih dahulu.');
end;

procedure TfrmKoneksi.edPortKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8]) then key:=#0;
end;

procedure TfrmKoneksi.BtnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmKoneksi.FormCreate(Sender: TObject);
var
  str: string;
  i: Integer;
  Lst: TStrings;
begin
  sFile     := ExtractFilePath(Application.ExeName)+ 'setting.ini';
  MyINIFile := TINIFile.Create(sFile);
  Lst       := TStringList.Create;
  Param1    := ParamStr(1);
  MyINIFile.ReadSections(Lst);
  
  for i := 0 to Lst.Count - 1 do
  begin
    str := Lst[i];
    if Copy(lowerCase(str), 1, len) = pre then
    cbConn.AddItem(Copy(str, len + 1, MAXINT), nil);
  end;
  str := MyINIFile.ReadString('Connection', 'usedconnection', '');
  cbConn.ItemIndex := cbConn.Items.IndexOf(str);
  cbConnChange(Sender);
  cbReadOnly := true;
end;

procedure TfrmKoneksi.cbConnExit(Sender: TObject);
begin
  if not cbReadOnly then
  begin
    cbReadOnly := true;
    cbConn.AddItem(cbConn.Text, nil);
    cbConn.ItemIndex := cbConn.Items.IndexOf(cbConn.Text);
    cbConnChange(Sender);
  end;
end;

procedure TfrmKoneksi.btnTambahClick(Sender: TObject);
begin
  cbConn.Text := '';
  cbReadOnly  := false;
end;

procedure TfrmKoneksi.cbConnChange(Sender: TObject);
var
  str: string;
begin
  str := pre + cbConn.Text;
  edHost.Text := MyINIFile.ReadString(str, 'dbhost', 'localhost');
  edBase.Text := MyINIFile.ReadString(str, 'dbname', '');
  edUser.Text := MyINIFile.ReadString(str, 'dbuser', 'root');
  edPass.Text := DecodePassword(MyINIFile.ReadString(str, 'dbpass', ''));
  edPort.Text := MyINIFile.ReadString(str, 'dbport', '3306');
  MyINIFile.WriteString('Connection', 'usedconnection', cbConn.Text);
end;

procedure TfrmKoneksi.cbConnKeyPress(Sender: TObject; var Key: Char);
begin
  if cbReadOnly then Key := #0;
end;

procedure TfrmKoneksi.btnHapusClick(Sender: TObject);
var
  str: string;
begin
  str := pre + cbConn.Text;
  MyINIFile.EraseSection(str);
  cbConn.Items.Delete(cbConn.ItemIndex);
  if cbConn.Items.Count > 0 then
  cbConn.ItemIndex := 0;
  cbConnChange(Sender);
end;

procedure TfrmKoneksi.btnSimpanClick(Sender: TObject);
begin
  dbKoneksi.Disconnect;
  dbKoneksi.Database := Conn.Database;
  dbKoneksi.Connect;
  frmUtama.btnLogoutClick(sender);
  frmUtama.mRibbon.ActivePageIndex := 0;
  frmUtama.sb.Panels[3].Text       := frmLogin.FileName;
  Close;
end;

procedure TfrmKoneksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKoneksi.AdvGlowButton1Click(Sender: TObject);
begin
  if OD1.Execute then
  edbase.Text := OD1.FileName;
end;

procedure TfrmKoneksi.FormShow(Sender: TObject);
begin
  edbase.Text := MyINIFile.ReadString('mdbconfig', 'filename', 'database.mdb');
end;

end.
