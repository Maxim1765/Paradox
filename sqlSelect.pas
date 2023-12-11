unit sqlSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Unit1, DBTables;

type
  TSQLSelectorFrm = class(TForm)
    MmSqlSelect: TMemo;
    ResultGR: TDBGrid;
    SqlBtt: TButton;
    qrySelect: TDataSource;
    qrySelector: TQuery;
    procedure SqlBttClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLSelectorFrm: TSQLSelectorFrm;

implementation
{$R *.dfm}

procedure TSQLSelectorFrm.SqlBttClick(Sender: TObject);
var
  querySelector: String;
begin
  qrySelector.Close;
  qrySelector.SQL.Clear;
  MmSqlSelect.Lines.Strings[0] := querySelector;
  qrySelector.SQL.Text := querySelector;
  qrySelector.Active := true;
end;

end.

