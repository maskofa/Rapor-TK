unit ufrmErrorQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZDataSet,  Shader, ExtCtrls, AdvToolBar,
  AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvOfficeHint, ADODB;

type
  TfrmQueryError = class(TForm)
    AdvOfficeHint1: TAdvOfficeHint;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    Image1: TImage;
    mmQuery: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQueryError: TfrmQueryError;

function  ErrorExecQuery(zqr: TZQuery): boolean;

implementation

uses myEngine, DB;

{$R *.dfm}

function  ErrorExecQuery(zqr: TZQuery): boolean;
begin
  try
    if GetQueryType(zqr.SQL.Text) = qtSelect then
    zqr.Open else
    zqr.ExecSQL;
    result := false;
  except
    on E:Exception do
    begin
      frmQueryError := TfrmQueryError.Create(nil);
      frmQueryError.mmQuery.Text := E.Message + #13#10#13#10#13#10
                                  + ResultQuery(zqr);
      frmQueryError.ShowModal;
      result := true;
    end;
    on E:EDatabaseError do
    begin
      frmQueryError := TfrmQueryError.Create(nil);
      frmQueryError.mmQuery.Text := E.Message + #13#10#13#10#13#10
                                  + ResultQuery(zqr);
      frmQueryError.ShowModal;
      result := true;
    end;
  end;
end;

procedure TfrmQueryError.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
