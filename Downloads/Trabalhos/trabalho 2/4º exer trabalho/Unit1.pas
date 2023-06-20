unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  vDividaDividoPorParcelas: Double;
  i: Integer;
  vAcumulaParcelaComJuros: Double;
  vVlrParcelaDividoPelaQtdParcelas,
  vlrFormatado,
  vlrMutiplicado: Double;
begin
  vDividaDividoPorParcelas := StrToFloat(LabeledEdit1.Text)/StrToFloat(LabeledEdit3.Text);
  Memo1.Lines.Add('Parcela: '+ FloatToStr(vDividaDividoPorParcelas));
  vAcumulaParcelaComJuros := vDividaDividoPorParcelas;
  for i := 1 to StrToInt(LabeledEdit3.Text)-1 do
  begin
    vDividaDividoPorParcelas := vDividaDividoPorParcelas + (vDividaDividoPorParcelas * (StrToFloat(LabeledEdit2.Text)/100));
    Memo1.Lines.Add('Parcela: '+ FloatToStr(vDividaDividoPorParcelas));
    vAcumulaParcelaComJuros := vAcumulaParcelaComJuros + vDividaDividoPorParcelas;
  end;
  Memo1.Lines.Add('Acumulado: '+ FloatToStr(vAcumulaParcelaComJuros));
  vVlrParcelaDividoPelaQtdParcelas := vAcumulaParcelaComJuros / StrToFLoat(LabeledEdit3.Text);
  Memo1.Lines.Add(FloatToStr(vAcumulaParcelaComJuros)+'/'+LabeledEdit3.Text +' = ' + FloatToStr(vVlrParcelaDividoPelaQtdParcelas));
  vlrFormatado := StrToFloat(FormatFloat('#,0.00',vVlrParcelaDividoPelaQtdParcelas));
  Memo1.Lines.Add('Valor formatado: '+FloatToStr(vlrFormatado));
  vlrMutiplicado := vlrFormatado * StrToFloat(LabeledEdit3.Text);
  Memo1.Lines.Add(FloatToStr(vlrFormatado)+' x '+ LabeledEdit3.Text +' = '+FloatToStr(vlrMutiplicado));
  
  if (vAcumulaParcelaComJuros <> vlrMutiplicado) then
  begin
    for i := 1 to StrToInt(LabeledEdit3.Text) do
    begin
      if (i = StrToInt(LabeledEdit3.Text)) then
        Memo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FloatToStr(StrToFloat(FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(LabeledEdit3.Text))))+  (vAcumulaParcelaComJuros-vlrMutiplicado)   ))
      else
        Memo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(LabeledEdit3.Text))));
    end;
  end else
  begin
    for i := 1 to StrToInt(LabeledEdit3.Text) do
    begin
        Memo1.Lines.Add('Parcela '+IntToStr(i)+':'+ FormatFloat('#,0.00',(vAcumulaParcelaComJuros/StrToFloat(LabeledEdit3.Text))));
    end;
  end;

end;

end.
