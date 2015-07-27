unit ufrmUserGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmDefaultMaster, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvOfficeHint,
  StdCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,
  AdvSmoothPanel;

type
  TfrmUserGroup = class(TfrmDefaultMaster)
    edName: TEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserGroup: TfrmUserGroup;

implementation

{$R *.dfm}

end.
