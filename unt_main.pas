unit unt_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TADbSource, TAGraph, Forms, Controls, Graphics,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, unt_addMoney, unt_addSpend,
  unt_database, TACustomSource, TATools, TASources, TASeries;

type

  { Tfrm_main }

  Tfrm_main = class(TForm)
    btn_addMoney: TBitBtn;
    BitBtn2: TBitBtn;
    Chart1: TChart;
    ChartToolset1: TChartToolset;
    DbChartSource1: TDbChartSource;
    Actions: TGroupBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_addMoneyClick(Sender: TObject);
    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.lfm}

{ Tfrm_main }

procedure Tfrm_main.btn_addMoneyClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_addMoney, frm_addMoney);
  try
    dm_database.sqlAccMov.Open;
    dm_database.sqlAccMov.Insert;
    frm_addMoney.ShowModal;
  finally
    FreeAndNil(frm_addMoney);
  end;
end;

procedure Tfrm_main.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  dm_database.sqlAccMov.Open;
end;

procedure Tfrm_main.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_addSpend, frm_addSpend);
  try
    dm_database.sqlAccMov.Open;
    dm_database.sqlAccMov.Insert;
    frm_addSpend.ShowModal;
  finally
    FreeAndNil(frm_addSpend);
  end;
end;

end.

