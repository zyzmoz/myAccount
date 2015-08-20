unit unt_addMoney;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, sqldb, FileUtil, Forms, Controls, Graphics,
  Dialogs, DbCtrls, StdCtrls, DBExtCtrls, Buttons, unt_database;

type

  { Tfrm_addMoney }

  Tfrm_addMoney = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_addMoney: Tfrm_addMoney;

implementation

{$R *.lfm}

{ Tfrm_addMoney }

procedure Tfrm_addMoney.BitBtn1Click(Sender: TObject);
begin
  dm_database.sqlAccMov.Cancel;
  Close;
end;

procedure Tfrm_addMoney.BitBtn2Click(Sender: TObject);
begin
  dm_database.sqlAccMovkind.AsString := 'C' ;
  dm_database.sqlAccMov.Post;
  dm_database.sqlAccMov.ApplyUpdates(0);
  dm_database.sqlTransaction.Commit;
  Close;

end;

end.

