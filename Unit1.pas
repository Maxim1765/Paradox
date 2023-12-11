unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBTables, DB, Menus;

type
  TMainForm = class(TForm)
    MmSqlSelector: TMemo;
    OpenTableFile: TOpenDialog;
    OpenFileBtt: TButton;
    CommandSqlBtt: TButton;
    dbParadox: TDatabase;
    dsTableView: TDataSource;
    tblTableView: TTable;
    grdTableView: TDBGrid;
    TableName: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure OpenFileBttClick(Sender: TObject);
    procedure CommandSqlBttClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses sqlSelect, byProg;
  
{$R *.dfm}

procedure TMainForm.OpenFileBttClick(Sender: TObject);
var
  pathTable, fileName, pathFile: String;
begin
   if OpenTableFile.Execute then
  begin
    pathTable := String(OpenTableFile.FileName);
    pathFile := ExtractFileDir(pathTable);
    fileName := ExtractFileName(pathTable);
    //MmSqlSelector.Lines.Strings[0] := pathFile;
    //MmSqlSelector.Lines.Strings[1] := fileName;
    tblTableView.Close;
    dbParadox.Close;
    dbParadox.Params.Values['path'] := pathFile;
    tblTableView.TableName := fileName;
    dbParadox.Connected;
    tblTableView.Open;
    TableName.Caption := fileName;
    end;
end;

procedure TMainForm.CommandSqlBttClick(Sender: TObject);
var
  querySelector: String;
begin
  querySelector := MmSqlSelector.Lines.Strings[0];
  //querySelector := 'SELECT * FROM WARES WHERE amount = 0';
  //qryTable.Close;
  //qryTable.SQL.Text := querySelector;
  //qryTable.Active := true;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  SQLSelectorFrm := TSQLSelectorFrm.Create(Self);
SQLSelectorFrm.ShowModal;
end;

procedure TMainForm.N4Click(Sender: TObject);
var
  pathTable, fileName, pathFile: String;
begin
   if OpenTableFile.Execute then
  begin
    pathTable := String(OpenTableFile.FileName);
    pathFile := ExtractFileDir(pathTable);
    fileName := ExtractFileName(pathTable);
    //MmSqlSelector.Lines.Strings[0] := pathFile;
    //MmSqlSelector.Lines.Strings[1] := fileName;
    tblTableView.Close;
    dbParadox.Close;
    dbParadox.Params.Values['path'] := pathFile;
    tblTableView.TableName := fileName;
    dbParadox.Connected;
    tblTableView.Open;
    TableName.Caption := fileName;
    end;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
   tblTableView.Close;
    dbParadox.Close;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
close;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
   ByProgFrm := TByProgFrm.Create(Self);
   ByProgFrm.ShowModal;
end;

end.

