{$mode objfpc}{$H+}

unit Persistence;

interface

type
  TPersistence = class
  public
    function Persistence(Num: Integer): Integer;
  end;
  
implementation

function TPersistence.Persistence(Num: Integer): Integer;
var
  MultiplicativePersistence: Integer;
  Temp: Integer;
begin
  MultiplicativePersistence:= 0;
  while Num > 9 do
  begin
    Temp:= 1;
	while Num > 0 do
	begin
	  Temp:= Temp * (Num mod 10);
	  Num:= Num div 10;
	end;
	Num:= Temp;
	MultiplicativePersistence:= MultiplicativePersistence + 1;
  end;
  Result:= MultiplicativePersistence;
end;

end.