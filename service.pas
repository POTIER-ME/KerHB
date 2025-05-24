unit service;

interface

uses
Winapi.Windows,
System.SysUtils,
System.Classes,
Vcl.SvcMgr,
worker;

type
TkerHB_GH = class(TService)
 procedure ServiceStart(Sender: TService; var Started: Boolean);
 procedure ServiceStop(Sender: TService; var Stopped: Boolean);
private
MyWorker: TWorkerAction;
public
 function GetServiceController: TServiceController; override;
end;

var
kerHB_GH: TkerHB_GH;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
kerHB_GH.Controller(CtrlCode);
end;

function TkerHB_GH.GetServiceController: TServiceController;
begin
Result := ServiceController;
end;

procedure TkerHB_GH.ServiceStart(Sender: TService; var Started: Boolean);
begin
 try
 MyWorker := TWorkerAction.Create(False);
 Started := True;
 except
  on E: Exception do
  begin
  Started := False;
  end;
 end;
end;

procedure TkerHB_GH.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
 if Assigned(MyWorker) then
 begin
 MyWorker.Terminate;
 FreeAndNil(MyWorker);
 end;
Stopped := True;
end;

end.
