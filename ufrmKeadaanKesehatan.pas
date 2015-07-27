unit ufrmKeadaanKesehatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvOfficeHint, AdvGlowButton, Grids, BaseGrid,
  AdvGrid, AdvCGrid, StdCtrls, ExtCtrls, ZDataset;

type
  TfrmKeadaanKesehatan = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    Label5: TLabel;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    btnSimpan: TAdvGlowButton;
    btnClose: TAdvGlowButton;
    Label1: TLabel;
    edNama: TEdit;
    Label2: TLabel;
    edTinggi: TEdit;
    Label3: TLabel;
    edBerat: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    edMata: TEdit;
    Label8: TLabel;
    edTelinga: TEdit;
    Label9: TLabel;
    edHidung: TEdit;
    Label10: TLabel;
    edGigi: TEdit;
    Label11: TLabel;
    edMulut: TEdit;
    Label12: TLabel;
    edKulit: TEdit;
    Label13: TLabel;
    edKuku: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edTinggiKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKeadaanKesehatan: TfrmKeadaanKesehatan;
  cod : String;

implementation

uses
  ufrmLogin, myEngine, ufrmErrorQuery;

{$R *.dfm}

procedure TfrmKeadaanKesehatan.FormShow(Sender: TObject);
var
  qtm: TZQuery;
  str: string;
begin
  qtm := NewZQuery;
  str := format('select * from tbsiswa where siswa_code="%s"', [cod]);

  qtm.SQL.Text := str;
  try
    qtm.Open;
  except
  end;

  if not qtm.IsEmpty then
  begin
    edNama.Text    := FieldToStr(qtm, 'siswa_name');
    edTinggi.Text  := FieldToStr(qtm, 'siswa_height');
    edBerat.Text   := FieldToStr(qtm, 'siswa_weight');

    edMata.Text    := FieldToStr(qtm, 'siswa_mata');
    edTelinga.Text := FieldToStr(qtm, 'siswa_telinga');
    edHidung.Text  := FieldToStr(qtm, 'siswa_hidung');
    edGigi.Text    := FieldToStr(qtm, 'siswa_gigi');
    edMulut.Text   := FieldToStr(qtm, 'siswa_mulut');
    edKulit.Text   := FieldToStr(qtm, 'siswa_kulit');
    edKuku.Text    := FieldToStr(qtm, 'siswa_kuku');
  end;

  qtm.free;
end;

procedure TfrmKeadaanKesehatan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmKeadaanKesehatan.edTinggiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

procedure TfrmKeadaanKesehatan.btnSimpanClick(Sender: TObject);
var
  qtm: TZQuery;
  str: string;
begin
  qtm := NewZQuery;
  str := format('update tbsiswa set '
                + 'siswa_height="%d", '
                + 'siswa_weight="%d", '
                + 'siswa_mata="%s",'
                + 'siswa_telinga="%s",'
                + 'siswa_hidung="%s",'
                + 'siswa_gigi="%s",'
                + 'siswa_mulut="%s",'
                + 'siswa_kulit="%s",'
                + 'siswa_kuku="%s" '
                + 'where siswa_code="%s"',
                [StrToIntDef(edTinggi.Text, 0),
                 StrToIntDef(edBerat.Text, 0),
                 edMata.Text  , edTelinga.Text,
                 edHidung.Text, edGigi.Text,
                 edMulut.Text , edKulit.Text,
                 edKuku.Text  , cod]);
  qtm.SQL.Text := str;

  if ErrorExecQuery(qtm) then
  begin
   qtm.Free;
   exit;
  end;

  cmsgInfo('Berhasil Menyimpan Keterangan Keadaan Kesehatan');
  qtm.Free;
  Close;
end;

end.
