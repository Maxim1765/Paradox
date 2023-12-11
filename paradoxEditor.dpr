program paradoxEditor;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  sqlSelect in 'sqlSelect.pas' {SQLSelectorFrm},
  byProg in 'byProg.pas' {ByProgFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

