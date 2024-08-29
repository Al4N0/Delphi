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
    CBpessoas: TComboBox;
    Lbpessoa: TLabel;
    TBPessoas: TFDQuery;
    CBprograma: TComboBox;
    Lbprograma: TLabel;
    TBPrograma: TFDQuery;
    EditSaldo: TEdit;
    Lbsaldo: TLabel;
    Editcustomedio: TEdit;
    Lbcustomedio: TLabel;
    TBMovimento: TFDQuery;
    procedure CBpessoasDropDown(Sender: TObject);
    procedure CBprogramaDropDown(Sender: TObject);

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

procedure TFormEntrada.CBpessoasDropDown(Sender: TObject);
var
  TBPessoas: TFDQuery;
begin
  // Crie e configure o TFDQuery
  TBPessoas := TFDQuery.Create(Self);
  TBPessoas.Connection := FormPrincipal.DbmilhasConnection;
  // Use a conex�o global
  TBPessoas.SQL.Text := 'SELECT nome FROM pessoas';

  // Abra o TFDQuery
  TBPessoas.Open;

  // Limpe o ComboBox1
  CBpessoas.Items.Clear;

  // Adicione cada registro ao ComboBox1
  TBPessoas.First;
  while not TBPessoas.Eof do
  begin
    CBpessoas.Items.Add(TBPessoas.FieldByName('nome').AsString);
    TBPessoas.Next;
  end;

  // Libere o TFDQuery
  TBPessoas.Free;
end;

procedure TFormEntrada.CBprogramaDropDown(Sender: TObject);
var
  TBPessoas: TFDQuery;
begin
  TBPessoas := TFDQuery.Create(Self);
  TBPessoas.Connection := FormPrincipal.DbmilhasConnection;
  TBPessoas.SQL.Text := 'SELECT nome FROM programa';

  TBPessoas.Open;

  CBprograma.Items.Clear;

  TBPessoas.First;
  while not TBPessoas.Eof do
  begin
    CBprograma.Items.Add(TBPessoas.FieldByName('nome').AsString);
    TBPessoas.Next;
  end;

  TBPessoas.Free;
end;

end.
