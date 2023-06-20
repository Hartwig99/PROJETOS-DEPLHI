unit Ex3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl3: TLabel;
    mmo1: TMemo;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
   procedure p_multiplicar(num1, num2 : Integer);
   procedure p_subtracao(num1, num2 : Integer);
   procedure p_divisao(num1, num2 : Integer);
   procedure p_somar(num1, num2: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }
procedure TForm1.p_divisao(num1, num2: Integer);
var
   divs : Integer;
begin

  num1 := StrToInt(edt1.text);
   num2 := StrToInt(edt2.text);

     if(num2 <> 0 ) then
     begin
       divs := num1 div num2 ;
       mmo1.Lines.Add('valor da divisão');
     mmo1.Lines.Add(IntToStr(divs));
     end else
     if(num2 = 0 ) then
     begin
         divs := num1 div num2 ;
         mmo1.Lines.Add('divisao impossivel numero menor que zero');
     end;
end;

procedure TForm1.p_multiplicar(num1, num2 : Integer);
var
 mult : Integer;
begin
  num1 := StrToInt( edt1.text );
   num2 := StrToInt( edt2.text );
 mult:= num1 * num2 ;
     mmo1.Lines.Add('valor da multiplicaçao');
     mmo1.Lines.Add(IntToStr(mult));


end;

  procedure TForm1.p_somar(num1, num2: Integer);
  var
 soma : Integer;
begin
  num1 := StrToInt( edt1.text );
   num2 := StrToInt( edt2.text );
  soma:= num1 + num2 ;
     mmo1.Lines.Add('valor da adição');
     mmo1.Lines.Add(IntToStr(soma));

end;
procedure TForm1.p_subtracao(num1, num2: Integer);
var
 subt : Integer;
begin
  num1 := StrToInt( edt1.text );
   num2 := StrToInt( edt2.text );
 subt:= num1 - num2 ;
     mmo1.Lines.Add('valor da subtraçao');
     mmo1.Lines.Add(IntToStr(subt));

end;
procedure TForm1.btn2Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
mmo1.Clear;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
p_multiplicar(StrToInt(edt1.Text),StrToInt(edt2.Text));
p_subtracao(StrToInt(edt1.Text),StrToInt(edt2.Text));
p_divisao(StrToInt(edt1.Text),StrToInt(edt2.Text));
p_somar(StrToInt(edt1.Text),StrToInt(edt2.Text));


end;

end.
