unit unt_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TADbSource, TAGraph, Forms, Controls, Graphics,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DBGrids, unt_addMoney,
  unt_addSpend, unt_database, TACustomSource, TATools, TASources, TASeries,
  DateTimePicker, Grids;

type

  { Tfrm_main }

  Tfrm_main = class(TForm)
    btn_addMoney: TBitBtn;
    BitBtn2: TBitBtn;
    ChartToolset1: TChartToolset;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DbChartSource1: TDbChartSource;
    Actions: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    rg_dataFilter: TGroupBox;
    PageControl1: TPageControl;
    pnMenus: TPanel;
    rg_kind: TRadioGroup;
    TabSheet1: TTabSheet;
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_addMoneyClick(Sender: TObject);
    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
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
  dm_database.sqlAccMov.Open;
end;

procedure Tfrm_main.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

procedure Tfrm_main.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


end;

procedure Tfrm_main.DBGrid1PrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);
begin
  if dm_database.sqlAccMovkind.AsString = 'C' then
  begin
    DBGrid1.canvas.Font.Color := clWhite;
    DBGrid1.Canvas.Brush.Color := clGreen;
  end
  else
  begin
    DBGrid1.canvas.Font.Color := clYellow;
    DBGrid1.Canvas.Brush.Color:= clRed;

  end;
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
  dm_database.sqlAccMov.Open;
end;

end.

