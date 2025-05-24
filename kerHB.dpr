{
***Configure
You can change url to your heartbeat url in worker.pas
web_url:='';
*Please note : service name is "kerHB_GH", If you would like to change it, you need to change on source code because windows need to have same name in service as in source code

***Installation
Use windows cmd with admin rights
sc create kerHB_GH binPath= "C:\Path-to-exe--system-user-need-to-have-access\file.exe" start=auto
sc start kerHB_GH

***Removing
Use windows cmd with admin rights
sc delete kerHB_GH
}
program kerHB;

uses
Vcl.SvcMgr,
service in 'service.pas' {kerHB_GH, TkerHB_GH},
worker in 'worker.pas';

{$R *.RES}

begin
 if not Application.DelayInitialize or Application.Installing then Application.Initialize;
Application.CreateForm(TkerHB_GH, kerHB_GH);
Application.Run;
end.
