unit tcadastroclube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TFormCadastroClube = class(TForm)
    Lbprograma: TLabel;
    CBprograma1: TComboBox;
    TBPrograma1: TFDQuery;
    Lbnomeclube: TLabel;
    Edclubenome: TEdit;
    TBClube1: TFDQuery;
    Btcancelar: TButton;
    Btsalvar: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Lbdata: TLabel;
    Dtcadastroclube: TDateTimePicker;
    procedure CBprograma1DropDown(Sender: TObject);
    procedure BtcancelarClick(Sender: TObject);
    procedure BtsalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClube: TFormCadastroClube;

implementation

uses
  tprincipal,
  tcclube;

{$R *.dfm}

procedure TFormCadastroClube.BtcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroClube.BtsalvarClick(Sender: TObject);
var
  TBClube1: TFDQuery;
  ProgramaID: Integer;
begin
  if CBprograma1.ItemIndex = -1 then
  begin
    ShowMessage('Por favor, selecione um programa.');
    Exit;
  end;

  TBClube1 := TFDQuery.Create(Self);
  try
    TBClube1.Connection := FormPrincipal.BancomilhasConnection;
    TBClube1.SQL.Text := 'SELECT id_programa FROM programa WHERE nome = :nome';
    TBClube1.ParamByName('nome').AsString := CBprograma1.Text;
    TBClube1.Open;
    if not TBClube1.Eof then
      ProgramaID := TBClube1.FieldByName('id_programa').AsInteger
    else
    begin
      ShowMessage('Programa n�o encontrado');
      Exit;
    end;

  finally
    TBClube1.Free;
  end;
  TBClube1 := TFDQuery.Create(Self);
  try
    TBClube1.Connection := FormPrincipal.BancomilhasConnection;
    TBClube1.SQL.Text :=
      'INSERT INTO clube (nome, descricao, data_inicio, id_programa)' +
      'VALUES (:nome, :descricao, :data_inicio, :id_programa)';
    TBClube1.ParamByName('nome').AsString := Edclubenome.Text;
    TBClube1.ParamByName('descricao').AsString := Edit1.Text;
    TBClube1.ParamByName('data_inicio').AsDate := Dtcadastroclube.Date;
    TBClube1.ParamByName('id_programa').AsInteger := ProgramaID;

    TBClube1.ExecSQL;
    ShowMessage('Clube salvo com sucesso!');
  finally
    TBClube1.Free;

  end;
  Edclubenome.Clear;
  Edit1.Clear;
  Dtcadastroclube.Date := Now;
  CBprograma1.ItemIndex := -1;
end;

procedure TFormCadastroClube.CBprograma1DropDown(Sender: TObject);
begin
  TBPrograma1 := TFDQuery.Create(Self);
  TBPrograma1.Connection := FormPrincipal.BancomilhasConnection;
  TBPrograma1.SQL.Text := 'SELECT nome FROM programa';
  TBPrograma1.Open;
  CBprograma1.Items.Clear;
  TBPrograma1.First;
  while not TBPrograma1.Eof do
  begin
    CBprograma1.Items.Add(TBPrograma1.FieldByName('nome').AsString);
    TBPrograma1.Next
  end;
  TBPrograma1.Free;

end;

end.
