program proMilhas;

uses
  Vcl.Forms,
  tprincipal in 'view\tprincipal.pas' {FormPrincipal},
  tmentrada in 'view\tmentrada.pas' {FormEntrada},
  tcpessoas in 'view\tcpessoas.pas' {FormPessoas},
  tcadastropessoas in 'view\view.cadastros\tcadastropessoas.pas' {FormCadastroPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormEntrada, FormEntrada);
  Application.CreateForm(TFormPessoas, FormPessoas);
  Application.CreateForm(TFormCadastroPessoas, FormCadastroPessoas);
  Application.Run;
end.
