program Exercicio3;

uses
  Forms,
  Ex3 in 'Ex3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
