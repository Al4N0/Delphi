unit tmentrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormEntrada = class(TForm)
    CBpessoa: TComboBox;
    Lbpessoa: TLabel;
    CBprograma: TComboBox;
    Lbprograma: TLabel;
    EditSaldo: TEdit;
    Lbsaldo: TLabel;
    Editcustomedio: TEdit;
    Lbcustomedio: TLabel;
    Lbclube: TLabel;
    CBclube: TComboBox;
    TBPessoa: TFDQuery;
    TBPrograma: TFDQuery;
    TBMovimento: TFDQuery;
    TBClube: TFDQuery;
    procedure CBpessoaDropDown(Sender: TObject);
    procedure CBprogramaDropDown(Sender: TObject);
    procedure CBclubeChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

uses
  tprincipal;

{$R *.dfm}

procedure TFormEntrada.CBclubeChange(Sender: TObject);
var
  TBClube: TFDQuery;

begin
  TBClube := TFDQuery.Create(Self);
  TBClube.Connection := FormPrincipal.BancomilhasConnection;
  TBClube.SQL.Text := 'SELECT nome FROM clube';
  TBClube.Open;
  CBclube.Items.Clear;
  TBClube.First;
  while not TBClube.Eof do
  begin
    CBclube.Items.Add(TBClube.FieldByName('nome').AsString);
    TBClube.Next;
  end;
  TBClube.Free;
end;

procedure TFormEntrada.CBpessoaDropDown(Sender: TObject);
var
  TBPessoas: TFDQuery;
begin
  // Crie e configure o TFDQuery
  TBPessoa := TFDQuery.Create(Self);
  TBPessoa.Connection := FormPrincipal.BancomilhasConnection;
  // Use a conex�o global
  TBPessoa.SQL.Text := 'SELECT nome FROM pessoa';

  // Abra o TFDQuery
  TBPessoa.Open;

  // Limpe o ComboBox1
  CBpessoa.Items.Clear;

  // Adicione cada registro ao ComboBox1
  TBPessoa.First;
  while not TBPessoa.Eof do
  begin
    CBpessoa.Items.Add(TBPessoa.FieldByName('nome').AsString);
    TBPessoa.Next;
  end;

  // Libere o TFDQuery
  TBPessoa.Free;
end;

procedure TFormEntrada.CBprogramaDropDown(Sender: TObject);
var
  TBPrograma: TFDQuery;
begin
  TBPrograma := TFDQuery.Create(Self);
  TBPrograma.Connection := FormPrincipal.BancomilhasConnection;
  TBPrograma.SQL.Text := 'SELECT nome FROM programa';

  TBPrograma.Open;

  CBprograma.Items.Clear;

  TBPrograma.First;
  while not TBPrograma.Eof do
  begin
    CBprograma.Items.Add(TBPrograma.FieldByName('nome').AsString);
    TBPrograma.Next;
  end;

  TBPrograma.Free;
end;

end.
