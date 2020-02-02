program Lembretes;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uBaseDAO in 'DAO\uBaseDAO.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  uLembrteDAO in 'DAO\uLembrteDAO.pas',
  uLembrete in 'Model\uLembrete.pas',
  uFrmInserirLembrete in 'uFrmInserirLembrete.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
