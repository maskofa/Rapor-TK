unit ufrmPrintOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, StdCtrls, AdvToolBar, AdvToolBarStylers,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvOfficeHint,
  AdvGlowButton, ZDataset;

type
  TfrmPrintOption = class(TForm)
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    cbCover: TCheckBox;
    Label1: TLabel;
    cbKomp: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    cbLast: TCheckBox;
    btnSimpan: TAdvGlowButton;
    cmbKomp: TComboBox;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbKompChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintOption: TfrmPrintOption;

implementation

uses
  ufrmLogin;


{$R *.dfm}

procedure TfrmPrintOption.Label1Click(Sender: TObject);
begin
  cbCover.Checked := not cbCover.Checked;
end;

procedure TfrmPrintOption.Label2Click(Sender: TObject);
begin
  cbKomp.Checked := not cbKomp.Checked;
end;

procedure TfrmPrintOption.Label3Click(Sender: TObject);
begin
  cbLast.Checked := not cbLast.Checked;
end;

procedure TfrmPrintOption.btnSimpanClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrintOption.FormShow(Sender: TObject);
var
  xxx: Integer;
  str: string;
  qtemp: TZQuery;
begin
  qtemp := NewZQuery;
  cmbKomp.Clear;
  cmbKomp.Items.Add('Semua Kompetensi');

  str := 'select * from tbkompetensi';
  qtemp.SQL.Text := str;
  try
    qtemp.Open;
  except
  end;

  while not qtemp.Eof do
  begin
    str := qtemp.fieldByName('kompetensi_name').AsString;
    xxx := qtemp.fieldByName('kompetensi_id').AsInteger;
    cmbKomp.AddItem(str, TObject(xxx));
    qtemp.Next;
  end;
  qtemp.Free;
  cmbKomp.ItemIndex := cmbKomp.Tag;
end;

procedure TfrmPrintOption.cmbKompChange(Sender: TObject);
var
  xxx: Integer;
begin
  xxx := cmbKomp.ItemIndex;
  xxx := Integer(cmbKomp.Items.Objects[xxx]);

  cmbKomp.Tag := xxx;
end;

end.
