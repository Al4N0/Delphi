unit tcadastropessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask;

type
  TFormCadastroPessoas = class(TForm)
    Ednome: TEdit;
    Lbnome: TLabel;
    Lbcpf: TLabel;
    Dtnascimento: TDateTimePicker;
    Lbdata: TLabel;
    Edemail: TEdit;
    Lbemail: TLabel;
    Edcelular: TEdit;
    Lbcelular: TLabel;
    Cbcomissao: TComboBox;
    Lbtipocomissao: TLabel;
    Edcomissao: TEdit;
    Lbcomissao: TLabel;
    Edobs: TEdit;
    Lbobs: TLabel;
    Tsativo: TToggleSwitch;
    Lbativo: TLabel;
    Btcancelar: TButton;
    Btsalvar: TButton;
    Mecpf: TMaskEdit;
    Tbpessoa: TFDQuery;
    procedure BtcancelarClick(Sender: TObject);
    procedure BtsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPessoas: TFormCadastroPessoas;

implementation

uses
  tprincipal,
  tcpessoas;

{$R *.dfm}

procedure TFormCadastroPessoas.BtcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroPessoas.BtsalvarClick(Sender: TObject);
var
  Tbpessoa: TFDQuery;
begin
  // Crie e configure o TFDQuery
  Tbpessoa := TFDQuery.Create(Self);
  try
    Tbpessoa.Connection := FormPrincipal.BancomilhasConnection;
    // Use a conex�o global
    Tbpessoa.SQL.Text :=
      'INSERT INTO pessoa (nome, cpf_cnpj, data_nascimento, email, telefone, obs, ativo) ' +
      'VALUES (:nome, :cpf_cnpj, :data_nascimento, :email, :telefone, :obs, :ativo)';
    Tbpessoa.ParamByName('nome').AsString := Ednome.Text;
    Tbpessoa.ParamByName('cpf_cnpj').AsString := Mecpf.Text;
    Tbpessoa.ParamByName('email').AsString := Edemail.Text;
    Tbpessoa.ParamByName('telefone').AsString := Edcelular.Text;
    Tbpessoa.ParamByName('data_nascimento').AsDate := Dtnascimento.Date;
    Tbpessoa.ParamByName('obs').AsString := Edobs.Text;
    Tbpessoa.ParamByName('ativo').AsBoolean := Tsativo.State = tssOn;

    // Execute a instru��o SQL
    Tbpessoa.ExecSQL;

    // Exibir uma mensagem de confirma��o
    ShowMessage('Nome salvo com sucesso!');
  finally
    Tbpessoa.Free;
  end;
  Ednome.Clear;
  Mecpf.Clear;
  Dtnascimento.Date := Now;
  Edemail.Clear;
  Edobs.Clear;
  Edcelular.Clear;
end;

end.
