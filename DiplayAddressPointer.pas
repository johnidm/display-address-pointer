unit DiplayAddressPointer;

interface

type
  TDiplayAddressPointer = class
  strict private
    class function GetAddressOf( var AVariable ): string;
  public
    class function PointerToDec( var AVariable ): string;
    class function PointerToHex( var AVariable ): string;
  end;

implementation

uses
  System.SysUtils;

{ TDiplayAddressPointer }

class function TDiplayAddressPointer.GetAddressOf(var AVariable): string;
begin
  Result := IntToHex( Integer( Pointer( @AVariable ) ), 8 );
end;

class function TDiplayAddressPointer.PointerToDec(var AVariable): string;
begin
   Result:= IntToStr( StrToInt('$' + TDiplayAddressPointer.GetAddressOf( AVariable ) ) )
end;

class function TDiplayAddressPointer.PointerToHex(var AVariable): string;
begin
   Result:= IntToHex( StrToInt('$' + TDiplayAddressPointer.GetAddressOf( AVariable ) ) , 4)
end;

end.
