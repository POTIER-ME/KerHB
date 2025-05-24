unit worker;

interface

uses
System.Classes,
System.SysUtils,
Winapi.Windows,
System.Net.HttpClient;

type
TWorkerAction = class(TThread)
 protected
  procedure Execute; override;
  procedure HeartBeat;
 end;

var
web_url: string; //url to send heartbeat

implementation

procedure TWorkerAction.Execute;
var
counter: integer;
begin
//we fill vars
web_url:='';

//we doing heartbeat each minute
 while not Terminated do
 begin
  if (web_url<>'') then
  begin
   for counter := 1 to 12 do
   begin
    if Terminated then Break;
   Sleep(5000); // 5 seconds - need to permit quick stop on service stop option
    if (counter=12) then
    begin
    HeartBeat;
    end;
   end;
  end
  else
  begin
  Break
  end;
 end;
end;

procedure TWorkerAction.HeartBeat;
var
web_connect: THTTPClient;
begin
web_connect := THTTPClient.Create();
 try
 web_connect.ConnectionTimeout:=2000; // 2 seconds for connnection timeout
 web_connect.ResponseTimeout:=2000; // 2 seconds for response timeout
 web_connect.Get(web_url);
 finally
 web_connect.Free;
 end;
end;

end.
