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
    Tbpessoas: TFDQuery;
    Mecpf: TMaskEdit;
    procedure BtcancelarClick(Sender: TObject);
    procedure BtsalvarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  Tbpessoas: TFDQuery;
begin
  // Crie e configure o TFDQuery
  Tbpessoas := TFDQuery.Create(Self);
  try
    Tbpessoas.Connection := FormPrincipal.DbmilhasConnection;
    // Use a conex�o global
    Tbpessoas.SQL.Text :=
      'INSERT INTO pessoas (nome, cpf_cnpj, nascimento, email, tel, ativo) ' +
      'VALUES (:nome, :cpf_cnpj, :nascimento, :email, :tel, :ativo)';
    Tbpessoas.ParamByName('nome').AsString := Ednome.Text;
    Tbpessoas.ParamByName('cpf_cnpj').AsString := Mecpf.Text;
    Tbpessoas.ParamByName('nascimento').AsDate := Dtnascimento.Date;
    Tbpessoas.ParamByName('email').AsString := Edemail.Text;
    Tbpessoas.ParamByName('tel').AsString := Edcelular.Text;
    Tbpessoas.ParamByName('ativo').AsBoolean := Tsativo.State = tssOn;

    // Execute a instru��o SQL
    Tbpessoas.ExecSQL;

    // Exibir uma mensagem de confirma��o
    ShowMessage('Nome salvo com sucesso!');
  finally
    Tbpessoas.Free;
  end;
end;

end.
