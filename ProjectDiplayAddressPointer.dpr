program ProjectDiplayAddressPointer;

uses
  Vcl.Forms,
  MainDiplayAddressPointer in 'MainDiplayAddressPointer.pas' {Form1},
  DiplayAddressPointer in 'DiplayAddressPointer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
