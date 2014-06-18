unit MainDiplayAddressPointer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DiplayAddressPointer;

resourcestring
  RSDisplay = 'Variable %s | Dec: %s - Hex: %s';


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
  s: string;
  b: Boolean;
begin

  Memo1.Clear();

  Memo1.Lines.Add( Format(RSDisplay, ['i', TDiplayAddressPointer.PointerToDec(i), TDiplayAddressPointer.PointerToHex(i) ]) );
  Memo1.Lines.Add( Format(RSDisplay, ['s', TDiplayAddressPointer.PointerToDec(s), TDiplayAddressPointer.PointerToHex(s) ]) );
  Memo1.Lines.Add( Format(RSDisplay, ['b', TDiplayAddressPointer.PointerToDec(b), TDiplayAddressPointer.PointerToHex(b) ]) );
end;

procedure TForm1.Button2Click(Sender: TObject);
var

  arrI: array of Integer;
  arrS: array of Boolean;

  i: Integer;
begin
  Memo1.Clear();

  SetLength( arrI, 3 );

  Memo1.Lines.Add( 'Array type integer' );
  for i := Low(arrI) to High(arrI) do
  begin
     Memo1.Lines.Add( Format(RSDisplay,
       ['Index ' + i.ToString(), TDiplayAddressPointer.PointerToDec(arrI[i]), TDiplayAddressPointer.PointerToHex(arrI[i]) ]) );
  end;

  SetLength( arrS, 3 );
  Memo1.Lines.Add( 'Array type string' );
  for i := Low(arrS) to High(arrS) do
  begin
     Memo1.Lines.Add( Format(RSDisplay,
       ['Index ' + i.ToString(), TDiplayAddressPointer.PointerToDec(arrS[i]), TDiplayAddressPointer.PointerToHex(arrS[i]) ]) );
  end;

end;

end.
