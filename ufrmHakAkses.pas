unit ufrmHakAkses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,
  AdvSmoothPanel, AdvSmoothListBox, AdvSmoothComboBox, ufrmKosong;

type
  TfrmHakAkses = class(TfrmDefaultMaster)
    Label2: TLabel;
    edUserGroup: TComboBox;
    procedure btnNewClick(Sender: TObject);
    procedure edUserGroupSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHakAkses: TfrmHakAkses;

implementation

uses ufrmLogin, ufrmErrorQuery, myEngine, ufrmLookUp;

{$R *.dfm}

procedure TfrmHakAkses.btnNewClick(Sender: TObject);
var
  AData: TStrings;
  i: Integer;
  idx: Integer;
  str: string;
  int: Integer;
  ARes: TLookUpResult;
begin
  int  := StrToIntDef(GetActiveData1(edUserGroup), 0);
  if int = 0 then exit;
  str  := format('select form_id as "Id Module", form_desc as "Nama Module" '
          + 'from tbform where form_id not in (select form_id from tbPRIVILEGE'
          + ' where usergroup_id=%d) order by form_desc', [int]);
  ARes := LookUpData('Daftar Hak Akses', str, -1, true);

  if ARes.Count = 0 then exit;
  AData      := TStringList.Create;
  AData.Text := ARes.Text;
  for i := 0 to ARes.Count - 1 do
  begin
    idx := StrToIntDef(LookUpCells(AData, 2, i), 0);
    str := 'insert into tbprivilege values (:auto,:fid,:gid,null)';
    zqr.SQL.Text := str;
    zqr.Params[0].AsInteger := LastID('privilege_id', 'tbprivilege') + 1;
    zqr.Params[1].AsInteger := idx;
    zqr.Params[2].AsInteger := int;
    if ErrorExecQuery(zqr) then exit;
    AddRow(sgData);
    FillLastGrid(sgData, LookUpCells(AData, 3, i), 2);
    FillLastGrid(sgData, IntToStr(LastID('privilege_id', 'tbprivilege')), 1);
  end;
end;

procedure TfrmHakAkses.edUserGroupSelect(Sender: TObject);
begin
  inherited;
  ParentID := StrToIntDef(GetActiveData1(edUserGroup), 0);
  FormCreate(Sender);
end;

end.
