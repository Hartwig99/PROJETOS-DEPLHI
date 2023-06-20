program P_Trabalho;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uValores in 'uValores.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
