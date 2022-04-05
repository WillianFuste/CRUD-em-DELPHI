unit uNumero;

interface

implementation

function numeros(AString: String): String;
var
  I: integer;
  Limpos: String;
begin
  Limpos := '';

  for I := 1 to Length(AString) do
  begin
    if Pos(Copy(AString, I, 1), '0123456789') <> 0 then
      Limpos := Limpos + Copy(AString, I, 1);

  end;
  result := Limpos;

end;

end.
