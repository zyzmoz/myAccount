unit unt_database;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, Sqlite3DS, db, FileUtil;

type

  { Tdm_database }

  Tdm_database = class(TDataModule)
    DataSource1: TDataSource;
    sqliteConnection: TSQLite3Connection;
    sqlAccMov: TSQLQuery;
    sqlTransaction: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure sqliteConnectionAfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  dm_database: Tdm_database;

implementation

{$R *.lfm}

{ Tdm_database }

procedure Tdm_database.sqliteConnectionAfterConnect(Sender: TObject);
begin

end;

procedure Tdm_database.DataModuleCreate(Sender: TObject);
begin
   sqliteConnection.DatabaseName := ExtractFilePath(ApplicationName) + 'myAccount.sqlite' ;
   try
     sqliteConnection.Connected:= True;

   except

   end;
end;

end.

