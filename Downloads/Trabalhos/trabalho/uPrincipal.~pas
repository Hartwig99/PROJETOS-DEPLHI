unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Valor: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    procedure ValorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uValores;
{$R *.dfm}

procedure TForm1.ValorClick(Sender: TObject);
var
  objValor: TValores;
  FValorContagem: Integer;
  FQtdNotas100: Integer;
  FQtdNotas50: Integer;
  FQtdNotas10: Integer;
  FQtdNotas5: Integer;
  FQtdNotas2: Integer;
  FQtdNotas1: Integer;

  objValor := TValores.Create;
  objValor.Notas100 := 0;
  objValor.Notas50 := 0;
  objValor.Notas10 := 0;
  objValor.Notas5 := 0;
  objValor.Notas2 := 0;
  objValor.Notas1 := 0;
  edt2.Text := IntToStr(objValor.Notas100);
  edt3.Text := IntToStr(objValor.Notas50);
  edt4.Text := IntToStr(objValor.Notas10);
  edt5.Text := IntToStr(objValor.Notas5);
  edt6.Text := IntToStr(objValor.Notas2);
  edt7.Text := IntToStr(objValor.Notas1);
end;

end.

