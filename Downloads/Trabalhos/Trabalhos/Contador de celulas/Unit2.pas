unit Unit2;

interface
//** inicio da classe cedula

type
Tcedular = class


private
    FQtdNotas50: Integer;
    FQtdNotas10: Integer;
    FQtdNotas1: Integer;
    FQtdNotas100: Integer;
    FQtdNotas5: Integer;
    FQtdNotas2: Integer;
    FFValorContagem: Integer;
    procedure SetQtdNotas1(const Value: Integer);
    procedure SetQtdNotas10(const Value: Integer);
    procedure SetQtdNotas100(const Value: Integer);
    procedure SetQtdNotas2(const Value: Integer);
    procedure SetQtdNotas5(const Value: Integer);
    procedure SetQtdNotas50(const Value: Integer);
    procedure SetFValorContagem(const Value: Integer);

public
   property QtdNotas100: Integer read FQtdNotas100 write SetQtdNotas100;
   property QtdNotas50:  Integer read FQtdNotas50 write SetQtdNotas50;
   property QtdNotas10:  Integer read FQtdNotas10 write SetQtdNotas10;
   property QtdNotas5:  Integer read FQtdNotas5 write SetQtdNotas5;
   property QtdNotas2:  Integer read FQtdNotas2 write SetQtdNotas2;
   property QtdNotas1:   Integer read FQtdNotas1 write SetQtdNotas1;
   property FValorContagem: Integer read FFValorContagem write SetFValorContagem;

   procedure Distribuicao;

end;

//**Fim da classe cedula
implementation

{ Tcedular }

procedure Tcedular.Distribuicao;
var
  iAux: integer;
begin
  iAux := FValorContagem; //Esta variável é a que vai conter o valor informado Ex: 1598
  FQtdNotas100 := iAux div 100;
  iAux := iAux mod 100;
  if iAux > 0 then
  begin
    FQtdNotas50 := iAux div 50;
    iAux := iAux mod 50;
    if iAux > 0 then
    begin
      FQtdNotas10 := iAux div 10;
      iAux := iAux mod 10;
      if iAux > 0 then
      begin
        FQtdNotas5 := iAux div 5;
        iAux := iAux mod 5;
        if iAux > 0 then
        begin
          FQtdNotas2 := iAux div 2;
          iAux := iAux mod 2;
          FQtdNotas1 := iAux;
        end;
      end;
    end;
  end;
end;


procedure Tcedular.SetFValorContagem(const Value: Integer);
begin
  FFValorContagem := Value;
end;

procedure Tcedular.SetQtdNotas1(const Value: Integer);
begin
  FQtdNotas1 := Value;
end;

procedure Tcedular.SetQtdNotas10(const Value: Integer);
begin
  FQtdNotas10 := Value;
end;

procedure Tcedular.SetQtdNotas100(const Value: Integer);
begin
  FQtdNotas100 := Value;
end;

procedure Tcedular.SetQtdNotas2(const Value: Integer);
begin
  FQtdNotas2 := Value;
end;

procedure Tcedular.SetQtdNotas5(const Value: Integer);
begin
  FQtdNotas5 := Value;
end;

procedure Tcedular.SetQtdNotas50(const Value: Integer);
begin
  FQtdNotas50 := Value;
end;

end.
