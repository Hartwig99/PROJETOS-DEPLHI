unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    tbc1: TTabControl;
    tbc2: TTabControl;
    edt1: TEdit;
    Label1: TLabel;
    edt2: TEdit;
    Label2: TLabel;
    lb3: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl1: TLabel;
    Label3: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    lbl3: TLabel;
    edt7: TEdit;
    lbl4: TLabel;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    procedure btn1Click(Sender: TObject);
  private
      
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt7.Text := FloatToStr(StrToFloat(edt2.Text) - StrToFloat(edt1.Text));
  edt8.Text := FloatToStr(StrToFloat(edt7.Text) / StrToFloat(edt4.Text));
  edt9.Text := FloatToStr((StrToFloat(edt3.Text) - StrToFloat(edt4.Text)) * StrToFloat(edt8.Text));
  edt10.Text := FloatToStr(StrToFloat(edt4.Text) * StrToFloat(edt5.Text));

  if (StrToFloat(edt6.Text) < StrToFloat(edt8.Text)) then
  begin
    ShowMessage('o cosumo do veiculo  esta acima do esperado');
  end

 else if(StrToFloat(edt6.Text) < StrToFloat(edt8.Text)) then

      begin
        ShowMessage('o cosumo do veiculo  esta baixo do esperado');
      end;
  end;


end.
