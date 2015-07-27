unit ufrmMessage;

interface

uses
  Forms,
  Windows, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  AdvToolBarStylers, AdvOfficeHint, AdvGlowButton, Classes, Controls,
  Dialogs, Graphics, ExtCtrls, StdCtrls;

type
  TfrmMyMessage = class(TForm)
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    mRibbon: TAdvToolBarPager;
    m10: TAdvPage;
    btnOK: TAdvGlowButton;
    btnYes: TAdvGlowButton;
    btnNo: TAdvGlowButton;
    Label1: TLabel;
    imgWarning: TAdvGlowButton;
    imgInform: TAdvGlowButton;
    imgConfirm: TAdvGlowButton;
    imgError: TAdvGlowButton;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnYesClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure SetNotificationPosition;
    procedure SetCenterPosition;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FMsg : String;
    FDlgType : TMsgDlgType;
    FTimeStop : Integer;
    procedure ShowbtnOk;
    procedure ShowbtnYesNo;
  public
  end;

var
  frmMyMessage : TfrmMyMessage;

function  cPlainMessage(aMsg : String; aDlgType : TMsgDlgType) : word;
function  cConfirmation(aMsg : String) : word;
procedure cInformation(aMsg : String);
procedure cWarning(aMsg : String);
procedure cError(aMsg : String);
procedure cNotification(aMsg : String);

implementation

uses SysUtils, Messages;

const
  RIB_MIN_WIDTH   = 286;
  RIB_MIN_HEIGHT  = 158;
  BTN_MIN_TOP     =  80;
  WIDTH_DIFF      =  30;
  HEIGHT_DIFF     =  10;
  WM_NOTIFICATION = WM_USER + 18;

var
  msgResult: Integer;
  FAutoClose: boolean;
  WParam: Integer;


{$R *.dfm}

procedure TfrmMyMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMyMessage.FormCreate(Sender: TObject);
begin
  msgResult := mrNone;
  FTimeStop := 0;
end;

procedure TfrmMyMessage.ShowbtnOk;
begin
  btnOK.Visible := true;
  btnOK.Left    := (m10.Width div 2) - (btnOK.Width div 2);
end;

procedure TfrmMyMessage.ShowbtnYesNo;
var wdth : integer;
begin
  wdth           := btnYes.width + 20 + btnNo.Width;
  btnYes.Left    := (m10.Width div 2) - (wdth div 2);
  btnNo.Left     := btnYes.Left + 20 + btnYes.Width;
  btnYes.Visible := true;
  btnNo.Visible  := true;
end;

procedure TfrmMyMessage.SetNotificationPosition;
var
  sWidth: Integer;
  sHeight: Integer;
begin
  sHeight := Screen.Height;
  sWidth  := Screen.Width;
  Top     := sHeight;
  Left    := sWidth - Width;
end;

procedure TfrmMyMessage.SetCenterPosition;
var
  sWidth: Integer;
  sHeight: Integer;
begin
  sHeight := Screen.Height;
  sWidth  := Screen.Width;
  Top     := (sHeight div 2) - (Height div 2);
  Left    := (sWidth  div 2) - (Width  div 2);
end;

procedure TfrmMyMessage.btnOKClick(Sender: TObject);
begin
  msgResult := mrNone;
  Close;
end;

procedure TfrmMyMessage.btnYesClick(Sender: TObject);
begin
  msgResult := mrYes;
  if wParam <> 0 then
  PostMessage(HWND_BROADCAST, WM_NOTIFICATION, WParam, mrYes);
  Close;
end;

procedure TfrmMyMessage.btnNoClick(Sender: TObject);
begin
  msgResult := mrNo;
  if wParam <> 0 then
  PostMessage(HWND_BROADCAST, WM_NOTIFICATION, WParam, mrNo);
  Close;
end;

function  cPlainMessage(aMsg : String; aDlgType : TMsgDlgType) : word;
begin
  frmMyMessage := TfrmMyMessage.Create(nil);
  frmMyMessage.FMsg     := aMsg;
  frmMyMessage.FDlgType := aDlgType;
  if aDlgType = mtCustom then
  frmMyMessage.Show else
  frmMyMessage.ShowModal;
  result := msgResult;
end;

procedure cInformation(aMsg : String);
begin
  WParam := 0;
  cPlainMessage(aMsg, mtInformation);
end;

procedure cWarning(aMsg : String);
begin
  WParam := 0;
  cPlainMessage(aMsg, mtWarning);
end;

procedure cError(aMsg : String);
begin
  WParam := 0;
  cPlainMessage(aMsg, mtError);
end;

function  cConfirmation(aMsg : String) : word;
begin
  WParam := 0;
  result := cPlainMessage(aMsg, mtConfirmation);
end;

procedure cNotification(aMsg : String);
begin
  WParam     := 0;
  FAutoClose := true;
  cPlainMessage(aMsg, mtCustom);
end;

procedure TfrmMyMessage.Timer1Timer(Sender: TObject);
var
  sTop: Integer;
  sHeight: Integer;
begin
  if FTimeStop = 0 then
  begin
    Top      := Top - 1;
    sHeight  := Screen.Height;
    sTop     := sHeight - Height;
    if Top   =  sTop - 20 then
    FTimeStop := 1;
  end else
  begin
    inc(FTimeStop);
    if (FTimeStop = 250) and FAutoClose then
    Close;
  end;
end;

procedure TfrmMyMessage.FormShow(Sender: TObject);
var
  MsgList : TStrings;
  i: integer;
  wdth: Integer;
  xtop: integer;
  lbl : TLabel;
  HNotif: Integer;
begin
  Wdth         := 0;
  xtop         := 0;
  HNotif       := 0;
  MsgList      := TStringList.Create;
  MsgList.Text := FMsg;

  if FDlgType = mtCustom then
  Label1.Left := 16;

  for i := 0 to MsgList.Count - 1 do
  begin
    if i = 0 then
    begin
      Label1.Caption := MsgList[0];
      wdth           := Label1.Width;
      xtop           := Label1.Top;
      HNotif         := xtop;
    end else
    begin
      lbl             := TLabel.Create(self);
      lbl.Left        := Label1.Left;
      lbl.Top         := 20 * i + Label1.Top;
      lbl.Font        := Label1.Font;
      lbl.Parent      := m10;
      lbl.Caption     := MsgList[i];
      lbl.Transparent := true;
      xtop            := lbl.Top;
      HNotif          := xtop;
      if wdth < lbl.Width then
      wdth := lbl.Width;
    end;
  end;

  //menentukan width form;
  wdth := Label1.Left + wdth + 30;
  if wdth < RIB_MIN_WIDTH then
  wdth := RIB_MIN_WIDTH;
  Width := wdth;

  //menentukan height form;
  xtop := xtop + 40;
  if xtop < BTN_MIN_TOP then
  xtop           := BTN_MIN_TOP;
  btnOK.Top      := xtop;
  btnYes.Top     := xtop;
  btnNo.Top      := xtop;

  if FDlgType = mtCustom then
  xtop           := HNotif;
  mRibbon.Height := 80 + xtop;
  Height         := m10.Height + 43;


  case FDlgType of
    mtWarning      : begin
                       mRibbon.Caption.Caption := 'Peringatan';
                       imgWarning.Visible      := true;
                       SetCenterPosition;
                       ShowbtnOk;
                     end;
    mtError        : begin
                       mRibbon.Caption.Caption := 'Kesalahan';
                       imgError.Visible        := true;
                       SetCenterPosition;
                       ShowbtnOk;
                     end;
    mtConfirmation : begin
                       mRibbon.Caption.Caption := 'Pertanyaan';
                       imgConfirm.Visible      := true;
                       SetCenterPosition;
                       ShowbtnYesNo;
                     end;
    mtInformation  : begin
                       mRibbon.Caption.Caption := 'Informasi';
                       imgInform.Visible       := true;
                       SetCenterPosition;
                       ShowbtnOk;
                     end;
    mtCustom       : begin
                       SetNotificationPosition;
                       mRibbon.Caption.Caption := 'Notifikasi';
                       Timer1.Enabled          := true;
                     end;
  end;
  MsgList.Free;
  if btnYes.Visible then btnYes.SetFocus;
  if btnOK.Visible  then btnOK.SetFocus;
end;

end.

