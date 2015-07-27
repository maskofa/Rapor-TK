unit ufrmMasterSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,
  AdvSmoothPanel, ExtCtrls, ComCtrls, AdvSmoothTabPager, AdvSmoothListBox,
  AdvSmoothComboBox, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, ufrmKosong;

type
  TfrmMasterSiswa = class(TfrmDefaultMaster)
    TabPage: TAdvSmoothTabPager;
    TabData: TAdvSmoothTabPage;
    tabDaftar: TAdvSmoothTabPage;
    TabOrtu: TAdvSmoothTabPage;
    Label8: TLabel;
    Label76: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edTmpLahir: TEdit;
    edNamaPanggil: TEdit;
    edNama: TEdit;
    edKode: TEdit;
    ediNis: TEdit;
    ediKandung: TEdit;
    ediAnakke: TEdit;
    btnPhoto: TAdvGlowButton;
    pnPhoto: TPanel;
    imgFoto: TImage;
    Label18: TLabel;
    Label19: TLabel;
    edTmpTelp: TEdit;
    almsiswa: TMemo;
    Label70: TLabel;
    Label41: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    edTempatAyah: TEdit;
    edNamaAyah: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    edAlamatAyah: TMemo;
    edTelpAyah: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    edJabAyah: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edTelpKantorAyah: TEdit;
    edAlmKantorAyah: TMemo;
    Label17: TLabel;
    Label20: TLabel;
    edNamaIbu: TEdit;
    edTempatIbu: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edAlamatIbu: TMemo;
    edTelpIbu: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    edJabIbu: TEdit;
    edAlmKantorIbu: TMemo;
    Label27: TLabel;
    Label28: TLabel;
    edTelpKantorIbu: TEdit;
    dlgOpen: TOpenDialog;
    edPendidikanAyah: TComboBox;
    edPendidikanIbu: TComboBox;
    edAgamaAyah: TComboBox;
    edAgamaIbu: TComboBox;
    edKelamin: TComboBox;
    ComboBox1: TComboBox;
    Label29: TLabel;
    Edit1: TEdit;
    Label30: TLabel;
    Edit2: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    dtTglLahir: TDateTimePicker;
    Label34: TLabel;
    edTglMasuk: TDateTimePicker;
    Label35: TLabel;
    Label36: TLabel;
    edTglLahairf: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label38: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure sgDataClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnPhotoClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure edKodeChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterSiswa: TfrmMasterSiswa;

implementation

uses myEngine;

{$R *.dfm}

procedure TfrmMasterSiswa.FormCreate(Sender: TObject);
begin
  inherited;
  sgData.Left        := 15;
  sgData.Top         := 35;
  Label1.Left        := 15;
  Label1.Top         := 13;
  edID.Left          := 70;
  edID.Top           := 10;
  sgData.Parent      := TabDaftar;
  edID.Parent        := TabDaftar;
  Label1.Parent      := Tabdaftar;
  TabPage.ActivePage := TabDaftar;
end;

procedure TfrmMasterSiswa.sgDataClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  edKode.Text        := edID.Text;
  TabPage.ActivePage := TabData;
end;

procedure TfrmMasterSiswa.btnPhotoClick(Sender: TObject);
begin
  inherited;
  if dlgOpen.Execute then
  begin
    imgFoto.Picture.LoadFromFile(dlgOpen.FileName);
    pnPhoto.Hint := edKode.Text + '.jpg';
  end;
end;

procedure TfrmMasterSiswa.btnNewClick(Sender: TObject);
begin
  TabPage.ActivePage := TabData;
  edKode.ReadOnly    := false;
  ImgFoto.Picture    := nil;
  inherited;
end;

procedure TfrmMasterSiswa.edKodeChange(Sender: TObject);
begin
  inherited;
  edID.Text := edKode.Text;
end;

procedure TfrmMasterSiswa.btnSimpanClick(Sender: TObject);
var
  str: string;
begin
  inherited;
  if imgFoto.Picture <> nil then
  begin
    str := AppPath + 'photo\' + pnPhoto.Hint;
    imgFoto.Picture.SaveToFile(str);
  end;
end;

procedure TfrmMasterSiswa.btnEditClick(Sender: TObject);
begin
  TabPage.ActivePage := TabData;
  edKode.ReadOnly    := true;
  inherited;
end;

procedure TfrmMasterSiswa.btnDeleteClick(Sender: TObject);
var
  str: string;
begin
  inherited;
  ClearControl(Self, 1, true);
  ImgFoto.Picture := nil;
  str := AppPath + 'photo\' + pnPhoto.Hint;
  if FileExists(str) then
  DeleteFile(str);
end;

end.
