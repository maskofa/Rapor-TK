unit ufrmReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDBSet, frxDesgnEditors, frxChart, frxExportRTF,
  frxExportXLS, frxExportText, frxRich, frxExportPDF, ADODB, StdCtrls,
  AdvOfficeHint, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers;

type
  TReportType = (rtPrepare, rtPreview, rtPrint);

  TfrmReport = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    zqr1: TZQuery;
    zqr2: TZQuery;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    zqr3: TZQuery;
    zqr4: TZQuery;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    zqr5: TZQuery;
    zqr6: TZQuery;
    zqr7: TZQuery;
    zqr8: TZQuery;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxRichObject1: TfrxRichObject;
    frxPDFExport1: TfrxPDFExport;
    frxChartObject1: TfrxChartObject;
    frReport: TfrxReport;
    procedure FormCreate(Sender: TObject);
  private
    FReportPath: string;
  public
      property ReportPath: String read FReportPath write FReportPath;
  end;

const
  TanyaMauDesign = 'Anda mempunyai authority untuk design report'#13#10
                    + 'Apakah anda akan melakukan design sekarang ?'#13#10
                    + 'Pilih NO kalau anda hanya akan melihat report ...';
var
  frmReport: TfrmReport;

procedure ExecReport(ATitle, AFile, Sql1, Sql2, Sql3, Sql4, Sql5, Sql6 :string;
                     ReportType: TReportType; AClear, AReverse: boolean);
procedure ShowPrepared;
procedure PrintPrepared;
procedure ClearReport;

implementation

uses ufrmLogin, myEngine, ufrmErrorQuery;


{$R *.dfm}

procedure ExecReport(ATitle, AFile, Sql1, Sql2, Sql3, Sql4, Sql5, Sql6 :string;
                     ReportType: TReportType; AClear, AReverse: boolean);
var
  FileName: string;
begin
  with frmReport do
  begin
    zqr1.Close;
    zqr1.SQL.Text := sql1;
    zqr1.Open;
    if sql2 <> '' then
    begin
      zqr2.Close;
      zqr2.SQL.Text := sql2;
      zqr2.Open;
    end;
    if sql3 <> '' then
    begin
      zqr3.Close;
      zqr3.SQL.Text := sql3;
      zqr3.Open;
    end;
    if sql4 <> '' then
    begin
      zqr4.Close;
      zqr4.SQL.Text := sql4;
      zqr4.Open;
    end;
    if Sql5 <> '' then
    begin
      zqr5.Close;
      zqr5.SQL.Text := Sql5;
      zqr5.Open;
    end;
    if Sql6 <> '' then
    begin
      zqr6.Close;
      zqr6.SQL.Text := Sql6;
      zqr6.Open;
    end;
    FileName := ReportPath + AFile + '.fr3';
    if frReport.LoadFromFile(FileName) then
    begin
      frReport.PrintOptions.ShowDialog := false;
      frReport.FileName := FileName;
      frReport.PrepareReport(AClear);
      frReport.PrintOptions.Reverse := AReverse;

      case ReportType of
        rtPreview : begin
                      if frmLogin.AllowDesign then
                      begin
                        if cMsgTanya(TanyaMauDesign) = mrYes then
                        begin
                          frReport.DesignReport
                        end else frReport.ShowReport;
                      end else frReport.ShowReport;
                    end;
        rtPrint   : frReport.Print;
      end;

    end;
  end;
end;

procedure ShowPrepared;
begin
  frmReport.frReport.ShowPreparedReport;
end;

procedure PrintPrepared;
begin
  frmReport.frReport.Print;
end;

procedure ClearReport;
begin
  frmReport.frReport.Clear;
end;

procedure TfrmReport.FormCreate(Sender: TObject);
var
  str: string;
begin
  str := 'select * from tbvarglobal where varglobal_name="REPORTPATH"';
  zqr.SQL.Text := str;
  if ErrorExecQuery(zqr) then exit;

  FReportPath := FieldToStr(zqr, 'varglobal_value');
  FReportPath := StringReplace(FReportPath, '[APPPATH]', AppPath,
                 [rfReplaceAll]);

  zqr1.Connection := dbKoneksi; zqr5.Connection := dbKoneksi;
  zqr2.Connection := dbKoneksi; zqr6.Connection := dbKoneksi;
  zqr3.Connection := dbKoneksi; zqr7.Connection := dbKoneksi;
  zqr4.Connection := dbKoneksi; zqr8.Connection := dbKoneksi;
end;

end.
