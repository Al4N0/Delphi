unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    CadastrarPessoa1: TMenuItem;
    CadastrarPrograma1: TMenuItem;
    CadastrarClube1: TMenuItem;
    CadastrarCartao: TMenuItem;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    SaldodePontos1: TMenuItem;
    BancomilhasConnection: TFDConnection;
    CompraBonificada1: TMenuItem;
    ransferncia1: TMenuItem;
    ransfentrePessoas1: TMenuItem;
    Venda1: TMenuItem;
    Passagem1: TMenuItem;
    procedure CadastrarPessoa1Click(Sender: TObject);
    procedure CadastrarPrograma1Click(Sender: TObject);
    procedure CadastrarClube1Click(Sender: TObject);
    procedure CadastrarCartaoClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UFrmCadastroPessoa,
  UFrmCadastroClube,
  UFrmCadastroCartao,
  UFrmCadastroPrograma,
  UFrmMovimentacaoEntrada,
  UFrmMovimentacaoSaida;

{$R *.dfm}

procedure TFrmPrincipal.CadastrarCartaoClick(Sender: TObject);
begin
  FrmCadastroCartao := TFrmCadastroCartao.Create(nil);
  try
    FrmCadastroCartao.ShowModal;
  finally
    FrmCadastroCartao.Free;
  end;
end;

procedure TFrmPrincipal.CadastrarClube1Click(Sender: TObject);
begin
  FrmCadastroClube := TFrmCadastroClube.Create(nil);
  try
    FrmCadastroClube.ShowModal;
  finally
    FrmCadastroClube.Free;
  end;
end;

procedure TFrmPrincipal.CadastrarPessoa1Click(Sender: TObject);
begin
  FrmCadastroPessoa := TFrmCadastroPessoa.Create(nil);
  try
    FrmCadastroPessoa.ShowModal;
  finally
    FrmCadastroPessoa.Free;
  end;
end;

procedure TFrmPrincipal.CadastrarPrograma1Click(Sender: TObject);
begin
  FrmCadastroPrograma := TFrmCadastroPrograma.Create(nil);
  try
    FrmCadastroPrograma.ShowModal;
  finally
    FrmCadastroPrograma.Free;
  end;
end;

procedure TFrmPrincipal.Entrada1Click(Sender: TObject);
begin
  FrmMovimentacaoEntrada := TFrmMovimentacaoEntrada.Create(nil);
  try
    FrmMovimentacaoEntrada.ShowModal;
  finally
    FrmMovimentacaoEntrada.Free;
  end;
end;

procedure TFrmPrincipal.Saida1Click(Sender: TObject);
begin
  FrmMovimentacaoSaida := TFrmMovimentacaoSaida.Create(nil);
  try
    FrmMovimentacaoSaida.ShowModal;
  finally
    FrmMovimentacaoSaida.Free;
  end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
