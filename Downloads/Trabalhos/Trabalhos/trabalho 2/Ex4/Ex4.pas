unit Ex4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    mmo1: TMemo;
    lbl6: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  VDividaDividoPorParcelas: Double;
  i: Integer;
  vAcumulaParcelaComJuros: Double;
  vVlrParcelaDividoPelaQtdParcelas,
  vlrFormatado,
  vlrMutiplicado: Double;
begin
  vDividaDividoPorParcelas := StrToFloat(edt1.Text)/StrToFloat(edt3.Text);
  mmo1.Lines.Add('Parcela: '+ FloatToStr(vDividaDividoPorParcelas));
  vAcumulaParcelaComJuros := vDividaDividoPorParcelas;
  for i := 1 to StrToInt(edt3.Text)-1 do
  begin
    vDividaDividoPorParcelas := vDividaDividoPorParcelas + (vDividaDividoPorParcelas * (StrToFloat(edt2.Text)/100));
    mmo1.Lines.Add('Parcela: '+ FloatToStr(vDividaDividoPorParcelas));
    vAcumulaParcelaComJuros := vAcumulaParcelaComJuros + vDividaDividoPorParcelas;
  end;
  mmo1.Lines.Add('Acumulado: '+ FloatToStr(vAcumulaParcelaComJuros));
  vVlrParcelaDividoPelaQtdParcelas := vAcumulaParcelaComJuros / StrToFLoat(edt3.Text);
  mmo1.Lines.Add(FloatToStr(vAcumulaParcelaComJuros)+'/'+edt3.Text +' = ' + FloatToStr(vVlrParcelaDividoPelaQtdParcelas));
  vlrFormatado := StrToFloat(FormatFloat('#,0.00',vVlrParcelaDividoPelaQtdParcelas));
  mmo1.Lines.Add('Valor formatado: '+FloatToStr(vlrFormatado));
  vlrMutiplicado := vlrFormatado * StrToFloat(edt3.Text);
  mmo1.Lines.Add(FloatToStr(vlrFormatado)+' x '+ edt3.Text +' = '+FloatToStr(vlrMutiplicado));

  if (vAcumulaParcelaComJuros <> vlrMutiplicado) then
  begin
    for i := 1 to StrToInt(edt3.Text) do
    begin
      if (i = StrToInt(edt3.Text)) then
        mmo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FloatToStr(StrToFloat(FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(edt3.Text))))+  (vAcumulaParcelaComJuros-vlrMutiplicado)   ))
      else
        mmo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(edt3.Text))));
    end;
  end else
  begin
    for i := 1 to StrToInt(edt3.Text) do
    begin
        mmo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(edt3.Text))));
    end;
  end;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
mmo1.Clear;
end;

end.
