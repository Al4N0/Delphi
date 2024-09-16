program SkyMilhas;

uses
  Vcl.Forms,
  UFrmPrincipal in 'src\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCadastroPessoa in 'src\forms\UFrmCadastroPessoa.pas' {FrmCadastroPessoa},
  UFrmCadastroPrograma in 'src\forms\UFrmCadastroPrograma.pas' {FrmCadastroPrograma},
  UFrmCadastroClube in 'src\forms\UFrmCadastroClube.pas' {FrmCadastroClube},
  UFrmCadastroCartao in 'src\forms\UFrmCadastroCartao.pas' {FrmCadastroCartao},
  UFrmMovimentacaoEntrada in 'src\forms\UFrmMovimentacaoEntrada.pas' {FrmMovimentacaoEntrada},
  UFrmMovimentacaoSaida in 'src\forms\UFrmMovimentacaoSaida.pas' {FrmMovimentacaoSaida};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroPessoa, FrmCadastroPessoa);
  Application.CreateForm(TFrmCadastroPrograma, FrmCadastroPrograma);
  Application.CreateForm(TFrmCadastroClube, FrmCadastroClube);
  Application.CreateForm(TFrmCadastroCartao, FrmCadastroCartao);
  Application.CreateForm(TFrmMovimentacaoEntrada, FrmMovimentacaoEntrada);
  Application.CreateForm(TFrmMovimentacaoSaida, FrmMovimentacaoSaida);
  Application.Run;
end.
