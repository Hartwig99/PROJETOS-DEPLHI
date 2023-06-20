unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCarro, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    MeuCarro: TCarro;

    function f_Salvar: Boolean;
    procedure p_Limpa;
    procedure p_Pesquisa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;

function TForm1.f_Salvar: Boolean;
begin
  try
    MeuCarro.Cor := Edit5.Text;
    case ComboBox1.ItemIndex of
     1: MeuCarro.Marca := VW;
     2: MeuCarro.Marca := FORD;
     3: MeuCarro.Marca := FIAT;
     4: MeuCarro.Marca := GM;
     5: MeuCarro.Marca := HONDA;               
    end;
    MeuCarro.Codigo := StrToInt(Edit6.Text);
    MeuCarro.Modelo := Edit1.Text;
    MeuCarro.Potencia := StrToInt(Edit3.Text);
    MeuCarro.QuantidadePneus := StrToInt(Edit4.Text);
    MeuCarro.p_Salvar;
  finally
    MeuCarro.Free;
  end;
end;

procedure TForm1.p_Limpa;
begin
  MeuCarro.p_Limpar;
  Edit1.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.p_Pesquisa;
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MeuCarro := TCarro.Create;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if f_Salvar then
    p_Limpa;
end;

end.
