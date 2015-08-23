program myAccount;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unt_main, tachartlazaruspkg, sqlite3laz, datetimectrls, unt_database,
  unt_addMoney, unt_addSpend
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tdm_database, dm_database);
  Application.CreateForm(Tfrm_addMoney, frm_addMoney);
  Application.CreateForm(Tfrm_addSpend, frm_addSpend);
  Application.Run;
end.

