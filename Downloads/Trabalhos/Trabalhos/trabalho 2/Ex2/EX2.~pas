unit EX2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    mmo1: TMemo;
    mmo2: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    procedure p_calcula(num1,num2: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.p_calcula(num1, num2: Integer);
var
  I : Integer;
begin
      for I:=num1 to num2 do
      if(I mod 2 = 0) then
        begin
          mmo1.Lines.Add(IntToStr(I));
        end
      else if  (I mod 2 = 1) then
         begin
             mmo2.Lines.Add(IntToStr(I));
         end;
          end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 p_calcula(StrToInt(edt1.Text) ,StrToInt(edt2.Text));

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
mmo1.Clear;
mmo2.Clear
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Close;
end;

end.
