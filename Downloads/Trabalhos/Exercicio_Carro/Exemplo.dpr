program Exemplo;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCarro in 'uCarro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
