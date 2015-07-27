unit ufrmMasterUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  Grids, BaseGrid, AdvGrid, AdvCGrid, AdvEdit, StdCtrls, AdvGlowButton,
  AdvSmoothPanel, AdvSmoothListBox, AdvSmoothComboBox;

type
  TfrmMasterUser = class(TfrmDefaultMaster)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edPass: TEdit;
    edConfirm: TEdit;
    Label5: TLabel;
    edCode: TEdit;
    Edit1: TEdit;
    Label6: TLabel;
    edUserGroup: TComboBox;
    procedure sgDataClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure edUserGroupChange(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  frmMasterUser: TfrmMasterUser;

implementation

uses myEngine, ufrmLogin, ufrmErrorQuery;

{$R *.dfm}

procedure TfrmMasterUser.sgDataClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  edConfirm.Text := '[NULL]' + FieldToStr(zqr, 'user_pass');
  edPass.Text    := '[NULL]' + FieldToStr(zqr, 'user_pass');
end;

procedure TfrmMasterUser.btnSimpanClick(Sender: TObject);
begin
  if edConfirm.Text <> edPass.Text then
  begin
    cmsgPerhatian('Password Confirmation Salah');
    exit;
  end;
  inherited;
end;

procedure TfrmMasterUser.btnNewClick(Sender: TObject);
begin
  inherited;
  edConfirm.Text := '';
  edPass.Text    := '';
end;

procedure TfrmMasterUser.edUserGroupChange(Sender: TObject);
begin
  inherited;
  ParentID := StrToIntDef(GetActiveData1(edUserGroup), 0);
  FormCreate(sender);
end;

end.
