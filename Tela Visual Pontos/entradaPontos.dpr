program entradaPontos;

uses
  Vcl.Forms,
  tentrada in 'view\tentrada.pas' {FormEntrada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormEntrada, FormEntrada);
  Application.Run;
end.
