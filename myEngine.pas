unit myEngine;


interface
uses
  Messages,Forms, SysUtils, Variants, Classes,ZDbcMySqlUtils,
  Controls,ZSqlUpdate,CheckLst, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset,ZConnection,commctrl,StdCtrls, IniFiles,ExtCtrls,Graphics,JPEG,
  Dialogs, AdvCGrid, AdvEdBtn, ADODB;

type
  TQueryType = (qtSelect, qtInsert, qtUpdate, qtDelete, qtUnKnown);
  TPGenData  = ^TGenData;
  TGenData   = record
    Index : Integer;
    Data1 : string;
    Data2 : string;
    Data3 : string;
    Data4 : string;
    Data5 : string;
    Data6 : string;
  end;

const
  ACTIVE_ROW = -1;
  LAST_ROW   = -2;
  BulanSet   : array[1..12] of string
             = ('Januari'  , 'Februari', 'Maret'   , 'April',
                'Mei'      , 'Juni'    , 'Juli'    , 'Agustus',
                'September', 'Oktober' , 'November', 'Desember');

  HariSet   : array[1..07] of string
            = ('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis',
               'Jumat',  'Sabtu');


function enkripsi(src: string): string;
function dekripsi(src: string): string;

function  EksekusiSQL(machine: TZQuery ; _SQL: string): boolean;
function  dbTambah(machine: TZQuery ; nmTabel: string ; slField,slValue: TStringList): boolean;
function  dbUpdate(machine: TZQuery ; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
function  dbHapus(machine: TZQuery ; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
function  CariValue(machine: TZQuery ; nmField: string): string;
function  CekVal(const s: string): boolean;
procedure isiCombo(const machine: TZQuery ; nmField1,nmField2: string ; comboBox: TCombobox);
function  cekTanggal(dp: TDateTime): String;
function  formatDuit(duit: Currency): String;
function  FetchCodeCombo(strSource: string ; str_1_Atau_2 : integer): string;

procedure LoadFoto(src: string ; hasil: TImage);
procedure HapusFoto(src: string);
function  ForceCurrency(s: string): string;
function  ForceString(s: string): string;
procedure isiCombo2(const machine: TZQuery ; nmField1,nmField2,nmField3: string ; comboBox: TCombobox);
procedure CariIsiCombo(strSrc: string ; srcCombo: TComboBox ; str_1_Atau_2 : integer);

//otomatisasi
function GetZeroString(s: string ; iLength: integer): string;

//tanggal dan waktu
function  HariIni: string;
function  CekHari(dt: TDateTime): string;
function  TahunIni: String;

//uang...oh...uang
function  formatUang(uang: Currency): String;
function  huruf(x: LongInt): String;
function  terbilang(x: LongInt; style: Byte): String;
function  N3oIsNumber(srcSource: string): boolean;
function  N3oConvertRupiah(strSource: string): string;


//ayo backup.......
function  Log10Crypt(str: string): string;
function  DecodePassword(Pass:String):String;
function  EncodePassword(Pass:String):String;
function  cmsgTanya(aPertanyaan : string): byte;
function  FieldToStr(tb: TZQuery; field: string):string;
function  FieldToInt(tb: TZQuery; field: string):Integer;
function  FieldToFloat(tb: TZQuery; field: string):Real;
function  FieldToPic(tb: TZQuery; field: string): TPicture;
function  FieldToDate(tb: TZQuery; field: string): TDate;
function  PicToBlob(Pic: TPicture): String;
function  ResultQuery(zqr: TZQuery): string;
function  OriginalField(Sql, Field: String): String;
function  SearchQuery(Sql, Field, Text: String): String;
function  GetQueryType(sql: string): TQueryType;

procedure cmsgPerhatian(aPesan : String);
procedure cMsgNotifikasi(aPesan  :String);
procedure cMsgInfo(aPesan  :String);
procedure ClearGrid(AGrid: TAdvColumnGrid);
procedure RemoveLastRow(AGrid: TAdvColumnGrid);
procedure FillGrid(AGrid: TAdvColumnGrid; AStr: String; ACol: Integer;
                   ARow:Integer=ACTIVE_ROW);
procedure CheckCompletion(Form: TForm; AContext: integer);
procedure ClearControl(Form: TForm; ATag: integer; MoreThen: boolean);
procedure FillLastGrid(AGrid: TAdvColumnGrid; AStr: String; ACol: Integer);
procedure HideRowGrid(AGrid: TAdvColumnGrid; ARow: Integer);
procedure RemoveDoubleSpace(var str: String);
procedure AddToCombo(cmb: TComboBox; sKode, sNama: string);
procedure LoadToCombo(cmb: TComboBox; zqr: TZQuery; FKode, FNama: string);
procedure SetStrCombo(cmb: TComboBox; str: string);
procedure WriteConfig(section, Ident, value: string);
procedure GroupingGrid(AGrid: TAdvColumnGrid; ACol: Integer);
procedure AddRow(AGrid: TAdvColumnGrid);
procedure SetFocusControl(Form: TForm; sender: TObject);
procedure DeleteActiveRow(AGrid: TAdvColumnGrid);
procedure SetActiveData1(cbox: TCombobox; AKey: string);
procedure SetActiveText(cbox: TCombobox; AKey: string);

function  GetStrCombo(cmb: TComboBox): string;
function  konversiHari(str: string; status: boolean) : String;
function  konversiBulan(str: string; status: boolean): String;
function  LastID(Field, table: string): Integer;
function  GetIntCombo(cmb: TComboBox): Integer;
function  ReadConfig(section, Ident: string): string;
function  ReadConfigDef(section, Ident, Def: string): string;
function  GridIsEmpty(AGrid: TAdvColumnGrid): boolean;
function  EncryptPassword(str: String): string;
function  DecryptPassword(str: String): string;
function  GetActiveData1(cbox: TCombobox): String;
function  GetIndexOfLike(Astr: String; List: TStrings; StartAt: integer=0): Integer;


//function CekAktifasi(ProServer: TProServer): boolean;

const
  abjad1 = 'zabcdefghij6789012345&*)(-_|\><.,?/;:~`!@#$%^&*KLMNOPQRSTUVWXYZABCDEFGHIJklmnopqrstuvwxy';
  abjad2 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()_-+=|\<>,.?/:;';

var MyiniFile            :  TIniFile;
    _SQL, a ,b , c, d ,e :  string;
    Th_Skrg: boolean;
    AppPath: String;
    AppName: String;
    CharSet: string;

implementation

{$IFDEF MSWINDOWS}

uses
  Windows, math, strUtils, ufrmErrorQuery, ComCtrls, ufrmMessage, ufrmlogin;
{$ENDIF}


function  GetIndexOfLike(AStr: String; List: TStrings; StartAt: integer=0): Integer;
var
  str: string;
  i: Integer;
begin
  result := -1;
  for i := StartAt to List.Count - 1 do
  begin
    str := List[i];
    if Copy(str, 1, length(AStr)) = AStr then
    begin
      result := i;
      exit;
    end;
  end;
end;

procedure FillCharSet;
var
  c: Char;
begin
  CharSet := '';
  for c := 'b' to 'z' do
  CharSet := CharSet + c;
  for c := '0' to '9' do
  CharSet := CharSet + c;
  for c := 'A' to 'Z' do
  CharSet := CharSet + c;
end;

procedure SetActiveText(cbox: TCombobox; AKey: string);
begin
  cbox.ItemIndex := cbox.Items.IndexOf(AKey);
end;

function  GetActiveData1(cbox: TCombobox): String;
var
  PGenData: TPGenData;
  idx: Integer;
begin
  result := '';
  idx    := cbox.ItemIndex;
  if idx < 0 then exit;
  PGenData  := TPGenData(cBox.Items.Objects[idx]);
  result    := PGenData.Data1;
end;

procedure SetActiveData1(cbox: TCombobox; AKey: string);
var
  PGenData: TPGenData;
  i: Integer;
begin
  cbox.ItemIndex := -1;
  for i := 0 to cbox.Items.Count - 1 do
  begin
    PGenData  := TPGenData(cBox.Items.Objects[i]);
    if PGenData.Data1 = AKey then
    begin
      cbox.ItemIndex := i;
      exit;
    end;
  end;
end;

procedure SetFocusControl(Form: TForm; sender: TObject);
var
  x: Integer;
  i: Integer;
begin
  x := TComponent(Sender).Tag + 1;
  for i := 0 to Form.ComponentCount - 1 do
  if Form.Components[i].Tag = x then
  begin
    TWinControl(Form.Components[i]).SetFocus;
  end;
end;

function  GetQueryType(sql: string): TQueryType;
var
  posx: Integer;
begin
  result := qtUnKnown;
  sql    := trim(lowercase(sql));
  posx   := pos(' ', sql);
  sql    := trim(copy(sql, 1, posx));

  if sql  = 'select' then
  result := qtSelect;
  if sql  = 'insert' then
  result := qtInsert;
  if sql  = 'update' then
  result := qtUpdate;
  if sql  = 'delete' then
  result := qtDelete;
end;

function  DecryptPassword(str: String): string;
var
  x : integer;
  s : string;
  i : integer;
begin
  Result := '';
  for i := 1 to length(str) do
  begin
    s := IntToStr(ord(str[i]) - 128);
    s := RightStr('0' + s, 2);
    result := result + s;
  end;
  if copy(result, 1, 1) = '0' then
  Delete(result, 1, 1);
  result := ReverseString(result);
  s      := '';
  for i := 1 to length(result) div 3 do
  begin
    x := StrToIntDef(copy(result, i * 3 - 2, 3), 0);
    s := s + char(x);
  end;
  result := s;
end;

function  EncryptPassword(str: String): string;
var
  x: Integer;
  s: string;
  i: Integer;
begin
  result := '';
  s      := '';
  for i := 1 to length(str) do
  begin
    x := ord(str[i]);
    s := RightStr('00' + IntToStr(x), 3);
    result := result + s;
  end;
  result := ReverseString(result);
  if (length(result) mod 2)  = 1 then
  result := '0' + result;
  s := '';
  for i := 1 to (length(result) div 2) do
  begin
    x := StrToIntDef(copy(result, i * 2 - 1, 2), 0);
    s := s + Char(x + 128);
  end;
  result := s;
end;

function  GridIsEmpty(AGrid: TAdvColumnGrid): boolean;
var
  int: Integer;
begin
  int    := AGrid.FixedRows;
  result := AGrid.Cells[1, int] = '';
end;

procedure AddRow(AGrid: TAdvColumnGrid);
var
  x: Integer;
begin
  x := AGrid.FixedRows;
  if AGrid.Cells[1, x] <> '' then
  AGrid.AddRow;
end;

procedure GroupingGrid(AGrid: TAdvColumnGrid; ACol: Integer);
var
  str2: string;
  str1: string;
  i: Integer;
  y: Integer;
  x: Integer;
begin
  x := AGrid.FixedRows;
  y := AGrid.RowCount - 1;
  for i := y downto x do
  begin
    str1 := AGrid.Cells[ACol, i - 1];
    str2 := AGrid.Cells[ACol, i];
    if str1 = str2 then
    AGrid.Cells[ACol, i] := '';
  end;
end;

function  GetIntCombo(cmb: TComboBox): Integer;
begin
  result := StrToIntDef(GetStrCombo(cmb), -1);
end;

function  SearchQuery(Sql, Field, Text: String): String;
var
  ftr: string;
  int: Integer;
begin
  RemoveDoubleSpace(sql);
  int := pos('where', lowercase(sql));
  ftr := format('%s like ', [field]) + '''%' + Text + '%'' ';
  if int > 0 then
  insert(ftr + 'and ', sql, int + 6) else
  begin
    ftr := ' where ' + ftr + ' ';
    int := pos('order by', lowercase(sql));
    if int > 0 then
    insert(ftr, sql, int) else
    sql := sql + ftr;
  end;
  result := sql;
end;

function LastID(Field, table: string): Integer;
var
  zqr: TZQuery;
begin
  zqr := NewZQuery;
  result := 0;
  zqr.SQL.Text := format('select max(%s) as maxid from %s', [Field, Table]);
  if ErrorExecQuery(zqr) then
  begin
    zqr.Free;
    exit;
  end;
  result := FieldToInt(zqr, 'maxid');
end;

procedure HideRowGrid(AGrid: TAdvColumnGrid; ARow: Integer);
begin
   AGrid.RowHeights[ARow] := 0;
end;

procedure SetStrCombo(cmb: TComboBox; str: string);
var
  int : integer;
begin
  int := cmb.Items.IndexOf(str);
  cmb.ItemIndex := int;
end;

function konversiHari(str: string; status: boolean): String;
var int: integer;
    s: string;
begin
   if status then
   begin
      int := StrToInt(str);
      case int of
         1 : Result := 'Senin';
         2 : Result := 'Selasa';
         3 : Result := 'Rabu';
         4 : Result := 'Kamis';
         5 : Result := 'Jumat';
         6 : Result := 'Sabtu';
      else
         Result := 'Minggu';
      end;
   end else
   begin
      if str = 'Senin' then
         s := '1'
      else if str = 'Selasa' then
         s := '2'
      else if str = 'Rabu' then
         s := '3'
      else if str = 'Kamis' then
         s := '4'
      else if str = 'Jumat' then
         s := '5'
      else if str = 'Sabtu' then
         s := '6'
      else
         s := '7';
      Result := s;
   end;
end;

function konversiBulan(str: string; status: boolean): String;
var int: integer;
    s: string;
begin
   if status then
   begin
      int := StrToInt(str);
      case int of
         1 : Result := 'Januari';
         2 : Result := 'Februari';
         3 : Result := 'Maret';
         4 : Result := 'April';
         5 : Result := 'Mei';
         6 : Result := 'Juni';
         7 : Result := 'Juli';
         8 : Result := 'Agustus';
         9 : Result := 'September';
         10 : Result := 'Oktober';
         11 : Result := 'November';
      else
         Result := 'Desember';
      end;
   end else
   begin
      if str = 'Januari' then
         s := '1'
      else if str = 'Februari' then
         s := '2'
      else if str = 'Maret' then
         s := '3'
      else if str = 'April' then
         s := '4'
      else if str = 'Mei' then
         s := '5'
      else if str = 'Juni' then
         s := '6'
      else if str = 'Juli' then
         s := '7'
      else if str = 'Agustus' then
         s := '8'
      else if str = 'September' then
         s := '9'
      else if str = 'Oktober' then
         s := '10'
      else if str = 'November' then
         s := '11'
      else
         s := '12';
      Result := s;
   end;
end;

procedure LoadToCombo(cmb: TComboBox; zqr: TZQuery; FKode, FNama: string);
var
  lst: TStrings;
begin
  cmb.Clear;
  lst := TStringList.Create;
  while not zqr.Eof do
  begin
    cmb.Items.Add(FieldToStr(zqr, FNama));
    if FKode <> '' then
    lst.Add(FieldToStr(zqr, FKode));
    zqr.Next;
  end;
  cmb.Hint := lst.Text;
end;

procedure AddToCombo(cmb: TComboBox; sKode, sNama: string);
var
  lst: TStrings;
begin
  lst := TStringList.Create;
  lst.Text := cmb.Hint;
  lst.Add(sKode);
  cmb.Hint := lst.Text;
  cmb.Items.Add(sNama);
end;

function  GetStrCombo(cmb: TComboBox): String;
var
  lst: TStrings;
  int: integer;
begin
  result := '';
  lst := TStringList.Create;
  lst.Text := cmb.Hint;
  int := cmb.Items.IndexOf(cmb.Text);
  if int < 0 then exit;
  result := lst[int];
end;

procedure CheckCompletion(Form: TForm; AContext: integer);
var i : integer;
  Comp: TComponent;
  str: string;
begin
  str := 'Field %s Harus diisi';
  with Form do
  begin
    for i := 0 to ComponentCount - 1 do
    if TControl(Components[i]).HelpContext = AContext then
    begin
      Comp := Components[i];
      //is TEdit;
      if Comp is TEdit then
      if TEdit(Comp).Text = '' then
      begin
        cmsgPerhatian(format(str, [TEdit(Comp).ImeName]));
        abort;
      end;
      //is TMemo
      if Comp is TMemo then
      if TMemo(Comp).Lines.Text = '' then
      begin
        cmsgPerhatian(format(str, [TMemo(Comp).ImeName]));
        abort;
      end;
      //is TadvEditbtn;
      if Comp is TadvEditbtn then
      if TadvEditbtn(Comp).Text = '' then
      begin
        cmsgPerhatian(format(str, [TadvEditbtn(Comp).ImeName]));
        abort;
      end;
      //is TAdvSmoothCombobox;
      if Comp is TCombobox then
      if TCombobox(Comp).ItemIndex = -1 then
      begin
        cmsgPerhatian(format(str, [TCombobox(Comp).ImeName]));
        abort;
      end;
    end;
  end;
end;


procedure RemoveDoubleSpace(var str: String);
begin
  while pos('  ', str) > 0 do
  Delete(str, pos('  ', str), 1);
end;

function  OriginalField(Sql, Field: String): String;
var
  i: Integer;
  int: Integer;
begin
  sql    := lowercase(sql);
  Field  := lowercase(Field);
  result := lowercase(Field);
  RemoveDoubleSpace(sql);
  int := pos('as ' + Field, sql) + pos('as "' + Field + '"', sql);;
  if int > 0 then
  begin
    Field := '';
    for i := int - 2 downto 1 do
    begin
      if (sql[i] = ' ') or (sql[i] = ',') then break;
      Field := Field + sql[i];
    end;
    Field := ReverseString(Field);
  end;
  result := ' ' + Field + ' ';
end;

procedure FillGrid(AGrid: TAdvColumnGrid; AStr: String; ACol: Integer;
                   ARow:Integer=ACTIVE_ROW);
begin
  if ARow = LAST_ROW   then ARow := AGrid.RowCount - 1;
  if ARow = ACTIVE_ROW then ARow := AGrid.Row;
  AGrid.Cells[ACol, ARow] := AStr;
end;

procedure FillLastGrid(AGrid: TAdvColumnGrid; AStr: String; ACol: Integer);
begin
  FillGrid(AGrid,AStr,ACol,Last_Row);
end;

function  IsEmptyStrings(Strs: TStrings): boolean;
var
  i: Integer;
  s: String;
begin
  s := '';
  for i := 1 to Length(Strs.Text) do
  if not (Strs.Text[i]  in [#13, #10]) then
  s := s + Strs.Text[i];
  result := s = '';
end;

procedure DeleteActiveRow(AGrid: TAdvColumnGrid);
var
  ARow: Integer;
begin
  ARow := AGrid.Row;
  if (ARow = AGrid.FixedRows) and (AGrid.RowCount - 1 = AGrid.FixedRows) then
  AGrid.Rows[ARow].Clear else
  AGrid.RemoveRows(ARow, 1);
end;

procedure RemoveLastRow(AGrid: TAdvColumnGrid);
var
  int, ARow : integer;
begin
  int  := AGrid.FixedRows;
  ARow := AGrid.RowCount - 1;
  if ARow = int then AGrid.Rows[ARow].Clear else
  AGrid.RemoveRows(ARow, 1);
end;

procedure ClearGrid(AGrid: TAdvColumnGrid);
var
  x: Integer;
begin
  x := AGrid.FixedRows;
  AGrid.RemoveRows(x + 1, AGrid.RowCount - x - 1);
  AGrid.Rows[x].Clear;
end;

function  ResultQuery(zqr: TZQuery): string;
var
  str, s1, s2 : string;
  i : Integer;
begin
  str := zqr.SQL.Text;
  for i := 0 to zqr.Params.Count - 1 do
  begin
    s2 := zqr.Params[i].Name;
    if zqr.Params[i].DataType = ftDate then
    s1 := formatDateTime('yyyy-MM-dd', zqr.Params[i].AsDateTime)
    else s1 := zqr.Params[i].AsString;
    s1  := format('''%s''', [s1]);
    str := StringReplace(str, ':' + s2, s1, [rfReplaceAll]);
  end;
  result := str;
end;

function  PicToBlob(Pic: TPicture): String;
var
  Stm: TMemoryStream;
  Buff: String;
begin
  if (Pic = nil) or (Pic.Width = 0) then
  begin
    result := '';
    exit;
  end;
  Stm := TMemoryStream.Create;
  Pic.Graphic.SaveToStream(stm);
  Stm.Seek(0, soFromBeginning);
  SetLength(Buff, Stm.Size);
  Stm.Read(Buff[1], Stm.Size);
  result := Buff;
  Stm.Free;
end;

function  FieldToPic(tb: TZQuery; field: string): TPicture;
var
  PJpeg : TJPEGImage;
begin
  result := TPicture.Create;
  PJpeg  := TJPEGImage.Create;
  try
    PJpeg.Assign(tb.FieldByName(field));
    result.Assign(PJpeg);
  except
  end;
  PJpeg.Free;
  if result.Width = 0 then
  result := nil;
end;

function FieldToInt(tb: TZQuery; field: string):Integer;
var
  str: string;
begin
  str    := tb.FieldByName(field).AsString;
  result := StrToIntDef(Str, 0);
end;

function FieldToFloat(tb: TZQuery; field: string):Real;
begin
  result := tb.FieldByName(field).AsFloat;
end;

function FieldToStr(tb: TZQuery; field: string):string;
begin
  result := tb.FieldByName(field).AsString;
end;

function FieldToDate(tb: TZQuery; field: string):TDate;
begin
  result := tb.FieldByName(field).AsDateTime;
end;

procedure cMsgInfo(aPesan  :String);
begin
  cInformation(aPesan);
end;

procedure cMsgPerhatian(aPesan : String);
begin
  cWarning(aPesan);
end;

procedure cMsgNotifikasi(aPesan  :String);
begin
  cNotification(aPesan);
end;

function cmsgTanya(aPertanyaan : string): byte;
begin
  result := cConfirmation(aPertanyaan);
end;

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

function Log10Crypt(str: string): string;
var i: Integer;
    s: string;
    r: real;
begin
  result := '';
  for i := 1 to length(str) do
  begin
    r := frac(log10(ord(str[i])));
    s := format('%.5n', [r]);
    s := copy(s, 3, length(s));
    result := result + s;
  end;
end;

//==============KONVERSI GAMBAR===============================================


//uang...oh...uang
function formatUang(uang: Currency): String;
begin
   Result := FormatCurr('"Rp. ",#000",00',uang);
end;

function N3oIsNumber(srcSource: string): boolean;
begin
  result := StrToIntDef(srcSource, -1) = -1;
end;

function N3oConvertRupiah(strSource: string): string;
var
    i,iStep: integer;
    sResult: string;
begin
iStep   := 0;

if not(N3oIsNumber(strSource)) then
  begin
    //N3odlgError('''' + strSource + '''' + ' is not valid a integer value.');
    exit;
  end;

result  := '';
for i := Length(strSource) downto 1 do
  begin
    if iStep > 2 then
      begin
        sResult := strSource[i] + '.' + sResult;
        iStep := 0;
      end
    else
      sResult := strSource[i] + sResult;

    iStep := iStep + 1;
  end;
result := sResult + ',00';     
end;
//===========================================================================
//make csv
function ForceTanggal(s: string): string;
var
    sResult: TDateTime;
begin
if TryStrToDate(s,sResult) then
  result := CekTanggal(sResult)
else
  result := s;
end;

function makeCSV(Machine: TZQuery;tbName: string): string;
var
    _SQL: string;
    sField,sValue: array of string;
    i,x: integer;
    H: string;
    strField: string;
    sHasil: TStringList;
    s: string;

begin
  sHasil := TStringList.Create;
  try
    H := #39;
    _SQL := 'DESC ' + tbName;
    EksekusiSQL(machine,_SQL);
    SetLength(sField,machine.RecordCount);
    i := 0;
    while not(machine.Eof) do
    begin
      sField[i] := CariValue(machine,'Field');
      i := i + 1;
      machine.Next;
    end;

    //bentuk csv kolom
    for i:=Low(sField) to high(sField) do
    begin
      strField := strField + H + sField[i] + H + ',';
    end;
    strField := Copy(strField,1,Length(strField) - 1);

    _SQL := 'SELECT * FROM ' + tbName;
    EksekusiSQL(machine,_SQL);
    SetLength(sValue,machine.RecordCount);
    i := 0;
    while not(machine.Eof) do
    begin
      for x := Low(sField) to high(sField) do
      begin
        s := ForceTanggal(CariValue(machine,sField[x]));
        sValue[i] := sValue[i] + H + s + H + ', ';
      end;
      sValue[i] := Copy(sValue[i],1,Length(sValue[i]) - 2);
      //ShowMessage(sValue[i]);
      i := i + 1;
      machine.Next;
    end;

    //bentuk csv
    for i := Low(sValue) to high(sValue) do
    begin
      sHasil.Add(sValue[i]);
    end;
    result := sHasil.Text;
  finally
   sHasil.Free;
  end;
end;

function huruf(x: LongInt): String;
var angka : array of String;
    tmp: string;
begin
   SetLength(angka, 12);
   angka[0] := '';
   angka[1] := 'Satu ';
   angka[2] := 'Dua ';
   angka[3] := 'Tiga ';
   angka[4] := 'Empat ' ;
   angka[5] := 'Lima ';
   angka[6] := 'Enam ';
   angka[7] := 'Tujuh ';
   angka[8] := 'Delapan ';
   angka[9] := 'Sembilan ';
   angka[10]:= 'Sepuluh ';
   angka[11]:= 'Sebelas ';

   tmp := '';
   if x < 12 then
      tmp := ' ' + angka[x]
   else if (x <20) then
      tmp := huruf(x - 10) + 'Belas '
   else if (x <100) then
      tmp := huruf(x div 10) + 'Puluh ' + huruf(x mod 10)
   else if (x <200) then
      tmp := ' Seratus' + huruf(x - 100)
   else if (x <1000) then
      tmp := huruf(x div 100) + 'Ratus ' + huruf(x mod 100)
   else if (x <2000) then
      tmp := ' Seribu' + huruf(x - 1000)
   else if (x <1000000) then
      tmp := huruf(x div 1000) + 'Ribu ' + huruf(x mod 1000)
   else if (x <1000000000) then
      tmp := huruf(x div 1000000) + 'Juta ' + huruf(x mod 1000000)
   else if (x <1000000000000) then
      tmp := huruf(x div 1000000000) + 'Milyar ' + huruf(x mod 1000000000)
   else if (x <1000000000000000) then
      tmp := huruf(x div 1000000000000) + 'Trilyun ' + huruf(x mod 1000000000000)
   else tmp := 'Segitu ';
      Result := tmp;
end;

function terbilang(x: LongInt; style: Byte): String;
var hasil: String;
begin
   if (x<0) then
      hasil := 'Minus '+ huruf(x)
   else
      hasil := huruf(x);
   if hasil <> '' then hasil := hasil+'Rupiah ';
   case style of
      1 : hasil := UpperCase(hasil);
      2 : hasil := LowerCase(hasil);
   end;
   Result := hasil;
end;


//=======================================================================================================================================================

//========================================================================================================================================

function ROL(X: LongWord; Count: Integer): LongWord;
{$IFDEF PUREPASCAL}
begin
  Result := (X shl Count) or (X shr (32 - Count));
end;
{$ELSE}
asm
        MOV     ECX,EDX
        ROL     EAX,CL
end;
{$ENDIF}

type
  MD5Iters = 0..63;

var
  k: array[MD5Iters] of Integer;
  T: array[MD5Iters] of LongWord;
  s: array[MD5Iters] of Integer;

procedure InitLUTs;
const
  A: array[0..15] of Integer =
    (
      7, 12, 17, 22,
      5,  9, 14, 20,
      4, 11, 16, 23,
      6, 10, 15, 21
    );
var
  I: Integer;
begin
  for I := 0 to 63 do
  begin
    case I of
      0..15: k[I] := I;
      16..31: k[I] := (5 * I + 1) and $f;
      32..47: k[I] := (3 * I + 5) and $f;
      48..63: k[I] := (7 * I) and $f;
    end;
    T[I] := Trunc(Abs(Sin(I + 1)) * $100000000);
    s[I] := A[I shr 2 and $c or I and $3];
  end;
end;

//========================================================================================================================================
function Encrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) + CrypTint);
  Result := s2;
end;

function Decrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) - cryptint);
  Result := s2;
end;

function enkripsi(src: string): string;
begin
  result:=Encrypt(src,711754);
end;

function dekripsi(src: string): string;
begin
  result:=Decrypt(src,711754);
end;


function BukaEnkrip(s: String): String;
var i,j : Byte;
    kalimat1,kalimat2,x : String;
begin
   kalimat1 := s;
   kalimat2 := '';
   for i := 1 to Length(kalimat1) do begin
       x := '';
       x := kalimat1[i];
       for j := 1 to 88 do
          if kalimat1[i] = abjad1[j] then x := abjad2[j];
       kalimat2 := kalimat2 + x;
   end;
   Result := kalimat2;
end;


function EksekusiSQL(machine: TZQuery; _SQL: string): boolean;
begin
  machine.SQL.Text := _SQL;
  result := not ErrorExecQuery(machine);
end;

procedure CariIsiCombo(strSrc: string ; srcCombo: TComboBox ; str_1_Atau_2 : integer);
var
    i: integer;
    strCombo: string;
begin
for i := 0 to srcCombo.Items.Count - 1 do
  begin
    strCombo := FetchCodeCombo(srcCombo.Items.Strings[i],str_1_Atau_2 );
    if Trim(LowerCase(strSrc)) = Trim(LowerCase(strCombo)) then
      begin
        srcCombo.ItemIndex := i;
        exit;
      end;
  end;

end;

function dbTambah(machine: TZQuery ; nmTabel: string ; slField,slValue: TStringList): boolean;
var sField,sValue: string;
  	iField,iValue: integer;
	 _SQL: string;
begin
  _SQL:='INSERT INTO ' + nmTabel + '(';
  for iField:=0 to slField.Count - 1 do
	begin
		  sField := sField + slField[iField];
		sField := sField + ',';
	end;
  sField:=Copy(sField,0,Length(sField) - 1) + ')VALUES(';

  for iValue:=0 to slValue.Count - 1 do
	begin
		sValue := sValue + '"' + slValue[iValue] + '"';
		sValue := sValue + ',';
	end;
  sValue:=Copy(sValue,0,Length(sValue) - 1) + ')';
  _SQL:=_SQL + sField + sValue;
  result:=EksekusiSQL(machine,_SQL);
end;

function dbUpdate(machine: TZQuery ; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
var
	_SQL,s: string;
	i     : integer;
begin
  _SQL:='UPDATE ' + nmTabel + ' SET ';
  for i:=0 to slField.Count - 1 do
	begin
    try
		  s := s + slField[i] + '="' + slValue[i] + '",';
    except
    end;
	end;
  s     :=Copy(s,0,Length(s) - 1);
  _SQL  :=_SQL + s + ' WHERE ' + fPrimary + ' = "' + sPrimary + '"';
  result:=EksekusiSQL(machine, _SQL);
end;

function dbHapus(machine: TZQuery ; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
var
	_SQL: string;
begin
  if Trim(fPrimary2) = '' then
	_SQL := 'DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '="'
          + sPrimary1 + '"' else
	_SQL := 'DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '="'
          + sPrimary1 + '" AND ' + fPrimary2 + '="' + sPrimary2 + '"';
  result:=EksekusiSQL(machine,_SQL);
end;

function CariValue(machine: TZQuery ; nmField: string): string;
begin
  Result:=machine.FieldByName(nmField).AsString;
end;

procedure isiCombo(const machine: TZQuery ; nmField1,nmField2: string ; comboBox: TCombobox);
begin
  comboBox.Clear;
  comboBox.Text := '- dipilih -';
  while not(machine.Eof) do
	begin
		if Trim(nmField2) = '' then
			comboBox.Items.Add(machine.FieldByName(nmField1).AsString)
		else
			comboBox.Items.Add(machine.FieldByName(nmField1).AsString + ' => [' + machine.FieldByName(nmField2).AsVariant + ']');
		machine.Next;
  end;
end;

procedure isiCombo2(const machine: TZQuery ; nmField1,nmField2,nmField3: string ; comboBox: TCombobox);
begin
  comboBox.Clear;
  while not(machine.Eof) do
	begin
		if Trim(nmField2) = '' then
			comboBox.Items.Add(machine.FieldByName(nmField1).AsString)
		else
			comboBox.Items.Add(machine.FieldByName(nmField1).AsString + ' => [' + machine.FieldByName(nmField2).AsString + ' - ' +  machine.FieldByName(nmField3).AsString + ']');
		machine.Next;
  end;
end;

function formatDuit(duit: Currency): String;
begin
   Result := FormatCurr('"Rp. ",#000",00',duit);
end;


function CekVal(const s: string): boolean;
begin
  Result:=trim(s) = '';
end;

function  ReadConfig(section, Ident: string): string;
var
  inif : TINIFile;
begin
  inif   := TINIFile.Create(AppPath + 'Config.dik');
  result := inif.ReadString(section, Ident, '');
  inif.free;
end;

function  ReadConfigDef(section, Ident, Def: string): string;
var
  inif : TINIFile;
begin
  inif   := TINIFile.Create(AppPath + 'Config.dik');
  result := inif.ReadString(section, Ident, Def);
  inif.free;
end;

procedure WriteConfig(section, Ident, value: string);
var
  inif : TINIFile;
begin
  inif   := TINIFile.Create(AppPath + 'Config.dik');
  inif.WriteString(section, Ident, value);
  inif.free;
end;


procedure LoadFoto(src: string ; hasil: TImage);
var //gb: TImage;
    sPath: string;
begin
  sPath:=ExtractFilePath(Application.ExeName) + '\dirFoto\' + src;
  if not FileExists(sPath) then
  begin
    hasil.Picture:=nil;
    exit;
  end;
  try
    hasil.Picture.LoadFromFile(sPath);
  except
  end;
end;

procedure HapusFoto(src: string);
var
    sPath: string;
begin
  sPath:=ExtractFilePath(Application.ExeName) + '\dirFoto\' + src;
  DeleteFile(PChar(sPath));
end;

function ForceCurrency(s: string): string;
begin
  Result := FormatFloat('#,###',StrToInt(s));
end;

function ForceString(s: string): string;
var
	trFlag: TReplaceFlags;
	_s: string;
begin
trFlag := [rfReplaceAll];
_s := StringReplace(s,',','',trFlag);
Result := StringReplace(_s,'.00','',trFlag);
end;

function Serial(s:string):string;
var SerialNum    : DWord;
    A,B          : DWord;
    C            : array [0..255] of Char;
    Buffer       : array [0..255] of Char;
begin
  if GetVolumeInformation(PChar('C:\'),Buffer,256,@SerialNum,A,B,C,256) then
     s:=IntToStr(SerialNum);
     Result:=s;
end;

function cekTanggal(dp: TDateTime): String;
begin
  result:=FormatDateTime('yyyy-mm-dd',dp);
end;

procedure ClearControl(Form: TForm; ATag: integer; MoreThen: boolean);
var i : integer;
  bool: Boolean;
begin
  with Form do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if MoreThen then
      bool := Components[i].Tag >= ATag else
      bool := Components[i].Tag = ATag;

      if bool then
      begin
        if Components[i] is TEdit then
        TEdit(Components[i]).Text := '';
        if Components[i] is TMemo then
        TMemo(Components[i]).Lines.Text := '';
        if Components[i] is TDateTimePicker then
        TDateTimePicker(Components[i]).Date := Date;
        if Components[i] is TadvEditbtn then
        TadvEditbtn(Components[i]).Text := '';
        if Components[i] is TComboBox then
        begin
          TComboBox(Components[i]).ItemIndex := -1;
          TComboBox(Components[i]).Text      := '';
        end;
      end;
    end;
  end;
end;

function GetZeroString(s: string ; iLength: integer): string;
var
  i: Integer;
  str: string;
begin
  str := '';
  for i := 1 to iLength do
  str := str + '0';
  result := RightStr(str + s, iLength);
end;

function HariIni: string;
begin
  result := CekHari(Date);
end;

function CekHari(dt: TDateTime): string;
var
  h: Integer;
  y,m,d: word;
begin
  DecodeDate(dt, y, m, d);
  h      := DayofWeek(dt);
  result := format('%s, %d %s %d', [HariSet[h], d, BulanSet[m], y]);
end;

function TahunIni: String;
begin
  Result := FormatDateTime('yyyy',Now);
end;

function FetchCodeCombo(strSource: string ; str_1_Atau_2 : integer): string;
var
	i,x,iLimit,iCount: integer;
	_s: string;
begin
iLimit := 0;
case str_1_Atau_2 of
 1:
    begin
		for i:=0 to Length(strSource) do
  begin
    _s:=strSource[i] + strSource[i + 1];
    if _s = '=>' then
      begin
        result:=Trim(Copy(strSource,1,i - 1));
      end;
  end;
	end;
 2:
	begin
	  for x:=1 to Length(strSource) do
		begin
			if strSource[x] = '[' then
			iLimit := x;
			if strSource[x] = ']' then
				begin
					iCount:=x;
					result := Trim(Copy(strSource,iLimit + 1,(iCount - iLimit) - 1));
				end;
		end;
	end;
end;
end;

function GetWindowsSysDir: string;
const
  dwLength: DWORD = 255;
var
  pcSysDir: PChar;
begin
  GetMem(pcSysDir, dwLength);
  GetSystemDirectory(pcSysDir, dwLength);
  Result := string(pcSysDir);
  FreeMem(pcSysDir, dwLength);
end;

initialization
  InitLUTs;
  AppPath   := ExtractFilePath(Application.ExeName);
  AppName   := Application.Exename;
  MyIniFile := TIniFile.Create(AppPath + 'setting.ini');
  FillCharSet;

end.