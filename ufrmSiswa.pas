unit ufrmSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ExtDlgs,myEngine,
  Grids, DBGrids, ZDataSet, frxClass, Spin,
  Shader, AdvGlowButton, AdvPanel;

type
  TfrmSiswa = class(TForm)
    opdFoto: TOpenPictureDialog;
    pnTombol: TAdvPanel;
    btnTambah: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnHapus: TAdvGlowButton;
    btnTampil: TAdvGlowButton;
    btnCetak: TAdvGlowButton;
    btnBatal: TAdvGlowButton;
    btnKeluar: TAdvGlowButton;
    Shader1: TShader;
    Label91: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure edKodeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgHalamanChange(Sender: TObject);
    procedure cbCariChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure edNamaChange(Sender: TObject);
    procedure cbPsMasukChange(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure edCariClick(Sender: TObject);
    procedure edCariKeyPress(Sender: TObject; var Key: Char);
    procedure btnKodeSisClick(Sender: TObject);
    procedure cbKelaminChange(Sender: TObject);
    procedure edHLainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edKodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNextClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure eddkLainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBTahunKeyPress(Sender: TObject; var Key: Char);
    procedure edNoSKKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edditerimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edKodeKeyPress(Sender: TObject; var Key: Char);
    procedure edotKerjaAKeyPress(Sender: TObject; var Key: Char);
    procedure cbotPendidikanAKeyPress(Sender: TObject; var Key: Char);
    procedure cbotKerjaIKeyPress(Sender: TObject; var Key: Char);
    procedure cbPendidikanIKeyPress(Sender: TObject; var Key: Char);
    procedure cbPropChange(Sender: TObject);
    procedure cbKabChange(Sender: TObject);
    procedure cbTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edotKerjaASelect(Sender: TObject);
    procedure cbotKerjaISelect(Sender: TObject);
    procedure cbwsKerjaSelect(Sender: TObject);
    procedure cbBahasaSelect(Sender: TObject);
    procedure cbBahasa2Select(Sender: TObject);
    procedure cbKecChange(Sender: TObject);
    procedure btnPindahClick(Sender: TObject);
    procedure btnHistoriClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure cbDesaChange(Sender: TObject);
    procedure edKdPosChange(Sender: TObject);
    procedure cbPropAyahChange(Sender: TObject);
    procedure cbPropIbuChange(Sender: TObject);
    procedure cbPropWaliChange(Sender: TObject);
    procedure cbKabAyahChange(Sender: TObject);
    procedure cbKabIbuChange(Sender: TObject);
    procedure cbKabWaliChange(Sender: TObject);
    procedure cbKecAyahChange(Sender: TObject);
    procedure cbKecIbuChange(Sender: TObject);
    procedure cbKecWaliChange(Sender: TObject);
    procedure cbDesaAyahChange(Sender: TObject);
    procedure cbDesaIbuChange(Sender: TObject);
    procedure cbDesaWaliChange(Sender: TObject);
    procedure cbKdPosAyahChange(Sender: TObject);
    procedure cbKdPosIbuChange(Sender: TObject);
    procedure cbKdPosWaliChange(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure BtnTampilClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure btnPhotoClick(Sender: TObject);
    procedure edotTelpIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edwsTelpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edwsSiswaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPsMasukKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure kosongkan(const all: boolean);
    procedure ValidasiInput(Sender: TObject; var Key: Char);
    procedure ValidasiOut(Sender: TObject);
    function isValid: boolean;
    procedure isiAtribut;
    procedure CariData(const sField1,sField2,sValue1,sValue2: string);
    function GettahunAjaran: string;
    procedure GetBahasa;
    procedure isiAtributKelas;
    procedure GetPekerjaan;
    procedure TambahKotaKlik(combo_Prop, combo_Kota: TComboBox);
    procedure TambahKecamatanKlik(combo_Kota, combo_Kecamatan: TComboBox);
    procedure TambahKelurahanKlik(combo_Kecamatan, combo_Kelurahan: TComboBox);
    procedure TambahKodePosKlik(combo_Kecamatan, combo_KodePos: TComboBox);
    procedure IsiPropinsiBaru(Combo_Source, Cb1, Cb2, Cb3: TComboBox);
    procedure ChangeComboKabupaten(combo_propinsi,combo_kabupaten,combo_kecamatan: TComboBox);
    procedure ChangeComboKecamatan(combo_kabupaten,combo_kecamatan,combo_kelurahan,combo_kodepos: TComboBox);
    procedure ChangeComboKelurahan(combo_kecamatan,combo_kelurahan: TComboBox);
    procedure ChangeComboKodePos(combo_kecamatan,combo_kodepos: TComboBox);
    procedure SelectBahasa(combo_Bahasa: TComboBox);
    procedure SelectPekerjaan(combo_Pekerjaan: TComboBox);
    procedure Tampilkan(machine: TZQuery);
    { Private declarations }
  public

  end;

var
  frmSiswa: TfrmSiswa;
  slField,slValue,_slField,_slValue: TStringList;
  sFoto: string;
  sFotoLama: string;
  id_tahun_ajaran: string;
  sSex: string;

implementation


{$R *.dfm}
procedure TfrmSiswa.ValidasiOut(Sender: TObject);
begin
  if Trim(TEdit(Sender).Text) = '' then
    TEdit(Sender).Text := '0';
end;


procedure TfrmSiswa.isiAtributKelas;
begin
  _slField.Clear;                    {} _slValue.Clear;
  _slField.Add('id_tahun_ajaran');   {} _slValue.Add(fUtama.IdThAjaranSemester1);
  _slField.Add('kd_siswa');          {} _slValue.Add(edKode.Text);
end;

function TfrmSiswa.GettahunAjaran: string;
begin
  EksekusiSQL(dm.qAct,'SELECT * FROM tahun_ajaran WHERE status = "Y"');
  id_tahun_ajaran:=CariValue(dm.qAct,'id_tahun_ajaran');
  Result:=CariValue(dm.qAct,'th_ajaran');
end;

procedure TfrmSiswa.GetBahasa;
var i,_i: integer;
begin
   i:=cbBahasa.ItemIndex;
   _i:=cbBahasa2.ItemIndex;
   EksekusiSQL(dm.qAct,'SELECT * FROM bahasa');
   isiCombo(dm.qAct,'bahasa','',cbBahasa);
   cbBahasa.Items.Add('- Tambah Bahasa -');
   cbBahasa2.Items := cbBahasa.Items;
   cbBahasa.ItemIndex := i;
   cbBahasa2.ItemIndex := _i;
end;

procedure TfrmSiswa.GetPekerjaan;
var i1,i2,i3: integer;
begin
   i1 := edotKerjaA.ItemIndex;
   i2 := cbotKerjaI.ItemIndex;
   i3 := cbwsKerja.ItemIndex;
   EksekusiSQL(dm.qAct,'SELECT * FROM pekerjaan');
   isiCombo(dm.qAct,'nm_pekerjaan','',edotKerjaA);
   edotKerjaA.Items.Add('- Tambah Pekerjaan -');
   cbotKerjaI.Items := edotKerjaA.Items;
   cbwsKerja.Items := edotKerjaA.Items;
   edotKerjaA.ItemIndex := i1;
   cbotKerjaI.ItemIndex := i2;
   cbwsKerja.ItemIndex := i3;
end;

procedure TfrmSiswa.isiAtribut;
begin
  slField.Clear;                  {} slValue.Clear;
  slField.Add('kd_siswa');        {} slValue.Add(edKode.Text);
  slField.Add('nis');             {} slValue.Add(ediNis.Text);
  slField.Add('nisn');            {} slValue.Add(ediNisDiknas.Text);
  slField.Add('nama_siswa');      {} slValue.Add(edNama.Text);
  slField.Add('nama_panggil');    {} slValue.Add(edNamaPanggil.Text);
  slField.Add('sex');             {} slValue.Add(UpperCase(FetchCodeCombo(cbKelamin.Text,1)));
  slField.Add('tmp_lahir');       {} slValue.Add(edTmpLahir.Text);
  slField.Add('tgl_lahir');       {} slValue.Add(CekTanggal(tglLahir.Date));
  slField.Add('agama');           {} slValue.Add(cbAgama.Text);
  slField.Add('wrg_negara');      {} slValue.Add(cbWarga.Text);
  slField.Add('anak_ke');         {} slValue.Add(edianakke.Text);
  slField.Add('statushub');       {} slValue.Add(edStatus.Text);
  slField.Add('jml_sdrKandung');  {} slValue.Add(ediKandung.Text);
  slField.Add('agm_wali');        {} slValue.Add(cbwsAgama.Text);
  slField.Add('telp_wali2');      {} slValue.Add(edwsTelp.Text);
  slField.Add('jml_sdrtiri');     {} slValue.Add(ediTiri.Text);
  slField.Add('jml_sdrangkat');   {} slValue.Add(ediAngkat.Text);
  slField.Add('yatim');           {} slValue.Add(cbYatim.Text);
  slField.Add('ket_wali');        {} slValue.Add(cbwsKet.Text);
  slField.Add('bahasa1');         {} slValue.Add(cbBahasa.Text);
  slField.Add('bahasa2');         {} slValue.Add(cbBahasa2.Text);
  slField.Add('alm_ibu');         {} slValue.Add(motAlamatI.Lines.Text);
  slField.Add('almt_siswa');      {} slValue.Add(almSiswa.Text);
  slField.Add('telp_siswa');      {} slValue.Add(edtmpTelp.Text);
  slField.Add('kesenian');        {} slValue.Add(edHSeni.Text);
  slField.Add('jrak_tggal');      {} slValue.Add(ediTinggal.Text);
  slField.Add('transport');       {} slValue.Add(cbTransport.Text);
  slField.Add('gol_darah');       {} slValue.Add(edkjDarah.Text);
  slField.Add('ccat_fisik');      {} slValue.Add(edKjJasmani.Text);
  slField.Add('tinggi_bdn');      {} slValue.Add(edikjTinggi.Text);
  slField.Add('berat_bdn');       {} slValue.Add(edikjBerat.Text);
  slField.Add('bf_msukkelas2');   {} slValue.Add(cbpsMasuk.Text);
  slField.Add('nm_ayah');         {} slValue.Add(edOtNamaA.Text);
  slField.Add('agm_ayah');        {} slValue.Add(cbotAgamaA.Text);
  slField.Add('telp_ayah');       {} slValue.Add(edotTelpA.Text);
  slField.Add('wn_ayah');         {} slValue.Add(cbotWargaA.Text);
  slField.Add('gaji_ayah');       {} slValue.Add(ediotPenghasilanA.Text);
  slField.Add('alm_ayah');        {} slValue.Add(motAlamatA.Text);
  slField.Add('pnddkan_ayah');    {} slValue.Add(cbOtPendidikanA.Text);
  slField.Add('tmptLahir_ayah');  {} slValue.Add(edotTempatA.Text);
  slField.Add('lhir_Ayah');       {} slValue.Add(CekTanggal(dpotLahirA.Date));
  slField.Add('ket_ayah');        {} slValue.Add(edotKetA.Text);
  slField.Add('kerja_ayah');      {} slValue.Add(edotKerjaA.Text);
  slField.Add('asalsekolah');     {} slValue.Add(edAsal.Text);
  slField.Add('diterima');        {} slValue.Add(edditerima.Text);
  slField.Add('tglditerima');     {} slValue.Add(CekTanggal(TglDiterima.Date));
  slField.Add('alasanpindah');    {} slValue.Add(edAlasan.Text);
  slField.Add('namaTK');             slValue.Add(edNamaTK.Text);
  slField.Add('sttb_tk');            slValue.Add(edSTK.Text);
  slField.Add('sttb_thn');           slValue.Add(edThnSttb.Text);
  slField.Add('sttb_nomor');         slValue.Add(edNoSttb.Text);
  slField.Add('suku');            {} slValue.Add(cbSuku.Text);

  //==============================================================
  //data ibu
  slField.Add('nm_ibu');          {} slValue.Add(edOtNamaI.Text);
  slField.Add('agm_ibu');         {} slValue.Add(cbotAgamaI.Text);
  slField.Add('kerja_ibu');       {} slValue.Add(cbotKerjaI.Text);
  slField.Add('telp_ibu');        {} slValue.Add(edotTelpI.Text);
  slField.Add('wn_ibu');          {} slValue.Add(cbotWargaI.Text);
  slField.Add('gaji_ibu');        {} slValue.Add(ediotHasilI.Text);
  slField.Add('pnddkan_ibu');     {} slValue.Add(cbPendidikanI.Text);
  slField.Add('tmptLahir_ibu');   {} slValue.Add(edotTempatI.Text);
  slField.Add('lhir_Ibu');        {} slValue.Add(CekTanggal(dpotLahirI.Date));
  slField.Add('ket_ibu');         {} slValue.Add(cbotKetI.Text);
  //==========================================================================
  slField.Add('telp_wali');       {} slValue.Add(edwsTelp.Text);
  slField.Add('nm_wali');         {} slValue.Add(edwsSiswa.Text);
  slField.Add('kerja_wali');      {} slValue.Add(cbwsKerja.Text);
  slField.Add('penjaskes');       {} slValue.Add(edHJasmani.Text);
  slField.Add('lain');            {} slValue.Add(edHLain.Text);
  slField.Add('kdvalid');         {} slValue.Add(fUtama.CekOPL);
  slField.Add('wn_wali');         {} slValue.Add(cbwsWarga.Text);
  slField.Add('hasil_wali');      {} slValue.Add(ediwsHasil.Text);
  slField.Add('tmp_lahir_wali');  {} slValue.Add(edwsTempat.Text);
  slField.Add('tgl_lahir_wali');  {} slValue.Add(CekTanggal(dpwsLahir.Date));
  slField.Add('pnddkan_wali');    {} slValue.Add(edwsPendidikan.Text);
  slField.Add('alm_wali');        {} slValue.Add(mwsAlamat.Lines.Text);
  GettahunAjaran;
  slField.Add('id_tahun_ajaran'); {} slValue.Add(id_tahun_ajaran);
  slField.Add('propinsi');      {} slValue.Add(cbProp.Text);
  slField.Add('kabupaten');  {} slValue.Add(cbKab.Text);
  slField.Add('kecamatan');  {} slValue.Add(cbKec.Text);
  slField.Add('kelurahan');  {} slValue.Add(cbDesa.Text);
  slField.Add('kodepos');  {} slValue.Add(edKdPos.Text);
  //====================================================
  slField.Add('propinsi_ayah');      {} slValue.Add(cbPropAyah.Text);
  slField.Add('kabupaten_ayah');  {} slValue.Add(cbKabAyah.Text);
  slField.Add('kecamatan_ayah');  {} slValue.Add(cbKecAyah.Text);
  slField.Add('kelurahan_ayah');  {} slValue.Add(cbDesaAyah.Text);
  slField.Add('kodepos_ayah');  {} slValue.Add(cbKdPosAyah.Text);

  slField.Add('propinsi_ibu');      {} slValue.Add(cbPropIbu.Text);
  slField.Add('kabupaten_ibu');  {} slValue.Add(cbKabIbu.Text);
  slField.Add('kecamatan_ibu');  {} slValue.Add(cbKecIbu.Text);
  slField.Add('kelurahan_ibu');  {} slValue.Add(cbDesaIbu.Text);
  slField.Add('kodepos_ibu');  {} slValue.Add(cbKdPosIbu.Text);

  slField.Add('propinsi_wali');      {} slValue.Add(cbPropWali.Text);
  slField.Add('kabupaten_wali');  {} slValue.Add(cbKabWali.Text);
  slField.Add('kecamatan_wali');  {} slValue.Add(cbKecWali.Text);
  slField.Add('kelurahan_wali');  {} slValue.Add(cbDesaWali.Text);
  slField.Add('kodepos_wali');  {} slValue.Add(cbKdPosWali.Text);
  slField.Add('email');  {} slValue.Add(edEmail.Text);
  slField.Add('webblog');  {} slValue.Add(edWebBlog.Text);

end;

function TfrmSiswa.isValid: boolean;
var
    sIsian: TStringList;
    sKet: TStringList;
begin
sIsian:=TStringList.Create;
sKet:=TStringList.Create;
try
with sIsian do
  begin
    Add(edKode.Text);
    Add(edNama.Text);
    Add(edNamaPanggil.Text);
    Add(cbKelamin.Text);
    Add(cbAgama.Text);
    Add(almSiswa.Text);
    Add(edTmpTelp.Text);
    Add(cbpsMasuk.Text);
  end;

with sKet do
  begin
    Add('Kode Siswa');
    Add('Nama Siswa');
    Add('Nama Panggilan Siswa');
    Add('Jenis Kelamin Siswa');
    Add('Agama Siswa');
    Add('Alamat Siswa');
    Add('No. Telepon Siswa');
    Add('Kelas Pertama Siswa');
  end;
result:=not isEmpty(sIsian,sKet);
finally
sIsian.Free;
sKet.Free;
end;

end;

procedure TfrmSiswa.kosongkan(const all: boolean);
var i: integer;
begin
lblSukuTambah.Visible := false;
imFoto.Picture:=nil;
almSiswa.Clear;
for i:=0 to ComponentCount - 1 do
  begin
      if Components [i] is TEdit then
        begin
          if all then
            begin
              TEdit(Components[i]).Clear;
              lbRec.Caption := 'Record 0 / 0';
            end
          else
            begin
              if not(copy(TEdit(Components[i]).Name,1,6) = 'edKode') then
                TEdit(Components[i]).Clear;
            end;

          if (copy(TEdit(Components[i]).Name,1,3) = 'edi') then
            begin
              TEdit(Components[i]).OnKeyPress := ValidasiInput;
              TEdit(Components[i]).OnExit := ValidasiOut;
              TEdit(Components[i]).Text :='0';
            end;
        end;
      if Components [i] is TComboBox then
        begin
          TComboBox(Components[i]).Text := '';
        end;
      if Components [i] is TMemo then
        begin
          TMemo(Components[i]).Text := '';
        end;
      if Components [i] is TDateTimePicker then
        TDateTimePicker(Components[i]).Date := Now;

  end;
if not All then
  begin
    //edPengentri.Text:=s1;
    //edPengupdate.Text:=s2;
    //edPengupdate.Text := fUtama.CekOPL;

  end
else
  begin
    pgHalaman.Pages[0].TabVisible := True;
  end;

 edPsTahun.Text:= fUtama.GettahunAjaran;
sSex:='';
btnPrev.Enabled := False;
btnNext.Enabled := False;
cbKelamin.Clear;
edThnSttb.Value := YearOf(Date);
with cbKelamin.Items do
  begin
    Add('L   => [Laki - Laki]');
    Add('P  => [Perempuan]');
  end;
end;

procedure TfrmSiswa.ValidasiInput(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',#8]) then
    Key:=#0;
end;

procedure TfrmSiswa.CariData(const sField1,sField2,sValue1,sValue2: string);
begin
  if Trim(sField2) = '' then
  _SQL:='SELECT * FROM siswa s,tahun_ajaran t  WHERE  t.id_tahun_ajaran = s.id_tahun_ajaran AND ' + sField1 + ' = "' + sValue1  + '"'
else
  _SQL:='SELECT * FROM siswa s,tahun_ajaran t WHERE t.id_tahun_ajaran = s.id_tahun_ajaran AND ' + sField1 + ' = "' + sValue1 + '" AND ' + sField2 + ' = "' + sValue2 + '"';
  EksekusiSQL(dm.qSiswa,_SQL);
  if dm.qSiswa.Eof then
  begin
    abort;
  end;
  Tampilkan(dm.qSiswa);
if dm.qSiswa.RecordCount < 1 then
  begin
    konfPeringatan('Data tidak ditemukan.');
    exit;
  end;
btnTambah.Enabled:=False;
if Th_Skrg = True then
begin
   btnEdit.Enabled:=True;
   btnHapus.Enabled:=True;
end;
end;
//===========================================================
procedure TfrmSiswa.btnBatalClick(Sender: TObject);
begin
  kosongkan(True);
  mwsALAMAT.Clear;
end;

procedure TfrmSiswa.FormCreate(Sender: TObject);
var
  zqr: TZQuery;
begin
  kosongkan(True);
  zqr := NewZQuery;
  zqr.SQL.Text := 'select * from statuskeluarga order by statuskel_nama';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(edStatus, zqr, 'statuskel_kode', 'statuskel_nama');
  zqr.SQL.Text := 'select * from agama order by agama_kode';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(cbAgama, zqr, 'agama_kode', 'agama_nama');
  cbotAgamaA.Items := cbAgama.Items;
  cbotAgamaI.Items := cbAgama.Items;
  cbwsAgama.Items  := cbAgama.Items;

  lblSukuTambah.Visible := false;
  zqr.SQL.Text := 'select * from suku order by suku_id';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(cbSuku, zqr, 'suku_id', 'suku_nama');

{  zqr.First;
  LoadToCombo(cbotAgamaA, zqr, 'agama_kode', 'agama_nama');
  zqr.First;
  LoadToCombo(cbotAgamaI, zqr, 'agama_kode', 'agama_nama');
  zqr.First;
  LoadToCombo(cbwsAgama, zqr, 'agama_kode', 'agama_nama');   }
  {zqr.SQL.Text := 'select kd_kelas, nm_kelas from kelas order by kd_kelas';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(cbPsMasuk, zqr, 'kd_kelas', 'nm_kelas');}
  zqr.SQL.Text := 'select * from pdkterakhir';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(cbPendidikanI, zqr, '', 'pdkterakhir_name');
  cbotPendidikanA.Items := cbPendidikanI.Items;
  zqr.SQL.Text := 'select * from gaji';
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  LoadToCombo(ediotHasilI, zqr, '', 'gaji_range');
  ediotHasilI.Items.Add('- Tambah Propinsi -');
  ediotPenghasilanA.Items := ediotHasilI.Items;
  ediwsHasil.Items := ediotHasilI.Items;
  zqr.Free;
end;

procedure TfrmSiswa.edKodeChange(Sender: TObject);
  procedure isi;
  begin
    edTmpKode.Text := edKode.Text; edTmpNama.Text := edNama.Text;
    edkjNis.Text   := edKode.Text; edkjNama.Text  := edNama.Text;
    edotKode.Text  := edKode.Text; edotNama.Text  := edNama.Text;
    edwsKode.Text  := edKode.Text; edwsNama.Text  := edNama.Text;
    edHKode.Text   := edKode.Text; edHNama.Text   := edNama.Text;
  end;

begin
  btnTampil.Enabled := Trim(edKode.Text) <> '';
  btnCetak.Enabled  := btnTampil.Enabled;
  if Th_Skrg = True then
  btnTambah.Enabled := True;
  btnEdit.Enabled   := False;
  btnHapus.Enabled  := False;
  isi;

  if Trim(edKode.Text) = '' then
  begin
    kosongkan(False);
    exit;
  end;
  EksekusiSQL(dm.qAct,'SELECT kd_siswa FROM siswa WHERE kd_siswa = "'
              + edKode.Text + '"');
  if dm.qAct.RecordCount = 0 then
  begin
    kosongkan(False);
    if Th_Skrg = True then
    BtnTambah.Enabled := True;
    isi;
  end;
  CariData('kd_siswa','',edKode.Text,'');
  cbPsMasuk.OnChange(Self);
end;

procedure TfrmSiswa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
  VK_RETURN:
    fIndukSiswa.Perform(WM_NEXTDLGCTL, 0, 0);

end;
end;

procedure TfrmSiswa.pgHalamanChange(Sender: TObject);
var s: string;
begin
case pgHalaman.ActivePageIndex of
  0:
    begin
      //GetBahasa;
      edKode.SetFocus;
      EksekusiSQL(dm.qAct,'SELECT * FROM kelas');
       s:=cbPsMasuk.Text;
      isiCombo(dm.qAct,'kd_kelas','',cbPsMasuk);
      cbPsMasuk.Text:=s;
    end;
end;
end;

procedure TfrmSiswa.cbCariChange(Sender: TObject);
begin
edCari.SetFocus;
end;

procedure TfrmSiswa.btnTambahClick(Sender: TObject);
var zqr: TZQuery;
begin
   if not(isValid) then
   begin
     exit;
   end;
   if not(konfTanya('melakukan penyimpanan data')) then exit;

   isiAtribut;
   isiAtributKelas;
   _slField.Add('kd_kelas');          {} _slValue.Add(cbPsMasuk.Text);
   slField.Add('tglentry');        {} slValue.Add(CekTanggal(fUtama.CekTanggal));

   slField.Add('aktif');  {} slValue.Add('Y');
   if dbTambah(dm.qSiswa,'siswa',slField,slValue) then
   begin
      if not dbTambah(dm.qIsiKelas,'isi_kelas',_slField,_slValue) then exit;
      EksekusiSQL(DM.Q2,'SELECT * FROM isi_kelas ORDER BY id_rec DESC LIMIT 1');
      EksekusiSQL(DM.Q1,'SELECT kd_pegawai FROM isi_kelas WHERE id_tahun_ajaran="'+DM.Q2.FieldByName('id_tahun_ajaran').AsString+'" '+
                        'AND kd_kelas="'+DM.Q2.FieldByName('kd_kelas').AsString+'" ORDER BY id_rec ASC LIMIT 1');
      if not DM.Q1.IsEmpty then
         EksekusiSQL(DM.Q1,'UPDATE isi_kelas SET kd_pegawai = "'+DM.Q1.FieldByName('kd_pegawai').AsString+'" '+
                           'WHERE id_rec = "'+DM.Q2.FieldByName('id_rec').AsString+'"');
// ===================================>  Simpen foto..........
   zqr := NewZQuery;
   if imFoto.Picture <> nil then
   begin
     zqr.SQL.Text := 'update siswa set foto=:foto where kd_siswa=:kd';
     zqr.Params[0].AsBlob   := PicToBlob(ImFoto.Picture);
     zqr.Params[1].AsString := edKode.Text;
     if ErrorExecQuery(zqr) then
     begin
       zqr.Free;
       exit;
     end;
     zqr.Free;
   end;
// ====================================
      konfBerhasil('Data berhasil disimpan.');
      pgHalaman.ActivePageIndex := 0;
      pgHalaman.OnChange(Self);
      kosongkan(True);
      edKode.SetFocus;
   end else
   begin
      konfError('proses penyimpanan data gagal dilakukan');
   end;
end;

procedure TfrmSiswa.IsiPropinsiBaru(Combo_Source, Cb1, Cb2, Cb3: TComboBox);
begin
   Cb1.Items := Combo_Source.Items;
   Cb2.Items := Combo_Source.Items;
   Cb3.Items := Combo_Source.Items;
   Cb1.Hint := Combo_Source.Hint;
   Cb2.Hint := Combo_Source.Hint;
   Cb3.Hint := Combo_Source.Hint;
end;


procedure TfrmSiswa.FormShow(Sender: TObject);
var
  s : string;
begin
   EksekusiSQL(dm.qAct,'SELECT * FROM kelas');
   s := cbPsMasuk.Text;
   isiCombo(dm.qAct, 'kd_kelas', '', cbPsMasuk);
   cbPsMasuk.Text := s;
   EksekusiSQL(DM.qProp,'SELECT * FROM propinsi');
   LoadToCombo(cbProp, DM.qProp, 'prop_id', 'prop_nama');
   cbProp.Items.Add('- Tambah Propinsi -');
   IsiPropinsiBaru(cbProp, cbPropAyah, cbPropIbu, cbPropWali);

   EksekusiSQL(DM.QTahunAjaran,'SELECT * FROM tahun_ajaran GROUP '
                 + 'BY th_ajaran ORDER BY th_ajaran DESC ');
   isiCombo(DM.QTahunAjaran,'th_ajaran','',CBTahun);
   CBTahun.Items.Add('Seluruh');
   slField:=TStringList.Create; slValue:=TStringList.Create;
   _slField:=TStringList.Create; _slValue:=TStringList.Create;
   GetBahasa;
   GetPekerjaan;
   pgHalaman.ActivePageIndex:=0;
   edKode.SetFocus;
   pgHalaman.Pages[0].TabVisible := True;
   edPsTahun.Text := fUtama.GettahunAjaran;
   if Th_Skrg = False then
   begin
      BtnTambah.Enabled := False;
      BtnEdit.Enabled := False;
      BtnHapus.Enabled := False;
   end;
end;

procedure TfrmSiswa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
slField.Free; slValue.Free;
_slField.Free; _slValue.Free;
end;

procedure TfrmSiswa.btnEditClick(Sender: TObject);
var zqr: TZQuery;
begin
  if not(isValid) then
  begin
    exit;
  end;
  if not(konfTanya('melakukan pengubahan data')) then exit;
  isiAtribut;
  isiAtributKelas;

  if dbUpdate(dm.qSiswa,'kd_siswa',edKode.Text,'siswa',slField,slValue) then
  begin
    if not dbUpdate(dm.qIsiKelas,'kd_siswa', edKode.Text, 'isi_kelas',
                    _slField,_slValue) then exit;
// ===================================>  Simpen foto..........
   zqr := NewZQuery;
   if imFoto.Picture <> nil then
   begin
     zqr.SQL.Text := 'update siswa set foto=:foto where kd_siswa=:kd';
     zqr.Params[0].AsBlob   := PicToBlob(ImFoto.Picture);
     zqr.Params[1].AsString := edKode.Text;
     if ErrorExecQuery(zqr) then
     begin
       zqr.Free;
       exit;
     end;
     zqr.Free;
   end;
// ====================================
    konfBerhasil('Data berhasil diubah.');
    pgHalaman.ActivePageIndex := 0;
    pgHalaman.OnChange(Self);
    Kosongkan(True);
    edKode.SetFocus;
    BtnTambah.Enabled := True;
  end else
  begin
    konfError('proses penyimpanan data gagal dilakukan.');
  end;
end;

procedure TfrmSiswa.btnHapusClick(Sender: TObject);
begin
  EksekusiSQL(dm.qAct,'SELECT kd_siswa FROM nilai WHERE kd_siswa = "'
                + edKode.Text + '"');
  if dm.qAct.RecordCount > 0 then
  begin
    konfError('Anda tidak dapat menghapus Siswa ini karena telah aktif '
              + 'dalam kegiatan sekolah');
    exit;
  end;
  if konfTanya('melakukan penghapusan data') then
  begin
    if dbHapus(dm.qSiswa,'siswa','kd_siswa','',edKode.Text,'') then
    begin
      konfBerhasil('Data berhasil dihapus.');
      pgHalaman.ActivePageIndex := 0;
      pgHalaman.OnChange(Self);
      Kosongkan(True);
      edKode.SetFocus;
    end;
  end
end;

procedure TfrmSiswa.edNamaChange(Sender: TObject);
begin
  edTmpNama.Text:=edNama.Text;
  edkjNama.Text:=edNama.Text;
  edotNama.Text:=edNama.Text;
  edwsNama.Text:=edNama.Text;
  edHNama.Text:=edNama.Text;
end;

procedure TfrmSiswa.cbPsMasukChange(Sender: TObject);
begin
  EksekusiSQL(dm.qAct,'SELECT * FROM kelas WHERE kd_kelas = "'
                + cbPsMasuk.Text + '"');
  edPsMasuk.Text:=CariValue(dm.qAct,'nm_kelas');
end;

procedure TfrmSiswa.btnCariClick(Sender: TObject);
var kategori,tahun : string;
    _SQL: string;
begin
  cekNullCombo(CBTahun,'Tahun ajaran harap dipilih...');
  cekNullCombo(cbCari,' Kategori pencarian harus dipilih...!');
  cekNullEditCari(edCari,'kata kunci pencarian tidak boleh kosong...!' );

  if not (CBTahun.Text='Seluruh') then
  tahun := ' AND s.id_tahun_ajaran=t.id_tahun_ajaran AND t.th_ajaran LIKE "'
           + CBTahun.Text + '" ';

  case cbCari.ItemIndex of
    0 : kategori := 'nis';
    1 : kategori := 'nama_siswa';
  end;
  _SQL:='SELECT * FROM siswa s,tahun_ajaran t WHERE t.id_tahun_ajaran = s.id_tahun_ajaran AND ' + kategori + ' LIKE "' + edCari.Text  + '%" '+tahun+'';
  EksekusiSQL(dm.qAspek,_SQL);
  if dm.qAspek.Eof then
  begin
    konfPeringatan('Data tidak ditemukan.');
    exit;
  end;

  lbRec.Caption := 'Record ' + IntToStr(dm.qAspek.RecNo) + ' / ' + IntToStr(dm.qAspek.RecordCount);
  edKode.Text  := CariValue(dm.qAspek,'kd_siswa');
  btnPrev.Enabled := dm.qAspek.RecNo <> 1;
  btnNext.Enabled := dm.qAspek.RecNo < dm.qAspek.RecordCount;
end;

procedure TfrmSiswa.edCariClick(Sender: TObject);
begin
  edCari.SelectAll;
end;

procedure TfrmSiswa.edCariKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  btnCari.OnClick(Self);
end;

procedure TfrmSiswa.btnTampilClick(Sender: TObject);
begin
  _SQL:= 'SELECT s.*, t.th_ajaran, k.nm_kelas FROM siswa s,tahun_ajaran t, isi_kelas i, kelas k '+
         'WHERE  i.kd_siswa = s.kd_siswa AND i.id_tahun_ajaran=t.id_tahun_ajaran AND k.kd_kelas = i.kd_kelas '+
         'AND s.kd_siswa = "' +edKode.Text+ '" GROUP BY s.kd_siswa';
   EksekusiSQL(dm.qSiswa,_SQL);
   if dm.qSiswa.Eof then
   begin
      ShowMessage('Data siswa masih kosong.');
      exit;
   end;
   OpenReport('siswa',_SQL);
end;

procedure TfrmSiswa.btnKodeSisClick(Sender: TObject);
begin
   frmLookUpSis := TfrmLookUpSis.Create(Owner);
   try
      frmLookUpSis.PerintahQuery := 'SELECT s.kd_siswa, s.nis, nama_siswa, k.nm_kelas '+
                                    'FROM siswa s, kelas k '+
                                    'WHERE s.bf_msukkelas2=k.kd_kelas AND aktif = "Y" group by kd_siswa';
      frmLookUpSis.PerintahQuery2 := 'SELECT s.kd_siswa, s.nis, nama_siswa, k.nm_kelas '+
                                     'FROM siswa s, kelas k '+
                                     'WHERE s.bf_msukkelas2=k.kd_kelas AND aktif = "Y" AND '+
                                     'k.kd_kelas = "'+GetStrCombo(frmLookUpSis.cbKelas)+'" ';

      frmLookUpSis.PerintahQuery3 := '" '+'group by kd_siswa ORDER BY s.nama_siswa ASC ';
      frmLookUpSis.isCheck := False;
      frmLookUpSis.ShowModal;
   finally
      if frmLookUpSis.Tag = 1 then
      begin
         edKode.Text := frmLookUpSis.gridData.Cells[5,frmLookUpSis.gridData.Row];
      end;
      frmLookUpSis.Free;
   end;
end;

procedure TfrmSiswa.cbKelaminChange(Sender: TObject);
begin
sSex:=FetchCodeCombo(cbKelamin.Text,1);
end;

procedure TfrmSiswa.edHLainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN  then pgHalaman.ActivePageIndex := 4;
end;

procedure TfrmSiswa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Key := #0;
end;

procedure TfrmSiswa.edKodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  btnKodeSisClick(Self);
end;

procedure TfrmSiswa.Tampilkan(machine: TZQuery);
var
  strKelamin: string;
begin
  ediNis.Text            := CariValue(machine,'nis');
  ediNisDiknas.Text      := CariValue(machine,'nisn');
  edNama.Text            := CariValue(machine,'nama_siswa' );
  edNamaPanggil.Text     := CariValue(machine,'nama_panggil');
  edTmpLahir.Text        := CariValue(machine,'tmp_lahir');
  tglLahir.Date          := machine.FieldByName('tgl_lahir').asDateTime;
  strKelamin             := Trim(CariValue(machine,'sex'));
  cbAgama.Text           := CariValue(machine,'agama');
  cbWarga.Text           := CariValue(machine,'wrg_negara');
  edianakke.Text         := CariValue(machine,'anak_ke');
  edStatus.Text          := CariValue(machine,'statushub');
  ediKandung.Text        := CariValue(machine,'jml_sdrKandung' );
  cbwsAgama.Text         := CariValue(machine,'agm_wali');
  edwsTelp.Text         := CariValue(machine,'telp_wali2');
  ediTiri.Text           := CariValue(machine,'jml_sdrtiri' );
  ediAngkat.Text         := CariValue(machine,'jml_sdrangkat');
  cbYatim.Text           := CariValue(machine,'yatim');
  cbwsKet.Text           := CariValue(machine,'ket_wali');
  cbBahasa.Text          := CariValue(machine,'bahasa1' );
  cbBahasa2.Text         := CariValue(machine,'bahasa2' );
  motAlamatI.Lines.Text  := CariValue(machine,'alm_ibu' );
  almSiswa.Text          := CariValue(machine,'almt_siswa' );
  edtmpTelp.Text         := CariValue(machine,'telp_siswa');
  edHSeni.Text           := CariValue(machine,'kesenian' );
  edAlasan.Text          := CariValue(machine,'alasanpindah');
  edditerima.Text        := CariValue(machine,'diterima');
  TglDiterima.Date       := machine.FieldByName('tglditerima').AsDateTime;
  edAsal.Text            := CariValue(machine,'asalsekolah');
  edNamaTK.Text          := CariValue(machine,'namaTK');
  edSTK.Text             := CariValue(machine,'sttb_tk');
  edThnSttb.Value        := machine.FieldByName('sttb_thn').AsInteger;
  edNoSttb.Text          := CariValue(machine,'sttb_nomor');
  ediTinggal.Text        := CariValue(machine,'jrak_tggal' );
  cbTransport.Text       := CariValue(machine,'transport' );
  edkjDarah.Text         := CariValue(machine,'gol_darah' );
  edKjJasmani.Text       := CariValue(machine,'ccat_fisik' );
  edikjTinggi.Text       := CariValue(machine,'tinggi_bdn' );
  edikjBerat.Text        := CariValue(machine,'berat_bdn' );
  edpsTahun.Text         := CariValue(machine,'th_ajaran');
  cbpsMasuk.Text         := CariValue(machine,'bf_msukkelas2' );
  edOtNamaA.Text         := CariValue(machine,'nm_ayah' );
  edwsTelp.Text          := CariValue(machine,'telp_wali');
  cbotAgamaA.Text        := CariValue(machine,'agm_ayah' );
  edotKerjaA.Text        := CariValue(machine,'kerja_ayah');
  edotTelpA.Text         := CariValue(machine,'telp_ayah');
  cbotWargaA.Text        := CariValue(machine,'wn_ayah' );
  edwsSiswa.Text         := CariValue(machine,'nm_wali');
  ediotPenghasilanA.Text := CariValue(machine,'gaji_ayah' );
  motAlamatA.Text        := CariValue(machine,'alm_ayah');
  cbwsKerja.Text         := CariValue(machine,'kerja_wali');
  edOtNamaI.Text         := CariValue(machine,'nm_ibu' );
  cbotAgamaI.Text        := CariValue(machine,'agm_ibu');
  cbotKerjaI.Text        := CariValue(machine,'kerja_ibu');
  edotTelpI.Text        := CariValue(machine,'telp_ibu');
  cbotWargaI.Text        := CariValue(machine,'wn_ibu' );
  ediotHasilI.Text       := CariValue(machine,'gaji_ibu' );
  edHJasmani.Text        := CariValue(machine,'penjaskes' );
  cbOtPendidikanA.Text   := CariValue(machine,'pnddkan_Ayah' );
  cbPendidikanI.Text     := CariValue(machine,'pnddkan_Ibu' );
  edotTempatA.Text       := CariValue(machine,'tmptLahir_ayah');
  edotTempatI.Text       := CariValue(machine,'tmptLahir_ibu');
  dpotLahirA.Date        := machine.FieldByName('lhir_Ayah').AsDateTime;
  dpotLahirI.Date        := machine.FieldByName('lhir_Ibu').AsDateTime;
  edotKetA.Text          := CariValue(machine,'ket_ayah');
  cbotKetI.Text          := CariValue(machine,'ket_ibu');
  edHLain.Text           := CariValue(machine,'lain' );
  ediwsHasil.Text        := CariValue(machine,'hasil_wali');
  edwsTempat.Text        := CariValue(machine,'tmp_lahir_wali');
  dpwsLahir.Date         := machine.FieldByName('tgl_lahir_wali').AsDateTime;
  edwsPendidikan.Text    := CariValue(machine,'pnddkan_wali');
  cbwsWarga.Text         := CariValue(machine,'wn_wali');
  mwsAlamat.Lines.Text   := CariValue(machine,'alm_wali');
  id_tahun_ajaran        := CariValue(machine,'id_tahun_ajaran');
  ImFoto.Picture         := FieldToPic(machine,'foto');
  cbProp.Text            := CariValue(machine,'propinsi');
  cbKab.Text             := CariValue(machine,'kabupaten');
  cbKec.Text             := CariValue(machine,'kecamatan');
  edKdPos.Text           := CariValue(machine,'kodepos');
  cbDesa.Text            := CariValue(machine,'kelurahan');
  //======================================================
  cbPropAyah.Text            := CariValue(machine,'propinsi_ayah');
  cbKabAyah.Text             := CariValue(machine,'kabupaten_ayah');
  cbKecAyah.Text             := CariValue(machine,'kecamatan_ayah');
  cbKdPosAyah.Text           := CariValue(machine,'kodepos_ayah');
  cbDesaAyah.Text            := CariValue(machine,'kelurahan_ayah');

  cbPropIbu.Text            := CariValue(machine,'propinsi_ibu');
  cbKabIbu.Text             := CariValue(machine,'kabupaten_ibu');
  cbKecIbu.Text             := CariValue(machine,'kecamatan_ibu');
  cbKdPosIbu.Text           := CariValue(machine,'kodepos_ibu');
  cbDesaIbu.Text            := CariValue(machine,'kelurahan_ibu');

  cbPropWali.Text            := CariValue(machine,'propinsi_wali');
  cbKabWali.Text             := CariValue(machine,'kabupaten_wali');
  cbKecWali.Text             := CariValue(machine,'kecamatan_wali');
  cbKdPosWali.Text           := CariValue(machine,'kodepos_wali');
  cbDesaWali.Text            := CariValue(machine,'kelurahan_wali');
  edEmail.Text               := CariValue(machine,'email');
  edWebBlog.Text             := CariValue(machine,'webblog');
  cbSuku.Text                := CariValue(machine,'suku');


  if Trim(LowerCase(CariValue(machine,'sex'))) = 'L' then
  cbKelamin.Text := 'L   => [Laki-Laki]'
  else if Trim(LowerCase(CariValue(machine,'sex'))) = 'w' then
  cbKelamin.Text := 'P   => [Perempuan]';
  if strKelamin = 'L' then cbKelamin.ItemIndex := 0
  else if strKelamin = 'P' then
  cbKelamin.ItemIndex := 1;
end;

procedure TfrmSiswa.btnNextClick(Sender: TObject);
begin
  dm.qAspek.Next;
  edKode.Text     := CariValue(dm.qAspek,'kd_siswa');
  btnPrev.Enabled := dm.qAspek.RecNo <> 1;
  btnNext.Enabled := dm.qAspek.RecNo < dm.qAspek.RecordCount;
  lbRec.Caption   := 'Record ' + IntToStr(dm.qAspek.RecNo) + ' / '
                     + IntToStr(dm.qAspek.RecordCount);
end;

procedure TfrmSiswa.btnCetakClick(Sender: TObject);
begin
  _SQL:= 'SELECT s.*, t.th_ajaran, k.nm_kelas FROM siswa s,tahun_ajaran t, isi_kelas i, kelas k '+
         'WHERE  i.kd_siswa = s.kd_siswa AND i.id_tahun_ajaran=t.id_tahun_ajaran AND k.kd_kelas = i.kd_kelas '+
         'AND s.kd_siswa = "' +edKode.Text+ '" GROUP BY s.kd_siswa';
   EksekusiSQL(dm.qSiswa,_SQL);
   if dm.qSiswa.Eof then
   begin
      ShowMessage('Data siswa masih kosong.');
      exit;
   end;
   PrintReport('siswa',_SQL);
end;

procedure TfrmSiswa.eddkLainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  btnTambah.SetFocus;
end;

procedure TfrmSiswa.CBTahunKeyPress(Sender: TObject; var Key: Char);
begin
 Key:=#0;
end;

procedure TfrmSiswa.edNoSKKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=13 then edPsTahun.SetFocus;
end;

procedure TfrmSiswa.edditerimaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN  then pgHalaman.ActivePageIndex := 3;
end;

procedure TfrmSiswa.edKodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z',#8]) then Key:=#0;
end;

procedure TfrmSiswa.edotKerjaAKeyPress(Sender: TObject; var Key: Char);
begin
 Key:=#0;
end;

procedure TfrmSiswa.cbotPendidikanAKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key:=#0;
end;

procedure TfrmSiswa.cbotKerjaIKeyPress(Sender: TObject; var Key: Char);
begin
  Key:=#0;
end;

procedure TfrmSiswa.cbPendidikanIKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=#0;
end;

procedure TfrmSiswa.cbPropChange(Sender: TObject);
var
  int: Integer;
  TambahProp: TTambahProp;
  str : string;
begin
   if cbProp.Text = '- Tambah Propinsi -' then
   begin
     TambahProp := TambahPropinsi;
     if TambahProp.Tambah then
     begin
       int := cbProp.Items.Count - 1;
       cbProp.Items.Insert(int, TambahProp.Nama);
       cbProp.Hint := cbProp.Hint + IntToStr(TambahProp.Id) + #13#10;
       cbProp.ItemIndex := int;
       IsiPropinsiBaru(cbProp, cbPropAyah, cbPropIbu, cbPropWali);
     end else cbProp.ItemIndex := -1;
     cbPropChange(sender);
     exit;
   end;

   str := GetStrCombo(cbProp);
   if str = '' then exit;
   DM.QKab.SQL.Text := 'SELECT k.* FROM kota k, propinsi p WHERE '
                       + 'k.prop_id=p.prop_id AND p.prop_id= "'
                       + str + '" order by kota_nama';
   if ErrorExecQuery(DM.QKab) then exit;
   LoadToCombo(cbKab, dm.QKab, 'kota_id', 'kota_nama');
   cbKab.Items.Add('- Tambah Kabupaten -');
end;

procedure TfrmSiswa.TambahKotaKlik(combo_Prop, combo_Kota: TComboBox);
var
  str : string;
  tmb : TTambahKota;
begin
  str := GetStrCombo(combo_Prop);
  if str = '' then
  begin
    cmsgPerhatian('Pilihlah Propinsi Terlebih Dahulu');
    exit;
  end;

  tmb := TambahKota(str, combo_Prop.Text);
  if tmb.Tambah then
  begin
    DM.QKab.SQL.Text := 'SELECT k.* FROM kota k, propinsi p WHERE '
                         + 'k.prop_id=p.prop_id AND p.prop_id= "'
                         + str + '" order by kota_nama';
    if ErrorExecQuery(DM.QKab) then exit;
    LoadToCombo(combo_Kota, dm.QKab, 'kota_id', 'kota_nama');
    combo_Kota.Items.Add('- Tambah Kabupaten -');
  end;
end;

procedure TfrmSiswa.cbKabChange(Sender: TObject);
begin
   ChangeComboKabupaten(cbProp, cbKab, cbKec);
end;

procedure TfrmSiswa.cbTransportKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN  then pgHalaman.ActivePageIndex := 2;
end;

procedure TfrmSiswa.SelectPekerjaan(combo_Pekerjaan: TComboBox);
begin
   if combo_Pekerjaan.Text = '- Tambah Pekerjaan -' then
   begin
      fPekerjaan := tfPekerjaan.Create(Application);
      try
         fPekerjaan.ShowModal;
      finally
         fPekerjaan.Free;
      end;
      GetPekerjaan;
   end;
end;

procedure TfrmSiswa.edotKerjaASelect(Sender: TObject);
begin
   SelectPekerjaan(edotKerjaA);
end;

procedure TfrmSiswa.cbotKerjaISelect(Sender: TObject);
begin
   SelectPekerjaan(cbotKerjaI);
end;

procedure TfrmSiswa.cbwsKerjaSelect(Sender: TObject);
begin
   SelectPekerjaan(cbwsKerja);
end;

procedure TfrmSiswa.cbBahasaSelect(Sender: TObject);
begin
   SelectBahasa(cbBahasa);
end;

procedure TfrmSiswa.SelectBahasa(combo_Bahasa: TComboBox);
begin
   if combo_Bahasa.Text = '- Tambah Bahasa -' then
   begin
      fBahasa := tfBahasa.Create(Application);
      try
         fBahasa.ShowModal;
      finally
         fBahasa.Free;
      end;
      GetBahasa;
   end;
end;

procedure TfrmSiswa.cbBahasa2Select(Sender: TObject);
begin
   SelectBahasa(cbBahasa2);
end;

procedure TfrmSiswa.TambahKecamatanKlik(combo_Kota, combo_Kecamatan: TComboBox);
var
  str : string;
  tmb : TTambahCamat;
begin
  str := GetStrCombo(combo_Kota);
  if str = '' then
  begin
    cmsgPerhatian('Pilihlah Kabupaten / Kota Terlebih Dahulu');
    exit;
  end;
  tmb := TambahCamat(str, combo_Kota.Text);
  if tmb.Tambah then
  begin
    DM.QKec.SQL.Text := 'SELECT * FROM kecamatan WHERE kota_id="'
                         + str + '" order by kec_nama';
    if ErrorExecQuery(DM.QKec) then exit;
    LoadToCombo(combo_Kecamatan, dm.QKec, 'kec_id', 'kec_nama');
    combo_Kecamatan.Items.Add('- Tambah Kecamatan -');
  end;
end;

procedure TfrmSiswa.cbKecChange(Sender: TObject);
begin
   ChangeComboKecamatan(cbKab, cbKec, cbDesa, edKdPos);
end;

procedure TfrmSiswa.btnPindahClick(Sender: TObject);
var
  zqr : TZQuery;
  kdDesa: string;
begin
  if edTmpKode.Text = ''then
  begin
    cmsgPerhatian('Pilih Data Siswa Terlebih Dahulu');
    exit;
  end;

  kdDesa := GetStrCombo(cbDesa);
  if kdDesa = '' then
  begin
    cmsgPerhatian('Kelurahan Belum Dipilih'#13'Data Alamat tdk bs Disimpan');
    exit;
  end;

  _SQL := 'SELECT * FROM alamatsiswa '+
          'WHERE kode_siswa="'+edTmpKode.Text+'" '+
          'AND alamat="'+almSiswa.Text+'" '+
          'AND kode_kelurahan="'+kdDesa+'" '+
          'AND kodepos="'+edKdPos.Text+'" '+
          'AND NoTelp="'+edTmpTelp.Text+'" '+
          'AND jarak="'+ediTinggal.Text+'" '+
          'AND transportasi="'+cbTransport.Text+'"';
  EksekusiSQL(DM.Q1,_SQL);
  if not DM.Q1.IsEmpty then
  begin
    konfPeringatan('Alamat yang sama sudah tersimpan dalam histori alamat siswa');
    Exit;
  end;

  zqr := NewZQuery;
  //isi tabel history
  zqr.SQL.Text := 'insert into alamatsiswa(kode_siswa, alamat, kode_kelurahan,'
                  + 'kodepos, NoTelp, jarak, transportasi) values(:kdsis,'
                  + ':alm, :kdkel,:pos, :tlp,:jrk,:trans)';
  zqr.Params[0].AsString := edTmpKode.Text;
  zqr.Params[1].AsString := almSiswa.Text;
  zqr.Params[2].AsString := kdDesa;
  zqr.Params[3].AsString := edKdPos.Text;
  zqr.Params[4].AsString := edTmpTelp.Text;
  zqr.Params[5].AsFloat  := StrToFloatDef(ediTinggal.Text, 0);
  zqr.Params[6].AsString := cbTransport.Text;
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  //update alamat siswa [tabel siswa];
  zqr.SQL.Text := 'update siswa set almt_siswa=:alm, telp_siswa=:tlp,propinsi='
                  + ':prop,kabupaten=:kab,kelurahan=:desa, '
                  + 'kodepos=:pos,jrak_tggal=:jrk,transport=:trans '
                  + 'where kd_siswa=:kd';
  zqr.Params[0].AsString := almSiswa.Text;
  zqr.Params[1].AsString := edTmpTelp.Text;
  zqr.Params[2].AsString := cbProp.Text;
  zqr.Params[3].AsString := cbKab.Text;
  zqr.Params[4].AsString := kdDesa;
  zqr.Params[5].AsString := edKdPos.Text;
  zqr.Params[6].AsFloat  := StrToFloatDef(ediTinggal.Text, 0);
  zqr.Params[7].AsString := cbTransport.Text;
  zqr.Params[8].AsString := edTmpKode.Text;
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  cmsgInfo('Data Alamat Berhasil Disimpan');
  zqr.Free;
end;

procedure TfrmSiswa.btnHistoriClick(Sender: TObject);
begin
  if edTmpKode.Text = ''then
  begin
    cmsgPerhatian('Pilih Data Siswa Terlebih Dahulu');
    exit;
  end;
  ShowHistoryAlamatSiswa(edTmpKode.Text, edTmpNama.Text);
end;

procedure TfrmSiswa.TabSheet2Show(Sender: TObject);
begin
  almSiswa.SetFocus;
end;

procedure TfrmSiswa.TabSheet3Show(Sender: TObject);
begin
  edNamaTK.SetFocus;
end;

procedure TfrmSiswa.TabSheet5Show(Sender: TObject);
begin
   edKjDarah.SetFocus;
end;

procedure TfrmSiswa.TabSheet6Show(Sender: TObject);
begin
   edotNamaA.SetFocus;
end;

procedure TfrmSiswa.TabSheet7Show(Sender: TObject);
begin
   edwsSiswa.SetFocus;
end;

procedure TfrmSiswa.TambahKelurahanKlik(combo_Kecamatan, combo_Kelurahan: TComboBox);
var
  tmb : TTambahDesa;
  zqr : TZQuery;
  str : string;
begin
  str := GetStrCombo(combo_Kecamatan);
  if str = '' then
  begin
    cmsgPerhatian('Pilihlah Kecamatan Terlebih Dahulu');
    exit;
  end;
  tmb := TambahDesa(str, combo_Kecamatan.Text);
   if tmb.Tambah then
   begin
    zqr := NewZQuery;
    zqr.SQL.Text := 'SELECT * FROM kelurahan WHERE kec_id = "' + str + '"';
    zqr.Open;
    LoadToCombo(combo_Kelurahan, zqr, 'kel_id', 'kel_nama');
    combo_Kelurahan.Items.Add('- Tambah Kelurahan -');
   end;
end;

procedure TfrmSiswa.cbDesaChange(Sender: TObject);
begin
   ChangeComboKelurahan(cbKec, cbDesa);
end;

procedure TfrmSiswa.TambahKodePosKlik(combo_Kecamatan, combo_KodePos: TComboBox);
var
  tmb : TKodePos;
  zqr : TZQuery;
  str : string;
begin
  str := GetStrCombo(combo_Kecamatan);
  if str = '' then
  begin
    cmsgPerhatian('Pilihlah Kecamatan Terlebih Dahulu');
    exit;
  end;
  tmb := TambahKodePos(str, combo_Kecamatan.Text);
   if tmb.Tambah then
   begin
    zqr := NewZQuery;
    zqr.SQL.Text := 'SELECT * FROM kodepos WHERE kec_id = "' + str + '"';
    zqr.Open;
    LoadToCombo(combo_KodePos, zqr, 'pos_id', 'pos_kode');
    combo_KodePos.Items.Add('- Tambah Kode Pos -');
   end;
end;

procedure TfrmSiswa.edKdPosChange(Sender: TObject);
begin
   ChangeComboKodePos(cbKec, edKdPos);
end;

procedure TfrmSiswa.cbPropAyahChange(Sender: TObject);
var
  int: Integer;
  TambahProp: TTambahProp;
  str : string;
begin
   if cbPropAyah.Text = '- Tambah Propinsi -' then
   begin
     TambahProp := TambahPropinsi;
     if TambahProp.Tambah then
     begin
       int := cbPropAyah.Items.Count - 1;
       cbPropAyah.Items.Insert(int, TambahProp.Nama);
       cbPropAyah.Hint := cbPropAyah.Hint + IntToStr(TambahProp.Id) + #13#10;
       cbPropAyah.ItemIndex := int;
       IsiPropinsiBaru(cbPropAyah, cbProp, cbPropIbu, cbPropWali);
     end else cbPropAyah.ItemIndex := -1;
     cbPropAyahChange(sender);
     exit;
   end;

   str := GetStrCombo(cbPropAyah);
   if str = '' then exit;
   DM.QKab.SQL.Text := 'SELECT k.* FROM kota k, propinsi p WHERE '
                       + 'k.prop_id=p.prop_id AND p.prop_id= "'
                       + str + '" order by kota_nama';
   if ErrorExecQuery(DM.QKab) then exit;
   LoadToCombo(cbKabAyah, dm.QKab, 'kota_id', 'kota_nama');
   cbKabAyah.Items.Add('- Tambah Kabupaten -');
end;

procedure TfrmSiswa.cbPropIbuChange(Sender: TObject);
var
  int: Integer;
  TambahProp: TTambahProp;
  str : string;
begin
   if cbPropIbu.Text = '- Tambah Propinsi -' then
   begin
     TambahProp := TambahPropinsi;
     if TambahProp.Tambah then
     begin
       int := cbPropIbu.Items.Count - 1;
       cbPropIbu.Items.Insert(int, TambahProp.Nama);
       cbPropIbu.Hint := cbPropIbu.Hint + IntToStr(TambahProp.Id) + #13#10;
       cbPropIbu.ItemIndex := int;
       IsiPropinsiBaru(cbPropIbu, cbPropAyah, cbProp, cbPropWali);
     end else cbPropIbu.ItemIndex := -1;
     cbPropIbuChange(sender);
     exit;
   end;

   str := GetStrCombo(cbPropIbu);
   if str = '' then exit;
   DM.QKab.SQL.Text := 'SELECT k.* FROM kota k, propinsi p WHERE '
                       + 'k.prop_id=p.prop_id AND p.prop_id= "'
                       + str + '" order by kota_nama';
   if ErrorExecQuery(DM.QKab) then exit;
   LoadToCombo(cbKabIbu, dm.QKab, 'kota_id', 'kota_nama');
   cbKabIbu.Items.Add('- Tambah Kabupaten -');
end;

procedure TfrmSiswa.cbPropWaliChange(Sender: TObject);
var
  int: Integer;
  TambahProp: TTambahProp;
  str : string;
begin
   if cbPropWali.Text = '- Tambah Propinsi -' then
   begin
     TambahProp := TambahPropinsi;
     if TambahProp.Tambah then
     begin
       int := cbPropWali.Items.Count - 1;
       cbPropWali.Items.Insert(int, TambahProp.Nama);
       cbPropWali.Hint := cbPropWali.Hint + IntToStr(TambahProp.Id) + #13#10;
       cbPropWali.ItemIndex := int;
       IsiPropinsiBaru(cbPropWali, cbPropIbu, cbPropAyah, cbProp);
     end else cbPropWali.ItemIndex := -1;
     cbPropWaliChange(sender);
     exit;
   end;

   str := GetStrCombo(cbPropWali);
   if str = '' then exit;
   DM.QKab.SQL.Text := 'SELECT k.* FROM kota k, propinsi p WHERE '
                       + 'k.prop_id=p.prop_id AND p.prop_id= "'
                       + str + '" order by kota_nama';
   if ErrorExecQuery(DM.QKab) then exit;
   LoadToCombo(cbKabWali, dm.QKab, 'kota_id', 'kota_nama');
   cbKabWali.Items.Add('- Tambah Kabupaten -');
end;

procedure TfrmSiswa.cbKabAyahChange(Sender: TObject);
begin
   ChangeComboKabupaten(cbPropAyah, cbKabAyah, cbKecAyah);
end;

procedure TfrmSiswa.cbKabIbuChange(Sender: TObject);
begin
   ChangeComboKabupaten(cbPropIbu, cbKabIbu, cbKecIbu);
end;

procedure TfrmSiswa.cbKabWaliChange(Sender: TObject);
begin
   ChangeComboKabupaten(cbPropWali, cbKabWali, cbKecWali);
end;

procedure TfrmSiswa.ChangeComboKabupaten(combo_propinsi,combo_kabupaten,combo_kecamatan: TComboBox);
var
  str : string;
begin
   if combo_kabupaten.Text = '- Tambah Kabupaten -' then
   begin
     TambahKotaKlik(combo_propinsi,combo_kabupaten);
     if combo_kabupaten.Text = '- Tambah Kabupaten -' then
     combo_kabupaten.ItemIndex := -1;
     exit;
   end;
   str := GetStrCombo(combo_kabupaten);
   if str = '' then exit;
   DM.QKec.SQL.Text := 'SELECT * FROM kecamatan WHERE kota_id="'
                       + str + '" order by kec_nama';
   if ErrorExecQuery(DM.QKec) then exit;
   LoadToCombo(combo_kecamatan, dm.QKec, 'kec_id', 'kec_nama');
   combo_kecamatan.Items.Add('- Tambah Kecamatan -');
end;

procedure TfrmSiswa.ChangeComboKecamatan(combo_kabupaten,combo_kecamatan,combo_kelurahan,combo_kodepos: TComboBox);
var
  str : string;
begin
   if combo_kecamatan.Text = '- Tambah Kecamatan -' then
   begin
     TambahKecamatanKlik(combo_kabupaten,combo_kecamatan);
     if combo_kecamatan.Text = '- Tambah Kecamatan -' then
     combo_kecamatan.ItemIndex := -1;
     exit;
   end;
   str := GetStrCombo(combo_kecamatan);
   if str = '' then exit;
   EksekusiSQL(DM.Q1,'SELECT * FROM kelurahan WHERE kec_id = "' + str + '"');
   LoadToCombo(combo_kelurahan, DM.Q1, 'kel_id', 'kel_nama');
   combo_kelurahan.Items.Add('- Tambah Kelurahan -');

   EksekusiSQL(DM.Q1,'SELECT * FROM kodepos WHERE kec_id = "' + str + '"');
   LoadToCombo(combo_kodepos, DM.Q1, 'pos_id', 'pos_kode');
   combo_kodepos.Items.Add('- Tambah Kode Pos -');
end;

procedure TfrmSiswa.ChangeComboKelurahan(combo_kecamatan,combo_kelurahan: TComboBox);
begin
   if combo_kelurahan.Text = '- Tambah Kelurahan -' then
   begin
     TambahKelurahanKlik(combo_kecamatan,combo_kelurahan);
     if combo_kelurahan.Text = '- Tambah Kelurahan -' then
     combo_kelurahan.ItemIndex := -1;
     exit;
   end;
end;

procedure TfrmSiswa.ChangeComboKodePos(combo_kecamatan,combo_kodepos: TComboBox);
begin
   if combo_kodepos.Text = '- Tambah Kode Pos -' then
   begin
     TambahKodePosKlik(combo_kecamatan, combo_kodepos);
     if combo_kodepos.Text = '- Tambah Kode Pos -' then
     combo_kodepos.ItemIndex := -1;
     exit;
   end;
end;

procedure TfrmSiswa.cbKecAyahChange(Sender: TObject);
begin
   ChangeComboKecamatan(cbKabAyah, cbKecAyah, cbDesaAyah, cbKdPosAyah);
end;

procedure TfrmSiswa.cbKecIbuChange(Sender: TObject);
begin
   ChangeComboKecamatan(cbKabIbu, cbKecIbu, cbDesaIbu, cbKdPosIbu);
end;

procedure TfrmSiswa.cbKecWaliChange(Sender: TObject);
begin
   ChangeComboKecamatan(cbKabWali, cbKecWali, cbDesaWali, cbKdPosWali);
end;

procedure TfrmSiswa.cbDesaAyahChange(Sender: TObject);
begin
   ChangeComboKelurahan(cbKecAyah, cbDesaAyah);
end;

procedure TfrmSiswa.cbDesaIbuChange(Sender: TObject);
begin
   ChangeComboKelurahan(cbKecIbu, cbDesaIbu);
end;

procedure TfrmSiswa.cbDesaWaliChange(Sender: TObject);
begin
   ChangeComboKelurahan(cbKecWali, cbDesaWali);
end;

procedure TfrmSiswa.cbKdPosAyahChange(Sender: TObject);
begin
   ChangeComboKodePos(cbKecAyah, cbKdPosAyah);
end;

procedure TfrmSiswa.cbKdPosIbuChange(Sender: TObject);
begin
   ChangeComboKodePos(cbKecIbu, cbKdPosIbu);
end;

procedure TfrmSiswa.cbKdPosWaliChange(Sender: TObject);
begin
   ChangeComboKodePos(cbKecWali, cbKdPosWali);
end;

procedure TfrmSiswa.btnPrevClick(Sender: TObject);
begin
  dm.qAspek.Prior;
  edKode.Text     := CariValue(dm.qAspek,'kd_siswa');
  btnPrev.Enabled := dm.qAspek.RecNo <> 1;
  btnNext.Enabled := dm.qAspek.RecNo < dm.qAspek.RecordCount;
  lbRec.Caption   := 'Record ' + IntToStr(dm.qAspek.RecNo) + ' / '
                     + IntToStr(dm.qAspek.RecordCount);
end;


procedure TfrmSiswa.BtnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSiswa.btnPhotoClick(Sender: TObject);
begin
  if opdFoto.Execute then
  imFoto.Picture.LoadFromFile(opdFoto.FileName);
end;

procedure TfrmSiswa.edotTelpIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN  then pgHalaman.ActivePageIndex := 5;
end;

procedure TfrmSiswa.edwsTelpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  if BtnTambah.Enabled = True then
  BtnTambah.SetFocus else
  BtnEdit.SetFocus;
end;

procedure TfrmSiswa.edwsSiswaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  SetFocusControl(Self,sender);
end;

procedure TfrmSiswa.edPsMasukKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN  then pgHalaman.ActivePageIndex:=1;
end;

end.

