unit unt_addSpend;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  DbCtrls, StdCtrls, DBExtCtrls, unt_database;

type

  { Tfrm_addSpend }

  Tfrm_addSpend = class(TForm)
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
  frm_addSpend: Tfrm_addSpend;

implementation

{$R *.lfm}

{ Tfrm_addSpend }

procedure Tfrm_addSpend.BitBtn1Click(Sender: TObject);
begin
  dm_database.sqlAccMov.Cancel;
  Close;
end;

procedure Tfrm_addSpend.BitBtn2Click(Sender: TObject);
begin
  dm_database.sqlAccMovkind.AsString := 'D' ;
  dm_database.sqlAccMovvalue.AsFloat := dm_database.sqlAccMovvalue.AsFloat * -1;
  dm_database.sqlAccMov.Post;
  dm_database.sqlAccMov.ApplyUpdates(0);
  dm_database.sqlTransaction.Commit;
  Close;
end;

end.

