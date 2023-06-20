unit uValores;

interface
   uses
  Windows, Messages, SysUtils, Variants, Classes;
 type
    TValores = class

   private
    FQtdNotas100: Integer ;
    FQtdNotas50: Integer;
    FQtdNotas10: Integer;
    FQtdNotas5: Integer;
    FQtdNotas2: Integer;
    FQtdNotas1: Integer;
    FValorContagem : Integer;
    procedure SetFQtdNotas100(const Value: Integer);
    procedure SetFQtdNotas50(const Value: Integer);
    procedure SetFQtdNotas10(const Value: Integer);
    procedure SetFQtdNotas5(const Value: Integer);
    procedure SetFQtdNotas2(const Value: Integer);
    procedure SetFQtdNotas1(const Value: Integer);
     public
      property Notas100 : Integer read FQtdNotas100 write SetFQtdNotas100;
      property Notas50: Integer read FQtdNotas50 write SetFQtdNotas50;
      property Notas10: Integer read FQtdNotas10 write SetFQtdNotas10;
      property Notas5: Integer read FQtdNotas5 write SetFQtdNotas5;
      property Notas2: Integer read FQtdNotas2 write SetFQtdNotas2;
      property Notas1 : Integer read FQtdNotas1 write SetFQtdNotas1;
      procedure   distribuicao;
end;

implementation

uses
  uPrincipal;
   procedure TValores.SetFQtdNotas100(const Value: Integer);
begin
  FQtdNotas100 := Value;
end;

procedure TValores.SetFQtdNotas50(const Value: Integer);
begin
  FQtdNotas50 := Value;
end;
 procedure TValores.SetFQtdNotas10(const Value: Integer);
begin
  FQtdNotas10 := Value;
end;
procedure TValores.SetFQtdNotas5(const Value: Integer);
begin
  FQtdNotas5 := Value;
end;
procedure TValores.SetFQtdNotas2(const Value: Integer);
begin
  FQtdNotas2 := Value;
end;
procedure TValores.SetFQtdNotas1(const Value: Integer);
begin
  FQtdNotas1 := Value;
end;
procedure TValores.distribuicao;
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







