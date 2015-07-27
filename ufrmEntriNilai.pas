unit ufrmEntriNilai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmKosong, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvToolBar, AdvToolBarStylers, AdvOfficeHint, AdvGlowButton,
  AdvSmoothPanel, ComCtrls, StdCtrls, AdvSmoothTabPager, Grids, BaseGrid,
  AdvGrid, AdvCGrid, ZDataset, DBGrids, DB, ImgList, Menus, AdvMenus,
  AdvGlassButton, tmsAdvGridExcel;

type
  TPDataTV = ^TDataTV;

  TDataTV = record
    index : integer;
    Text  : string;
  end;

  TfrmEntriNilai = class(TfrmKosong)
    tvIndikator: TTreeView;
    Label1: TLabel;
    edKomp: TEdit;
    Label2: TLabel;
    edIndi: TEdit;
    Label3: TLabel;
    edHB: TEdit;
    TabPage: TAdvSmoothTabPager;
    tabKomp: TAdvSmoothTabPage;
    TabHB: TAdvSmoothTabPage;
    TabIndikator: TAdvSmoothTabPage;
    TabBlank: TAdvSmoothTabPage;
    sgIndi: TAdvColumnGrid;
    Label5: TLabel;
    sgHB: TAdvColumnGrid;
    sgKomp: TAdvColumnGrid;
    sgBlank: TAdvColumnGrid;
    ImageList1: TImageList;
    btnPrintNilai: TAdvGlassButton;
    xls0: TAdvGridExcelIO;
    save: TSaveDialog;
    xls1: TAdvGridExcelIO;
    xls2: TAdvGridExcelIO;
    xls3: TAdvGridExcelIO;
    prb: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure tvIndikatorClick(Sender: TObject);
    procedure sgIndiGetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure sgIndiKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure TabIndikatorShow;
    procedure TabHBShow;
    procedure tabKompShow;
    procedure tvIndikatorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sgKompGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure sgKompDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure sgBlankKeyPress(Sender: TObject; var Key: Char);
    procedure sgBlankKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sgIndiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sgBlankDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnPrintNilaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    function GetNilaiIndikator(zqr: TZQuery; Field: String;
             Length: integer): String;
    procedure HitungRata2HB(ARow: Integer);
    procedure HitungRata2Indikator(ARow: Integer);
    procedure HitungRata2Nilai(ARow: Integer);
    procedure InsertParameterNilai(zqr: TZQuery; ARow: Integer);
    procedure ProsesRekap;
    procedure SaveAbsensi;
    procedure SaveIndikator(idx: Integer);
    procedure ShowActiveNodeText;
    procedure tabBlankShow;
    procedure SetButtonPrint(cap: string; Enable: boolean);
    procedure SetProgressBar(Length: Integer);
    { Public declarations }
  end;

var
  frmEntriNilai: TfrmEntriNilai;
  PDataTV : TPDataTV;
  Nx    : TTreeNode;
  nd0   : TTreeNode;
  sgSet : array[1..4] of TadvColumnGrid;
  fact  : integer;

implementation                 

uses ufrmLogin, ufrmErrorQuery, myEngine, strUtils, ufrmNarasi,
  ufrmKeadaanKesehatan;//, ufrmNarasi;

{$R *.dfm}

procedure TfrmEntriNilai.SetButtonPrint(cap: string; Enable: boolean);
begin
  btnPrintNilai.Caption := 'Import ' + cap;
  btnPrintNilai.Enabled := Enable;
end;

procedure TfrmEntriNilai.FormCreate(Sender: TObject);
var
  i: Integer;
  ndi: TTreeNode;
  ndh: TTreeNode;
  xxi: Integer;
  xxh: Integer;
  xxk: Integer;
  ndk: TTreeNode;
  idi: Integer;
  idh: Integer;
  idk: Integer;
  str: string;
begin
  inherited;
  str := 'select *  from tbindikator i, tbhb h, tbkompetensi k where '
         + 'i.hb_id=h.hb_id and  h.kompetensi_id=k.kompetensi_id order by '
         + 'k.kompetensi_id, h.hb_id, i.indikator_id';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;

  nd0  := tvIndikator.Items[0];
  ndk  := nil;
  ndh  := nil;
  nx   := nil;
  idk  := 0;
  idh  := 0;
  idi  := 0;
  xxk  := 0;
  xxh  := 0;
  xxi  := 0;
  fact := 25; //skor pernilai;  nilai * fact = 100;

  while not zqr.Eof do
  begin
    if idk <> FieldToInt(zqr, 'k.kompetensi_id') then
    begin
      New(PDataTV);
      inc(xxk);
      ndk := tvIndikator.Items.AddChild(nd0, Format('Kompetensi %d', [xxk]));
      PDataTV.index     := FieldToInt(zqr, 'k.kompetensi_id');
      PDataTV.Text      := FieldToStr(zqr, 'kompetensi_name');
      ndk.Data          := PDataTV;
      ndk.SelectedIndex := 1;
      idk               := FieldToInt(zqr, 'k.kompetensi_id');
      xxh               := 0;
      xxi               := 0;
    end;
    if idh <> FieldToInt(zqr, 'h.hb_id') then
    begin
      New(PDataTV);
      inc(xxh);
      ndh := tvIndikator.Items.AddChild(ndk, Format('Capaian Perkembangan %d', [xxh]));
      PDataTV.index     := FieldToInt(zqr, 'h.hb_id');
      PDataTV.Text      := FieldToStr(zqr, 'hb_name');
      ndh.Data          := PDataTV;
      ndh.SelectedIndex := 1;
      idh               := FieldToInt(zqr, 'h.hb_id');
      xxi               := 0;
    end;

    if idi <> FieldToInt(zqr, 'indikator_id') then
    begin
      New(PDataTV);
      inc(xxi);
      ndi := tvIndikator.Items.AddChild(ndh, Format('Indikator %d', [xxi]));
      PDataTV.index     := FieldToInt(zqr, 'indikator_id');
      PDataTV.Text      := FieldToStr(zqr, 'indikator_name');
      ndi.Data          := PDataTV;
      ndi.SelectedIndex := 1;
      idi               := FieldToInt(zqr, 'indikator_id');
    end;
    zqr.Next;
  end;
  TabPage.ActivePage := TabBlank;

  //nampilin data siswa dab....!!
  str := 'select siswa_code, siswa_nis, siswa_name from tbsiswa '
         + 'order by siswa_name';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;

  sgSet[1] := sgIndi;
  sgSet[2] := sgHB;
  sgSet[3] := sgKomp;
  sgSet[4] := sgBlank;

  for i := 1 to 4 do
  ClearGrid(sgSet[i]);
  while not zqr.Eof do
  begin
    for i := 1 to 4 do
    begin
      AddRow(sgSet[i]);
      FillLastGrid(sgSet[i], FieldToStr(zqr, 'siswa_code'), 1);
      FillLastGrid(sgSet[i], FieldToStr(zqr, 'siswa_nis') , 2);
      FillLastGrid(sgSet[i], FieldToStr(zqr, 'siswa_name'), 3);
    end;
    zqr.Next;
  end;

  sgKomp.MergeCells(0, 0, 1, 2);
  sgKomp.MergeCells(2, 0, 1, 2);
  sgKomp.MergeCells(3, 0, 1, 2);
  ND0.Expand(true);
end;

procedure TfrmEntriNilai.HitungRata2Nilai(ARow: Integer);
var
  i: Integer;
  y: Integer;
  z: Real;
  x: Integer;
begin
  x := 0;
  y := 0;
  for i := 4 to 6 do
  begin
    if StrToIntDef(sgIndi.Cells[i, ARow], -1) <> -1 then
    begin
      inc(x);
      y := y + StrToIntDef(sgIndi.Cells[i, ARow], -1);
    end;
  end;
  if x <> 0 then
  begin
    z := y / x;
    sgIndi.Cells[7, ARow] := format('%.2n', [z]);
    sgIndi.Cells[8, ARow] := FloatToStr(z);
  end else
  begin
    sgIndi.Cells[7, ARow] := '';
    sgIndi.Cells[8, ARow] := '';
  end;
end;

procedure TfrmEntriNilai.tvIndikatorClick(Sender: TObject);
var
  ndk: TTreeNode;
  Node: TTreeNode;
begin
  inherited;
  Node := tvIndikator.Selected;
  TabPage.Visible := true;

  if (Nx <> Node) and (btnSimpan.Enabled) then
  begin
    if cmsgtanya('Nilai Indikator belum disimpan.'#13
                 + 'Apakah Anda Akan Menyimpannya ?') = mrYes then
    btnSimpanClick(sender) else
    btnSimpan.Enabled := false;
  end;

  if (Nx <> Node) and (btnSimpan.Enabled) and (Nx.Level = 0) then
  begin
    if cmsgtanya('Nilai Absensi belum disimpan.'#13
                 + 'Apakah Anda Akan Menyimpannya ?') = mrYes then
    SaveAbsensi else
    btnSimpan.Enabled := false;
  end;

  case Node.Level of
    0 : begin
          edKomp.Text        := '';
          edHB.Text          := '';
          edIndi.Text        := '';
          TabPage.ActivePage := TabBlank;
          tabBlankShow;
          SetButtonPrint('Absensi', true);
        end;

    1 : begin
          edKomp.Text        := TPDataTV(Node.Data).Text;
          edHB.Text          := '';
          edIndi.Text        := '';
          TabPage.ActivePage := TabKomp;
          tabKompShow;
          SetButtonPrint('Nilai Kompetensi', true);
        end;
    2 : begin
          edHB.Text          := TPDataTV(Node.Data).Text;
          ndk                := Node.Parent;
          edKomp.Text        := TPDataTV(ndk.Data).Text;
          edIndi.Text        := '';
          TabPage.ActivePage := TabHB;
          TabHBShow;
          SetButtonPrint('Nilai Capaian Perkembangan', true);
        end;
    3 : begin
          edIndi.Text        := TPDataTV(Node.Data).Text;
          ndk                := Node.Parent;
          edHB.Text          := TPDataTV(ndk.Data).Text;
          ndk                := ndk.Parent;
          edKomp.Text        := TPDataTV(ndk.Data).Text;
          TabPage.ActivePage := TabIndikator;
          TabIndikatorShow;
          SetButtonPrint('Nilai Indikator', true);
        end;
  end;
  ShowActiveNodeText;
end;

procedure TfrmEntriNilai.sgIndiGetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
var
  x: Integer;
begin
  inherited;
  x := TadvColumnGrid(Sender).FixedRows - 1;
  if (ARow > x) and (ACol = 0) then Value := IntToStr(ARow - x);
end;

procedure TfrmEntriNilai.sgIndiKeyPress(Sender: TObject; var Key: Char);
var
  ACol: Integer;
  ARow: Integer;
begin
  inherited;
  ARow := sgIndi.Row;
  ACol := sgIndi.Col;
  Nx   := tvIndikator.Selected;
  btnSimpan.Enabled := true;
  if not (Key in ['0'..'4', #8, #13]) then Key := #0;
  if Key  in ['0'..'4'] then
  sgIndi.Cells[ACol, ARow] := Key;
  if (length(sgIndi.Cells[ACol, ARow]) = 1) and (Key in ['0'..'4']) then
  Key := #0;


  if Key <> #13 then exit;
  if (ACol in [6, 7]) and (ARow = sgIndi.RowCount - 1) then exit;

  if ACol in [6, 7] then
  begin
    sgIndi.Col := 4;
    sgIndi.Row := ARow + 1;
  end else sgIndi.Col := ACol + 1;
end;

procedure TfrmEntriNilai.btnSimpanClick(Sender: TObject);
var
  idx: Integer;
begin
  inherited;
  if Nx = nil then exit;
  if Nx.Level = 3 then
  begin
    idx := TPDataTV(Nx.Data).index;
    SaveIndikator(idx);
  end;
  if Nx.Level = 0 then
  SaveAbsensi;
end;

function TfrmEntriNilai.GetNilaiIndikator(zqr: TZQuery; Field: String;
          Length: integer): String;
var
  str: string;
  int: Real;
begin
  str := FieldToStr(zqr, Field);
  int := StrToFloatDef(str, -1);
  if int  < 0 then
  result := '' else
  result := format('%.' + format('%dn', [Length]), [int]);
end;

procedure TfrmEntriNilai.HitungRata2HB(ARow: Integer);
var
  qtemp: TZQuery;
  str: string;
  c: string;
  b: Real;
  a: Real;
  i: Integer;
  y: Real;
  z: Real;
  x: Integer;
begin
  x     := 0;
  y     := 0;
  a     := 0;
  qtemp := NewZQuery;

  for i := 4 to sgKomp.ColCount - 4 do
  begin
    if (i mod 2) = 0 then
    if StrToFloatDef(sgKomp.Cells[i, ARow], -1) <> -1 then
    begin
      inc(x);
      y := y + StrToFloatDef(sgKomp.Cells[i,     ARow], -1);
      a := a + StrToFloatDef(sgKomp.Cells[i + 1, ARow], -1);
    end;
  end;

  if x <> 0 then
  begin
    z := y / x;
    b := a / x;

    str := 'select symbol_char from tbsymbol where symbol_min < :nil1 and '
           + 'symbol_max >= :nil2';
    qtemp.SQL.Text := str;
    qtemp.ParamByName('nil1').AsFloat := b;
    qtemp.ParamByName('nil2').AsFloat := b;
    if ErrorExecQuery(qtemp) then exit;
    c := FieldToStr(qtemp, 'symbol_char');


    sgKomp.Cells[sgKomp.ColCount - 3, ARow] := format('%.2n', [z]);
    sgKomp.Cells[sgKomp.ColCount - 2, ARow] := format('%.2n', [b]);
    sgKomp.Cells[sgKomp.ColCount - 1, ARow] := c;
  end else
  begin
    sgKomp.Cells[sgKomp.ColCount - 3, ARow] := '';
    sgKomp.Cells[sgKomp.ColCount - 2, ARow] := '';
    sgKomp.Cells[sgKomp.ColCount - 1, ARow] := '';
  end;
  qtemp.Free;
end;

procedure TfrmEntriNilai.HitungRata2Indikator(ARow: integer);
var
  str: string;
  qtemp: TZQuery;
  i: Integer;
  y: Real;
  z: Real;
  x: Integer;
begin
  x := 0;
  y := 0;

  for i := 4 to sgHB.ColCount - 4 do
  begin
    if StrToFloatDef(sgHB.Cells[i, ARow], -1) <> -1 then
    begin
      inc(x);
      y := y + StrToFloatDef(sgHB.Cells[i, ARow], -1);
    end;
  end;

  if x <> 0 then
  begin
    qtemp := NewZQuery;
    z   := y / x;
    str := 'select symbol_char from tbsymbol where symbol_min < :nil1 and '
           + 'symbol_max >= :nil2';
    qtemp.SQL.Text := str;
    qtemp.ParamByName('nil1').AsFloat := z * fact;
    qtemp.ParamByName('nil2').AsFloat := z * fact;
    if ErrorExecQuery(qtemp) then exit;

    sgHB.Cells[sgHB.ColCount - 3, ARow] := format('%.2n', [z]);
    sgHB.Cells[sgHB.ColCount - 2, ARow] := format('%.2n', [z * fact]);
    sgHB.Cells[sgHB.ColCount - 1, ARow] := FieldToStr(qtemp, 'symbol_char');
    qtemp.free;
  end else
  begin
    sgHB.Cells[sgHB.ColCount - 3, ARow] := '';
    sgHB.Cells[sgHB.ColCount - 2, ARow] := '';
    sgHB.Cells[sgHB.ColCount - 1, ARow] := '';
  end;
end;

procedure TfrmEntriNilai.InsertParameterNilai(zqr: TZQuery; ARow: Integer);
var
  rat2: Real;
  nil3: Integer;
  nil2: Integer;
  nil1: Integer;
begin
  nil1 := StrToIntDef(sgIndi.Cells  [4, ARow], -1);
  nil2 := StrToIntDef(sgIndi.Cells  [5, ARow], -1);
  nil3 := StrToIntDef(sgIndi.Cells  [6, ARow], -1);
  rat2 := StrToFloatDef(sgIndi.Cells[8, ARow], -1);

  zqr.ParamByName('nil1').AsInteger := nil1;
  zqr.ParamByName('nil2').AsInteger := nil2;
  zqr.ParamByName('nil3').AsInteger := nil3;
  zqr.ParamByName('rat2').AsFloat   := rat2;
end;

procedure TfrmEntriNilai.ProsesRekap;
var
  rt2: Real;
  pic: string;
  sym: string;
  rtemp: TZQuery;
  idy: Integer;
  idx: Integer;
  str: string;
  qtemp: TZQuery;
  i: Integer;
  sis: string;
begin

  qtemp := NewZQuery;
  rtemp := NewZQuery;

  //RekapIndikator;
  for i := 1 to sgIndi.RowCount - 1 do
  begin
    sis := sgIndi.Cells[1, i];
    str := 'SELECT i.hb_id, avg(rata2) as rata from tbnilai n, tbindikator i '
           + 'where n.indikator_id=i.indikator_id and siswa_code=:code '
           + 'and rata2 > 0 group by i.hb_id';

    zqr.SQL.Text := str;
    zqr.ParamByName('code').AsString := sis;
    if ErrorExecQuery(zqr) then exit;

    while not zqr.Eof do
    begin
      idx := FieldToInt(zqr, 'hb_id');
      str := 'select * from tbrekapindi where siswa_code=:code and hb_id=:idx';
      qtemp.SQL.Text := str;
      qtemp.ParamByName('code').AsString := sis;
      qtemp.ParamByName('idx').AsInteger := idx;
      if ErrorExecQuery(qtemp) then exit;

      rt2 := FieldToFloat(zqr, 'rata');

      str := 'select symbol_char, symbol_pic from tbsymbol where '
             + 'symbol_min < :nil1 and symbol_max >= :nil2';
      rtemp.SQL.Text := str;
      rtemp.ParamByName('nil1').AsFloat := rt2 * fact;
      rtemp.ParamByName('nil2').AsFloat := rt2 * fact;
      if ErrorExecQuery(rtemp) then exit;
      sym := FieldToStr(rtemp, 'symbol_char');
      pic := FieldToStr(rtemp, 'symbol_pic');

      if qtemp.IsEmpty then
      begin
        idy := LastID('rekapindi_id', 'tbrekapindi') + 1;

        str := 'insert into tbrekapindi values(:auto, :hbid, :sis, :rat, '
               + ':scr, :sym, :pic)';
        qtemp.SQL.Text := str;
        qtemp.ParamByName('hbid').AsInteger := idx;
        qtemp.ParamByName('sis').AsString   := sis;
        qtemp.ParamByName('rat').AsFloat    := rt2;
      end else
      begin
        idy := FieldToInt(qtemp, 'rekapindi_id');
        str := 'update tbrekapindi set indikator_rata2=:rat, hb_score=:scr,'
               + 'hb_symbol=:sym, symbol_pic=:pic where rekapindi_id=:auto';
        qtemp.SQL.Text := str;
      end;
      qtemp.ParamByName('auto').AsInteger := idy;
      qtemp.ParamByName('rat').AsFloat    := rt2;
      qtemp.ParamByName('scr').AsFloat    := rt2 * fact;
      qtemp.ParamByName('sym').AsString   := sym;
      qtemp.ParamByName('pic').AsString   := pic;
      if ErrorExecQuery(qtemp) then exit;
      zqr.Next;
    end;
  end;

  //RekapHB;
  for i := 1 to sgHB.RowCount - 1 do
  begin
    sis := sgHB.Cells[1, i];
    str := 'SELECT  kompetensi_id, Avg(indikator_rata2) AS rata '
           + 'FROM tbrekapindi ri, tbhb h where ri.hb_id=h.hb_id and '
           + 'siswa_code=:code group by  kompetensi_id';
    zqr.SQL.Text := str;
    zqr.ParamByName('code').AsString := sis;
    if ErrorExecQuery(zqr) then exit;

    while not zqr.Eof do
    begin
      idx := FieldToInt(zqr, 'kompetensi_id');
      str := 'select * from tbrekaphb where siswa_code=:code and '
             + 'kompetensi_id=:idx';
      qtemp.SQL.Text := str;
      qtemp.ParamByName('code').AsString := sis;
      qtemp.ParamByName('idx').AsInteger := idx;
      if ErrorExecQuery(qtemp) then exit;

      rt2 := FieldToFloat(zqr, 'rata');
      str := 'select symbol_char, symbol_pic from tbsymbol where '
             + 'symbol_min < :nil1 and symbol_max >= :nil2';
      rtemp.SQL.Text := str;
      rtemp.ParamByName('nil1').AsFloat := rt2 * fact;
      rtemp.ParamByName('nil2').AsFloat := rt2 * fact;
      if ErrorExecQuery(rtemp) then exit;
      sym := FieldToStr(rtemp, 'symbol_char');
      pic := FieldToStr(rtemp, 'symbol_pic');

      if qtemp.IsEmpty then
      begin
        str := 'insert into tbrekaphb values(:auto, :kpid, :sis, :rat, '
               + ':sym, :pic, "")';
        qtemp.SQL.Text := str;
        idy := LastID('rekaphb_id', 'tbrekaphb') + 1;
        qtemp.ParamByName('auto').AsInteger := idy;
        qtemp.ParamByName('kpid').AsInteger := idx;
        qtemp.ParamByName('sis').AsString   := sis;
      end else
      begin
        idy := FieldToInt(qtemp, 'rekaphb_id');
        str := 'update tbrekaphb set hb_rata2=:rat, kompetensi_symbol=:sym ,'
               + 'kompetensi_pic=:pic where rekaphb_id=:auto';
        qtemp.SQL.Text := str;
        qtemp.ParamByName('auto').AsInteger := idy;
      end;
      qtemp.ParamByName('rat').AsFloat    := rt2;
      qtemp.ParamByName('sym').AsString   := sym;
      qtemp.ParamByName('pic').AsString   := pic;
      if ErrorExecQuery(qtemp) then exit;
      zqr.Next;
    end;
  end;
  qtemp.Free;
  rtemp.Free;
end;

procedure TfrmEntriNilai.SaveAbsensi;
var
  alp: Integer;
  ijn: Integer;
  skt: Integer;
  sis: string;
  str: string;
  i: Integer;
begin
  for i := 1 to sgBlank.RowCount - 1 do
  begin
    sis := sgBlank.Cells[1, i];
    skt := StrToIntDef(sgBlank.Cells[4, i], 0);
    ijn := StrToIntDef(sgBlank.Cells[5, i], 0);
    alp := StrToIntDef(sgBlank.Cells[6, i], 0);
    str := 'update tbsiswa set siswa_ijin=:ijn, siswa_sakit=:skt,'
           + 'siswa_alpha=:alp where siswa_code=:sis';
    zqr.SQL.Text := str;
    zqr.Params[0].AsInteger := ijn;
    zqr.Params[1].AsInteger := skt;
    zqr.Params[2].AsInteger := alp;
    zqr.Params[3].AsString  := sis;
    if ErrorExecQuery(zqr) then exit;
  end;
  cmsgInfo('Berhasil Menyimpan Absensi');
  btnSimpan.Enabled := false;
end;

procedure TfrmEntriNilai.SaveIndikator(idx: integer);
var
  qtemp: TZQuery;
  idz: Integer;
  str: string;
  idy: Integer;
  sis: string;
  i: Integer;
begin
  qtemp := NewZQuery;

  for i := 1 to sgIndi.RowCount - 1 do
  begin
    sis := sgIndi.Cells[1, i];
    str := 'select nilai_id from tbNilai where siswa_code=:code and '
           + 'indikator_id=:id';
    zqr.SQL.Text := str;
    zqr.ParamByName('id').AsInteger  := idx;
    zqr.ParamByName('code').AsString := sis;
    if ErrorExecQuery(zqr) then exit;
    idy := FieldToInt(zqr, 'nilai_id');

    if idy = 0 then
    str := 'insert into tbNilai values(:id, :code, :indi, :nil1, :nil2, '
           + ':nil3, :rat2)' else
    str := 'update tbnilai set nilai1=:nil1, nilai2=:nil2, nilai3=:nil3, '
           + 'rata2=:rat2 where nilai_id=:id';
    qtemp.SQL.Text := str;

    if idy = 0 then
    begin
      idz := LastID('nilai_id', 'tbnilai') + 1;
      qtemp.ParamByName('id').AsInteger   := idz;
      qtemp.ParamByName('code').AsString  := sis;
      qtemp.ParamByName('indi').AsInteger := idx;
    end else
    begin
      qtemp.ParamByName('id').AsInteger := idy;
    end;
    InsertParameterNilai(qtemp, i);
    if ErrorExecQuery(qtemp) then exit;
  end;
  ProsesRekap;
  cmsgInfo('Data Nilai Indikator Berhasil Disimpan');
  btnSimpan.Enabled := false;
  qtemp.Free;
end;

procedure TfrmEntriNilai.ShowActiveNodeText;
var
  str: string;
  Node: TTreeNode;
begin
  str  := str;
  Node := tvIndikator.Selected;

  while Node <> Nd0 do
  begin
    str  := Node.Text + ' --> ' + str;
    Node := Node.Parent;
  end;
  if RightStr(str, 4) = '--> ' then
  str := copy(str, 1, length(str) - 4);
  Label5.Caption := str;
end;

procedure TfrmEntriNilai.tabBlankShow;
var
  str: string;
  sis: string;
  i: Integer;
begin
  inherited;
  SetProgressBar(sgBlank.RowCount - 1);
  for i := 1 to sgBlank.RowCount - 1 do
  begin
    sis := sgBlank.Cells[1, i];
    str := 'select siswa_sakit, siswa_ijin, siswa_alpha, (siswa_sakit + '
           + 'siswa_ijin + siswa_alpha) as jum  from tbsiswa '
           + 'where siswa_code=:code';
    zqr.SQL.Text := str;
    zqr.Params[0].AsString := sis;
    if ErrorExecQuery(zqr) then exit;
    sgBlank.Cells[4, i] := FieldToStr(zqr, 'siswa_sakit');
    sgBlank.Cells[5, i] := FieldToStr(zqr, 'siswa_ijin');
    sgBlank.Cells[6, i] := FieldToStr(zqr, 'siswa_alpha');
    sgBlank.Cells[7, i] := FieldToStr(zqr, 'jum');
    prb.Position := i;
    Application.ProcessMessages;
  end;
  prb.Visible := false;
end;

procedure TfrmEntriNilai.TabIndikatorShow;
var
  str: string;
  sis: string;
  Node: TTreeNode;
  idx: Integer;
  i: Integer;
begin
  inherited;
  Node := tvIndikator.Selected;
  if Node = nil then exit;

  if Node.Level <> 3 then exit;

  idx := TPDataTV(Node.Data).index;
  SetProgressBar(sgIndi.RowCount - 1);
  for i := 1 to sgIndi.RowCount - 1 do
  begin
    sis := sgIndi.Cells[1, i];
    str := format('select * from tbNilai where siswa_code="%s" and '
                  + 'indikator_id=%d', [sis, idx]);
    zqr.SQL.Text := str;
    if ErrorExecQuery(zqr) then exit;
    sgIndi.Cells[4, i] := GetNilaiIndikator(zqr, 'nilai1', 0);
    sgIndi.Cells[5, i] := GetNilaiIndikator(zqr, 'nilai2', 0);
    sgIndi.Cells[6, i] := GetNilaiIndikator(zqr, 'nilai3', 0);
    sgIndi.Cells[7, i] := GetNilaiIndikator(zqr, 'rata2',  2);
    sgIndi.Cells[8, i] := FieldToStr(zqr, 'rata2');
    prb.Position := i;
    Application.ProcessMessages;
  end;
  prb.Visible := false;
end;

procedure TfrmEntriNilai.TabHBShow;
var
  str: string;
  sis: string;
  indx: Integer;
  ANode: TTreeNode;
  j: Integer;
  cnt: Integer;
  i: Integer;
  Node: TTreeNode;
begin
  inherited;
  Node := tvIndikator.Selected;
  if Node = nil then exit;

  cnt := Node.Count;
  sgHB.ColCount := 7 + cnt;
  sgHB.Columns[4 + cnt].Header          := 'Rata2';
  sgHB.Columns[4 + cnt].HeaderFont      := sgHB.Columns[0].HeaderFont;
  sgHB.Columns[4 + cnt].Width           := 60;
  sgHB.Columns[4 + cnt].HeaderAlignment := taCenter;
  sgHB.Columns[4 + cnt].Alignment       := taRightJustify;

  sgHB.Columns[5 + cnt].Header          := 'Nilai';
  sgHB.Columns[5 + cnt].HeaderFont      := sgHB.Columns[0].HeaderFont;
  sgHB.Columns[5 + cnt].Width           := 60;
  sgHB.Columns[5 + cnt].HeaderAlignment := taCenter;
  sgHB.Columns[5 + cnt].Alignment       := taRightJustify;

  sgHB.Columns[6 + cnt].Header          := 'Huruf';
  sgHB.Columns[6 + cnt].HeaderFont      := sgHB.Columns[0].HeaderFont;
  sgHB.Columns[6 + cnt].Width           := 60;
  sgHB.Columns[6 + cnt].HeaderAlignment := taCenter;
  sgHB.Columns[6 + cnt].Alignment       := taCenter;

  for i := 4 to  sgHB.ColCount - 4 do
  begin
    sgHB.Columns[i].Header          := Format('Indi %d', [i-3]);
    sgHB.Columns[i].HeaderFont      := sgHB.Columns[0].HeaderFont;
    sgHB.Columns[i].Width           := 45;
    sgHB.Columns[i].HeaderAlignment := taCenter;
    sgHB.Columns[i].Alignment       := taRightJustify;

    ANode   := Node.Item[i - 4];
    PDataTV := TPDataTV(ANode.Data);
    indx    := PDataTV.Index;
    SetProgressBar(sgHB.RowCount - 1);
    for j := 1 to sgHB.RowCount - 1 do
    begin
      sis := sgHB.Cells[1, j];
      str := 'select rata2 from tbnilai where siswa_code=:sis and '
             + 'indikator_id=:id';
      zqr.SQL.Text := str;
      zqr.ParamByName('sis').AsString  := sis;
      zqr.ParamByName('id').AsInteger  := indx;
      if ErrorExecQuery(zqr) then exit;
      sgHB.Cells[i, j] := GetNilaiIndikator(zqr, 'rata2', 2);
      HitungRata2Indikator(j);
      prb.Position := i;
      Application.ProcessMessages;
    end;
    prb.Visible := false;
  end;
end;

procedure TfrmEntriNilai.tabKompShow;
var
  scr: string;
  rt2: string;
  str: string;
  sis: string;
  indx: Integer;
  ANode: TTreeNode;
  j: Integer;
  cnt: Integer;
  i: Integer;
  Node: TTreeNode;
begin
  inherited;
  Node := tvIndikator.Selected;
  if Node = nil then exit;

  cnt := Node.Count;
  j   := 4 + cnt * 2;
  sgKomp.ColCount := 7 + cnt * 2;
  for i := 4 to sgKomp.ColCount - 1 do
  sgKomp.SplitCells(i, 0);

  sgKomp.Columns[j].Header          := 'Rata2';
  sgKomp.Columns[j].HeaderFont      := sgKomp.Columns[0].HeaderFont;
  sgKomp.Columns[j].Width           := 40;
  sgKomp.Columns[j].HeaderAlignment := taCenter;
  sgKomp.Columns[j].Alignment       := taRightJustify;
  sgKomp.Cells[j, 1]                := '';
  sgKomp.MergeCells(j, 0, 2, 1);
  sgKomp.Cells[j, 1]                := 'Score';
  sgKomp.Cells[j + 1, 1]            := 'Nilai';

  inc(j, 2);
  sgKomp.Columns[j].Header          := 'Huruf';
  sgKomp.Columns[j].HeaderFont      := sgKomp.Columns[0].HeaderFont;
  sgKomp.Columns[j].Width           := 40;
  sgKomp.Columns[j].HeaderAlignment := taCenter;
  sgKomp.Columns[j].Alignment       := taCenter;
  sgKomp.Cells[j, 1]                := '';
  sgKomp.MergeCells(j, 0, 1, 2);

  SetProgressBar(cnt);
  for i := 1 to cnt do
  begin
    j := 2 * i + 2;
    sgKomp.Columns[j].Header          := Format('CP %d', [i]);
    sgKomp.Columns[j].HeaderFont      := sgKomp.Columns[0].HeaderFont;
    sgKomp.Columns[j].Width           := 40;
    sgKomp.Columns[j].HeaderAlignment := taCenter;
    sgKomp.Columns[j].Alignment       := taRightJustify;
    sgKomp.Cells[j, 1]                := 'Score';
    sgKomp.Cells[j + 1, 1]            := 'Nilai';
    sgKomp.MergeCells(j, 0, 2, 1);
    prb.Position := i;
    Application.ProcessMessages;
  end;

  SetProgressBar(cnt - 1);
  for i := 0 to  cnt - 1 do
  begin
    ANode   := Node.Item[i];
    PDataTV := TPDataTV(ANode.Data);
    indx    := PDataTV.Index;
    for j := 2 to sgKomp.RowCount - 1 do
    begin
      sis := sgKomp.Cells[1, j];
      str := 'SELECT indikator_rata2, hb_score, kompetensi_narasi FROM '
             + 'tbrekapindi ri,  tbrekaphb rh, tbhb h WHERE ri.hb_id =:id '
             + 'and ri.siswa_code=:sis and ri.hb_id=h.hb_id and '
             + 'rh.kompetensi_id=h.kompetensi_id and rh.siswa_code='
             + 'ri.siswa_code';

      zqr.SQL.Text := str;
      zqr.ParamByName('sis').AsString := sis;
      zqr.ParamByName('id').AsInteger := indx;
      if ErrorExecQuery(zqr) then exit;

      rt2 := GetNilaiIndikator(zqr, 'indikator_rata2', 2);
      scr := GetNilaiIndikator(zqr, 'hb_score', 2);
      sgKomp.Cells[2 * i + 4, j] := rt2;
      sgKomp.Cells[2 * i + 5, j] := scr;
      HitungRata2HB(j);
    end;
    prb.Position := i;
    Application.ProcessMessages;
  end;
  prb.Visible := false;
end;

procedure TfrmEntriNilai.tvIndikatorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbLeft) and (ssCtrl in Shift) then
  btnSimpanClick(Sender);
end;

procedure TfrmEntriNilai.sgKompGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if ARow in [0, 1] then HAlign := taCenter;
end;

procedure TfrmEntriNilai.sgKompDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  ssx: Integer;
  nnx: Integer;
  iii: Integer;
  hbx: Integer;
  idy: Integer;
  qtemp: TZQuery;
  sis: string;
  str: string;
  kompid: Integer;
  Node: TTreeNode;
begin
  inherited;
  if ARow < 0 then exit;
  Node := tvIndikator.Selected;
  if Node = nil then exit;
  with frmNarasi do
  begin
    sis             := sgKomp.Cells[1, ARow];
    pnSiswa.Caption := format('%s [NIS : %s]', [sgKomp.Cells[3, ARow],
                       sgKomp.Cells[2, ARow]]);
    PDataTV         := TPDataTV(Node.Data);
    pnKomp.Caption  := PDataTV.Text;
    kompid          := PDataTV.index;
    SaveNarasi      := false;

    str := 'select * from tbRekapHB where siswa_code=:sis and '
             + 'kompetensi_id=:id';
    zqr.SQL.Text := str;
    zqr.ParamByName('sis').AsString := sis;
    zqr.ParamByName('id').AsInteger := kompid;
    if ErrorExecQuery(zqr) then exit;
    idy         := FieldToInt(zqr, 'rekaphb_id');
    mmNara.Text := FieldToStr(zqr, 'kompetensi_narasi');

    //tampilkan rekap nilai HB;
    //kolom score : 3, 5, 7, dst...
    //kolom nilai : 4, 6, 8, dst..
    hbx :=  (sgKomp.ColCount - 6) div 2;
    grdRekapHB.RowCount :=  hbx + 2;

    for iii := 1 to hbx do
    begin
      ssx := iii * 2 + 2;
      nnx := ssx + 1;
      grdRekapHB.Cells[0, iii] := format('CP %d', [iii]);
      grdRekapHB.Cells[1, iii] := sgKomp.Cells[ssx, ARow];
      grdRekapHB.Cells[2, iii] := sgKomp.Cells[nnx, ARow];
    end;
    ssx := (hbx + 1) * 2 + 2;
    nnx := ssx + 1;

    grdRekapHB.Cells[0, hbx + 1] := 'Rata2';
    grdRekapHB.Cells[1, hbx + 1] := sgKomp.Cells[ssx, ARow];
    grdRekapHB.Cells[2, hbx + 1] := sgKomp.Cells[nnx, ARow];
    lbHuruf.Caption              := sgKomp.Cells[nnx + 1, ARow];

    ShowModal;
    if SaveNarasi then
    begin
      qtemp := NewZQuery;

      if idy = 0 then
      begin
        str := 'insert into tbRekaphb(rekaphb_id, kompetensi_id, siswa_code,'
               + 'kompetensi_narasi) values(:id, :komid,:code, :nar)';
        qtemp.SQL.Text := str;
        idy := LastID('rekaphb_id', 'tbrekaphb') + 1;
        qtemp.ParamByName('id').AsInteger    := idy;
        qtemp.ParamByName('code').AsString   := sis;
        qtemp.ParamByName('komid').AsInteger := kompid;
      end else
      begin
        str := 'update tbRekaphb set kompetensi_narasi=:nar where '
               + 'rekaphb_id=:id';
        qtemp.SQL.Text := str;
        qtemp.ParamByName('id').AsInteger := idy;
      end;
      qtemp.ParamByName('nar').AsString   := mmNara.Text;
      ErrorExecQuery(qtemp);
      qtemp.Free;
    end;
  end;
end;

procedure TfrmEntriNilai.sgBlankKeyPress(Sender: TObject; var Key: Char);
var
  ACol: Integer;
  ARow: Integer;
begin
  inherited;
  ACol := sgBlank.Col;
  ARow := sgBlank.Row;
  btnSimpan.Enabled := true;
  Nx   := tvIndikator.Selected;
  if not (Key in ['0'..'9', #8, #13]) then Key := #0;
  if Key = #13 then
  begin
    if (ACol in [6, 7]) and (ARow <> sgBlank.RowCount - 1) then
    begin
      sgBlank.Row := ARow + 1;
      sgBlank.Col := 4;
    end;
    if (ACol in [4, 5]) then
    sgBlank.Col := ACol + 1;
  end;
end;

procedure TfrmEntriNilai.sgBlankKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ARow: Integer;
  skt: Integer;
  ijn: Integer;
  alp: Integer;
  tot: Integer;
begin
  inherited;
  ARow := sgBlank.Row;
  skt  := StrToIntDef(sgBlank.Cells[4, ARow], 0);
  ijn  := StrToIntDef(sgBlank.Cells[5, ARow], 0);
  alp  := StrToIntDef(sgBlank.Cells[6, ARow], 0);
  tot  := skt + ijn + alp;
  sgBlank.Cells[7, ARow] := IntToStr(tot);
end;

procedure TfrmEntriNilai.sgIndiKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ARow: Integer;
begin
  inherited;
  ARow := sgIndi.Row;
  HitungRata2Nilai(ARow);
end;

procedure TfrmEntriNilai.sgBlankDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  if ARow = 0 then exit;
  cod := sgBlank.Cells[1, ARow];

  if cod = '' then exit;
  frmKeadaanKesehatan.ShowModal;
end;

procedure TfrmEntriNilai.btnPrintNilaiClick(Sender: TObject);
var
  xxx: Integer;
  xls: TAdvGridExcelIO;
begin
  inherited;
  xxx := tvIndikator.Selected.Level;
  xls := TAdvGridExcelIO(FindComponent(format('xls%d', [xxx])));

  if xls = nil then exit;

  if save.Execute then
  begin
    xls.XLSExport(save.FileName);
  end;
end;

procedure TfrmEntriNilai.SetProgressBar(Length: Integer);
begin
  prb.Visible := true;
  prb.Max     := Length;
end;

end.
