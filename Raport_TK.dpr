program Raport_TK;

uses
  Forms,
  ufrmUtama in 'ufrmUtama.pas' {frmUtama},
  ufrmLogin in 'ufrmLogin.pas' {frmLogin},
  myEngine in 'myEngine.pas',
  ufrmErrorQuery in 'ufrmErrorQuery.pas' {frmQueryError},
  ufrmKoneksi in 'ufrmKoneksi.pas' {frmKoneksi},
  ShellAPI,
  ufrmGantiPassword in 'ufrmGantiPassword.pas' {frmGantiPassword},
  ufrmKosong in 'ufrmKosong.pas' {frmKosong},
  ufrmMasterUser in 'ufrmMasterUser.pas' {frmMasterUser},
  ufrmUserGroup in 'ufrmUserGroup.pas' {frmUserGroup},
  ufrmHakAkses in 'ufrmHakAkses.pas' {frmHakAkses},
  ufrmLookUp in 'ufrmLookUp.pas' {frmLookUp},
  ufrmMessage in 'ufrmMessage.pas' {frmMessage},
  ufrmVarGlobal in 'ufrmVarGlobal.pas' {frmVarGlobal},
  ufrmIdentitas in 'ufrmIdentitas.pas' {frmIdentitas},
  ufrmMasterSiswa in 'ufrmMasterSiswa.pas' {frmMasterSiswa},
  ufrmMasterKompetensi in 'ufrmMasterKompetensi.pas' {frmMasterKompetensi},
  ufrmMasterHB in 'ufrmMasterHB.pas' {frmMasterHB},
  ufrmIndikator in 'ufrmIndikator.pas' {frmIndikator},
  ufrmEntriNilai in 'ufrmEntriNilai.pas' {frmEntriNilai},
  ufrmDefaultMaster in 'ufrmDefaultMaster.pas' {frmDefaultMaster},
  ufrmCetakRaport in 'ufrmCetakRaport.pas' {frmCetakRaport},
  ufrmReport in 'ufrmReport.pas' {frmReport},
  ufrmNarasi in 'ufrmNarasi.pas' {frmNarasi},
  ufrmPrintOption in 'ufrmPrintOption.pas' {frmPrintOption},
  ufrmKeadaanKesehatan in 'ufrmKeadaanKesehatan.pas' {frmKeadaanKesehatan};

{$R *.RES}

begin
  frmLogin := TfrmLogin.Create(nil);
  if not dbKoneksi.Connected then
  begin
    cmsgPerhatian('Koneksi Database Error !!!');
    ShellExecute(0, 'open', PChar('dbsetup.exe'), PChar('"'
                 + Application.ExeName + '"'), '', 0);
    exit;
  end;
  Application.Initialize;
  Application.Title := 'SYSTEM RAPORT';
  Application.CreateForm(TfrmUtama, frmUtama);
  Application.CreateForm(TfrmGantiPassword, frmGantiPassword);
  Application.CreateForm(TfrmReport, frmReport);
  Application.CreateForm(TfrmNarasi, frmNarasi);
  Application.CreateForm(TfrmPrintOption, frmPrintOption);
  Application.CreateForm(TfrmKeadaanKesehatan, frmKeadaanKesehatan);
  if frmUtama.ErrorCode in [101] then exit;
  frmUtama.Visible := true;         
  Application.Run;
end.
