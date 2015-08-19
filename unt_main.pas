unit unt_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TADbSource, TAGraph, Forms, Controls, Graphics,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, unt_addMoney, unt_addSpend,
  unt_database, TACustomSource;

type

  { Tfrm_main }

  Tfrm_main = class(TForm)
    btn_addMoney: TBitBtn;
    BitBtn2: TBitBtn;
    Chart1: TChart;
    DbChartSource1: TDbChartSource;
    Actions: TGroupBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_addMoneyClick(Sender: TObject);
    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
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
    frm_addMoney.ShowModal;
  finally
    FreeAndNil(frm_addMoney);
  end;
end;

procedure Tfrm_main.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

procedure Tfrm_main.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_addSpend, frm_addSpend);
  try
    frm_addSpend.ShowModal;
  finally
    FreeAndNil(frm_addSpend);
  end;
end;

end.

