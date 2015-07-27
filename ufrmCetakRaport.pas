unit ufrmCetakRaport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmKosong, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvToolBar, AdvToolBarStylers, AdvOfficeHint, AdvGlowButton,
  AdvSmoothPanel, StdCtrls, AdvEdit, AdvEdBtn, AdvGroupBox, ZDataset,
  ExtCtrls, Menus, AdvMenus;

type
  TfrmCetakRaport = class(TfrmKosong)
    AdvGroupBox1: TAdvGroupBox;
    rdPer: TRadioButton;
    gbPer: TAdvGroupBox;
    edNIS: TAdvEditBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edKode: TEdit;
    edNama: TEdit;
    rdSemua: TRadioButton;
    btnCetak: TAdvGlowButton;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    btnPrev: TAdvGlowButton;
    AdvPopupMenu1: TAdvPopupMenu;
    CoverBiodata1: TMenuItem;
    Kompetensi1: TMenuItem;
    HalamanBelakang1: TMenuItem;
    btnOption: TAdvGlowButton;
    procedure edNISKeyPress(Sender: TObject; var Key: Char);
    procedure rdSemuaClick(Sender: TObject);
    procedure edNISClickBtn(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOptionClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure CoverBiodata1Click(Sender: TObject);
    procedure Kompetensi1Click(Sender: TObject);
    procedure HalamanBelakang1Click(Sender: TObject);
  private
  public
    procedure PrepareRaportPerSiswa(Kode: String);
    procedure PrepareLastPage(Kode: string);
    procedure PrepareKompetensi(Kode, KompId: String; AClear: boolean);
    procedure PrepareCover(Kode: String);

    procedure CetakRaportPerSiswa(Kode: String);
    procedure CetakKompetensi(Kode, KompId: String; AClear: boolean);
    procedure CetakLastPage(Kode: string);
    procedure CetakCover(Kode: String);
  end;

var
  frmCetakRaport: TfrmCetakRaport;

implementation

uses ufrmLookUp, ufrmReport, ufrmLogin, ADODB, myEngine, ufrmErrorQuery,
  ufrmPrintOption;

var
  kota2 : string;

{$R *.dfm}

procedure TfrmCetakRaport.edNISKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TfrmCetakRaport.rdSemuaClick(Sender: TObject);
begin
  inherited;
  btnCetak.Enabled := true;
  gbPer.Enabled    := not rdSemua.Checked;
  btnPrev.Enabled  := rdPer.Checked;
end;

procedure TfrmCetakRaport.edNISClickBtn(Sender: TObject);
var
  str: string;
  Res: TLookUpResult;
begin
  inherited;
  str := 'select siswa_code, siswa_nis as nis, siswa_name as nama from '
         + 'tbsiswa order by siswa_name';
  Res := LookUpdata('Daftar Siswa', str, 1);

  if Res.Count > 0 then
  begin
    edKode.Text := LookUpList(Res.Text, 1);
    edNIS.Text  := LookUpList(Res.Text, 2);
    edNama.Text := LookUpList(Res.Text, 3);
  end;
end;

procedure TfrmCetakRaport.Label4Click(Sender: TObject);
begin
  inherited;
  rdSemuaClick(sender);
  rdPer.Checked := true;
end;

procedure TfrmCetakRaport.Label5Click(Sender: TObject);
begin
  inherited;
  rdSemuaClick(sender);
  rdSemua.Checked := true;
end;

procedure TfrmCetakRaport.btnCetakClick(Sender: TObject);
var
  qtemp: TZQuery;
  str: string;
  Kode: string;
begin
  inherited;

  if rdSemua.Checked then
  begin
    qtemp := NewZQuery;
    str   := 'select siswa_code from tbsiswa order by siswa_nis';
    qtemp.SQL.Text := str;
    if ErrorExecQuery(qtemp) then exit;

    while not qtemp.Eof do
    begin
      Kode := FieldToStr(qtemp, 'siswa_code');
      CetakRaportPerSiswa(Kode);
      qtemp.Next;
    end;
    qtemp.Free;
  end else
  begin
    Kode := edKode.Text;
    if Kode = '' then exit;
    CetakRaportPerSiswa(Kode);
  end;
end;

procedure TfrmCetakRaport.CetakRaportPerSiswa(Kode: String);
var
  ACl: Boolean;
  xxx: Integer;
  str: string;
  kpid: string;
begin
  if frmPrintOption.cbCover.Checked then
  CetakCover(Kode);

  if frmPrintOption.cbKomp.Checked then
  begin
    str  := 'select kompetensi_id from tbkompetensi order by kompetensi_id '
            + 'asc';
    zqr.SQL.Text := str;
    if ErrorExecQuery(zqr) then exit;

    xxx := 0;
    while not zqr.Eof do
    begin
      inc(xxx);
      ACl := (xxx = 1) and (not frmPrintOption.cbCover.Checked);
      kpid := FieldToStr(zqr, 'kompetensi_id');
      CetakKompetensi(Kode, kpid, ACl);
      zqr.Next;
    end;
  end;
  if frmPrintOption.cbLast.Checked then
  CetakLastPage(Kode);
  PrintPrepared;
end;

procedure TfrmCetakRaport.CetakKompetensi(Kode, KompId: String;
                                          AClear: boolean);
var
  s4: string;
  ttl: string;
  s3: string;
  s2: string;
  s1: string;
  str: string;
begin
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select *, kompetensi_name from tbrekapindi ri, tbhb h, '
         + 'tbkompetensi k where k.kompetensi_id=h.kompetensi_id and '
         + 'siswa_code="%s" and ri.hb_id=h.hb_id  and h.kompetensi_id=%s',
           [Kode, KompID]);
  s3  := format('select * from tbrekapHB where kompetensi_id=%s and '
         + 'siswa_code="%s"', [KompId, Kode]);
  s4  := format('select "%s" as apppath', [AppPath]);
  ttl := format('Raport NIS : %s; KompID : %s', [Kode, KompID]);
  ExecReport(ttl, 'raport_isi', str, s1, s2, s3, s4, '', rtPrepare, AClear, true);
end;

procedure TfrmCetakRaport.CetakCover(Kode: String);
var
  s2: string;
  str: string;
  s1: string;
begin
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'biodata_cover', str, s1, s2, '', '', '', rtPrepare, true, true);
end;

procedure TfrmCetakRaport.CetakLastPage(Kode: string);
var
  ACl: Boolean;
  s2: string;
  str: string;
  s1: string;
begin
  ACl := (not frmPrintOption.cbCover.Checked) and
         (not frmPrintOption.cbKomp.Checked);
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'raport_last', str, s1, s2, '', '', '', rtPrepare, ACl, true);
end;

procedure TfrmCetakRaport.PrepareRaportPerSiswa(Kode: String);
var
  flt: string;
  yyy: Integer;
  ACl: Boolean;
  xxx: Integer;
  str: string;
  kpid: string;
begin
  if frmPrintOption.cbCover.Checked then
  PrepareCover(Kode);

  if frmPrintOption.cbKomp.Checked then
  begin
    yyy  := frmPrintOption.cmbKomp.ItemIndex;

    if yyy > 0 then
    flt := format('where kompetensi_id=%d', [yyy]);
    str := format('select kompetensi_id from tbkompetensi %s', [flt]);
    zqr.SQL.Text := str;
    if ErrorExecQuery(zqr) then exit;

    xxx := 0;
    while not zqr.Eof do
    begin
      inc(xxx);
      ACl := (xxx = 1) and (not frmPrintOption.cbCover.Checked);
      kpid := FieldToStr(zqr, 'kompetensi_id');
      PrepareKompetensi(Kode, kpid, ACl);
      zqr.Next;
    end;
  end;
  if frmPrintOption.cbLast.Checked then
  PrepareLastPage(Kode);
end;

procedure TfrmCetakRaport.PrepareKompetensi(Kode, KompId: String;
                 AClear: boolean);
var
  s4: string;
  ttl: string;
  s3: string;
  s2: string;
  s1: string;
  str: string;
begin
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select *, kompetensi_name from tbrekapindi ri, tbhb h, '
         + 'tbkompetensi k where k.kompetensi_id=h.kompetensi_id and '
         + 'siswa_code="%s" and ri.hb_id=h.hb_id  and h.kompetensi_id=%s',
           [Kode, KompID]);
  s3  := format('select * from tbrekapHB where kompetensi_id=%s and '
         + 'siswa_code="%s"', [KompId, Kode]);
  s4  := format('select "%s" as apppath', [AppPath]);
  ttl := format('Raport NIS : %s; KompID : %s', [Kode, KompID]);
  ExecReport(ttl, 'raport_isi', str, s1, s2, s3, s4, '', rtPrepare,
             AClear, false);
end;

procedure TfrmCetakRaport.PrepareCover(Kode: String);
var
  s2: string;
  str: string;
  s1: string;
begin
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'biodata_cover', str, s1, s2, '', '', '', rtPrepare, true,
             false);
end;

procedure TfrmCetakRaport.PrepareLastPage(Kode: string);
var
  ACl: Boolean;
  s2: string;
  str: string;
  s1: string;
begin
  ACl := (not frmPrintOption.cbCover.Checked) and
         (not frmPrintOption.cbKomp.Checked);
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'raport_last', str, s1, s2, '', '', '', rtPrepare,
             ACl, false);
end;

procedure TfrmCetakRaport.FormCreate(Sender: TObject);
begin
  inherited;
  Panel1.Visible := FileExists('c:\pass.ini');
  kota2          := ReadConfigDef('raport', 'kota2', 'Jakarta');
end;

procedure TfrmCetakRaport.btnOptionClick(Sender: TObject);
begin
  inherited;
  frmPrintOption.ShowModal;
end;

procedure TfrmCetakRaport.btnPrevClick(Sender: TObject);
var
  Kode: string;
begin
  inherited;
  Kode := edKode.Text;
  if Kode = '' then
  begin
    cmsgPerhatian('Pilihlah Siswa terlebih dahulu');
    exit;
  end;
  PrepareRaportPerSiswa(Kode);
  ShowPrepared;
end;

procedure TfrmCetakRaport.CoverBiodata1Click(Sender: TObject);
var
  Kode: string;
  s2: string;
  s1: string;
  str: string;
begin
  str  := 'select * from tbsiswa';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;
  Kode := FieldToStr(zqr, 'siswa_code');
  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'biodata_cover', str, s1, s2, '', '', '', rtPreview, true,
             false);
end;

procedure TfrmCetakRaport.Kompetensi1Click(Sender: TObject);
var
  KompID: String;
  Kode: string;
  s4: string;
  ttl: string;
  s3: string;
  s2: string;
  s1: string;
  str: string;
begin
  str  := 'select * from tbsiswa';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;
  Kode := FieldToStr(zqr, 'siswa_code');

  str    := 'select * from tbkompetensi';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;
  KompID := FieldToStr(zqr, 'kompetensi_id');

  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select *, kompetensi_name from tbrekapindi ri, tbhb h, '
         + 'tbkompetensi k where k.kompetensi_id=h.kompetensi_id and '
         + 'siswa_code="%s" and ri.hb_id=h.hb_id  and h.kompetensi_id=%s',
           [Kode, KompID]);
  s3  := format('select * from tbrekapHB where kompetensi_id=%s and '
         + 'siswa_code="%s"', [KompId, Kode]);
  s4  := format('select "%s" as apppath', [AppPath]);
  ttl := format('Raport NIS : %s; KompID : %s', [Kode, KompID]);
  ExecReport(ttl, 'raport_isi', str, s1, s2, s3, s4, '', rtPreview, true, false);
end;

procedure TfrmCetakRaport.HalamanBelakang1Click(Sender: TObject);
var
  Kode: string;
  s2: string;
  str: string;
  s1: string;
begin
  str  := 'select * from tbsiswa';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;
  Kode := FieldToStr(zqr, 'siswa_code');

  str := format('select * from tbsiswa where siswa_code="%s"', [Kode]);
  s1  := format('select *, "%s" as kota2 from tbidentitas', [kota2]);
  s2  := format('select "%s" as apppath', [AppPath]);
  ExecReport('', 'raport_last', str, s1, s2, '', '', '', rtPreview, false, true);
end;

end.