unit uCarro;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
  
type
  T_Marca = (VW, FORD, FIAT, GM, HONDA);
  TCarro = class
  private
    FPotencia: Double;
    FQuantidadePneus: Integer;
    FModelo: String;
    FCor: String;
    FMarca: T_Marca;
    FCodigo: Integer;
    procedure SetCor(const Value: String);
    procedure SetMarca(const Value: T_Marca);
    procedure SetModelo(const Value: String);
    procedure SetPotencia(const Value: Double);
    procedure SetQuantidadePneus(const Value: Integer);
    procedure SetCodigo(const Value: Integer);
  protected
  public
    property QuantidadePneus:Integer read FQuantidadePneus write SetQuantidadePneus;
    property Cor: String read FCor write SetCor;
    property Marca: T_Marca read FMarca write SetMarca;
    property Modelo: String read FModelo write SetModelo;
    property Potencia: Double read FPotencia write SetPotencia;
    property Codigo: Integer read FCodigo write SetCodigo;
    procedure p_MostraMensagem;
    procedure p_Salvar;
    procedure p_Limpar;

//    constructor Create; override;
//    destructor Destroy; override;
  published

  end;


implementation

{ TCarro }

//constructor TCarro.Create;
//begin
//  inherited;
//
//end;

//destructor TCarro.Destroy;
//begin
//
//  inherited;
//end;

procedure TCarro.p_Limpar;
begin
  QuantidadePneus := 0;
  Cor := '';
  Modelo := '';
  Potencia := 0; 
  Codigo := 0;
end;

procedure TCarro.p_MostraMensagem;
begin
  ShowMessage(Cor);
end;

procedure TCarro.p_Salvar;
var
  obj: TStringList;
begin
  try
    obj := TStringList.Create;
    obj.Add('Código: '+IntToStr(Codigo));
    obj.Add('Modelo: '+Modelo);
    if Marca = VW then
      obj.Add('Marca: VW')
    else
    if Marca = FORD then
      obj.Add('Marca: FORD')
    else
    if Marca = FIAT then
      obj.Add('Marca: FIAT')
    else
    if Marca = GM then
      obj.Add('Marca: GM')
    else
    if Marca = HONDA then
      obj.Add('Marca: HONDA');

    obj.Add('Potência: '+ FloatToStr(Potencia));
    obj.Add('Qtd Pneus: '+ IntToStr(QuantidadePneus));
    obj.Add('Cor: '+ Cor);
    obj.SaveToFile('B:\!!BACKUP!!\Desktop');
  finally
    FreeAndNil(obj);
  end;
end;

procedure TCarro.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TCarro.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TCarro.SetMarca(const Value: T_Marca);
begin
  FMarca := Value;
end;

procedure TCarro.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TCarro.SetPotencia(const Value: Double);
begin
  FPotencia := Value;
end;

procedure TCarro.SetQuantidadePneus(const Value: Integer);
begin
  FQuantidadePneus := Value;
end;

end.
