unit ufrmIdentitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothListBox, AdvSmoothComboBox, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, AdvGlowButton, AdvSmoothPanel, ComCtrls;

type
  TfrmIdentitas = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    btnNew: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnSimpan: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edKepala: TEdit;
    Label7: TLabel;
    edWali: TEdit;
    edThnAjar: TComboBox;
    edSemester: TComboBox;
    edTingkat: TComboBox;
    edKota: TEdit;
    Label8: TLabel;
    edAlm1: TEdit;
    edAlm2: TEdit;
    Label9: TLabel;
    edTelp: TEdit;
    edNama: TEdit;
    edTgl: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    edKota2: TEdit;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowIdentitasData;
    { Public declarations }
  end;

var
  frmIdentitas: TfrmIdentitas;

implementation

uses ufrmLogin, DateUtils, ufrmErrorQuery, myEngine;

{$R *.dfm}

procedure TfrmIdentitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmIdentitas.FormCreate(Sender: TObject);
var
  i: Integer;
  thn: Integer;
begin
  thn := YearOf(Date);
  edThnAjar.Items.Clear;
  for i := thn -2 to thn + 10 do
  edThnAjar.Items.Add(format('%d/%d', [i, i + 1]));
  ShowIdentitasData;
end;

procedure TfrmIdentitas.ShowIdentitasData;
begin
  zqr.SQL.Text := 'select * from tbidentitas';
  if ErrorExecQuery(zqr) then exit;
  SetActiveText(edThnAjar,  FieldToStr(zqr,  'tahun_ajaran'));
  SetActiveText(edSemester, FieldToStr(zqr,  'semester'));
  SetActiveText(edTingkat,  FieldToStr(zqr,  'tingkat'));
  edNama.Text   := FieldToStr(zqr,  'nama_tk');
  edTgl.Date    := FieldToDate(zqr, 'tanggal');
  edKepala.Text := FieldToStr(zqr,  'kepala_sekolah');
  edWali.Text   := FieldToStr(zqr,  'wali_kelas');
  edAlm1.Text   := FieldToStr(zqr,  'alamat1');
  edAlm2.Text   := FieldToStr(zqr,  'alamat2');
  edTelp.Text   := FieldToStr(zqr,  'no_telp');
  edKota.Text   := FieldToStr(zqr,  'kota');
  edKota2.Text  := ReadConfigDef('raport', 'kota2', 'Jakarta');
end;

procedure TfrmIdentitas.btnSimpanClick(Sender: TObject);
begin
  WriteConfig('raport', 'kota2', edKota2.Text);

  zqr.SQL.Text := 'update tbidentitas set tahun_ajaran=:thn, semester=:smt,'
                  + 'tingkat=:tkt, nama_tk=:nm, tanggal=:tgl, kepala_sekolah'
                  + '=:kep, wali_kelas=:kls, alamat1=:al1,alamat2=:al2,'
                  + 'no_telp=:telp, kota=:kt';
  zqr.ParamByName('thn').AsString  := edThnAjar.Text;
  zqr.ParamByName('smt').AsString  := edSemester.Text;
  zqr.ParamByName('tkt').AsString  := edTingkat.Text;
  zqr.ParamByName('nm').AsString   := edNama.Text;
  zqr.ParamByName('tgl').AsDate    := edTgl.Date;
  zqr.ParamByName('kep').AsString  := edKepala.Text;
  zqr.ParamByName('kls').AsString  := edWali.Text;
  zqr.ParamByName('al1').AsString  := edAlm1.Text;
  zqr.ParamByName('al2').AsString  := edAlm2.Text;
  zqr.ParamByName('telp').AsString := edTelp.Text;
  zqr.ParamByName('kt').AsString   := edKota.Text; 
  if ErrorExecQuery(zqr) then exit;
  cmsgInfo('Perubahan berhasil disimpan');
end;

end.
