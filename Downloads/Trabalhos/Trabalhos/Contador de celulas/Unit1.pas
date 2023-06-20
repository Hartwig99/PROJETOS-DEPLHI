unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    lbl1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
 objCedula: TCedular;
begin
  try
    objCedula := TCedular.Create;
    objCedula.FValorContagem := StrToInt(Edit1.Text);
    objCedula.Distribuicao;
    Memo1.Lines.Add('Notas de 100: ' + IntToStr(objCedula.QtdNotas100));
    Memo1.Lines.Add('Notas de  50 '  + IntToStr(objCedula.QtdNotas50));
    Memo1.Lines.Add('Notas de  10 '  + IntToStr(objCedula.QtdNotas10));
    Memo1.Lines.Add('Notas de  5 '  + IntToStr(objCedula.QtdNotas5));
    Memo1.Lines.Add('Notas de  2 '  + IntToStr(objCedula.QtdNotas2));
    Memo1.Lines.Add('Notas de  1 '  + IntToStr(objCedula.QtdNotas1));
  finally
    objCedula.Free;
  end;
end;


end.




