unit UFrmMovimentacaoEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmMovimentacaoEntrada = class(TForm)
    Cbnome: TComboBox;
    Label1: TLabel;
    Cbprograma: TComboBox;
    Label2: TLabel;
    LabelSaldoPontos: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Dtpentradapontos: TDateTimePicker;
    Label8: TLabel;
    Edpontos: TEdit;
    Label9: TLabel;
    Edcusto: TEdit;
    Label10: TLabel;
    Lbvalormilheiro: TLabel;
    Label12: TLabel;
    Edobs: TEdit;
    Label13: TLabel;
    Btnsalvar: TButton;
    PessoaTable: TFDQuery;
    ProgramaTable: TFDQuery;
    MovimentoTable: TFDQuery;
    Edpontosbonus: TEdit;
    Label3: TLabel;
    Dtpentradabonus: TDateTimePicker;
    Label7: TLabel;
    Dtpvalidadepontos: TDateTimePicker;
    Label14: TLabel;
    Dtpvalidadebonus: TDateTimePicker;
    Label15: TLabel;
    procedure CbnomeDropDown(Sender: TObject);
    procedure CbprogramaDropDown(Sender: TObject);
    procedure BtnsalvarClick(Sender: TObject);
    procedure DtpentradabonusChange(Sender: TObject);
    procedure DtpentradapontosChange(Sender: TObject);
    procedure EdpontosChange(Sender: TObject);
    procedure EdpontosbonusChange(Sender: TObject);
    procedure EdcustoChange(Sender: TObject);
  private
    procedure LimparCampos;
    procedure AtualizarValorMilheiro;
  public
    { Public declarations }
  end;

var
  FrmMovimentacaoEntrada: TFrmMovimentacaoEntrada;

implementation

uses
  UFrmPrincipal;

{$R *.dfm}

procedure TFrmMovimentacaoEntrada.BtnsalvarClick(Sender: TObject);
begin
  MovimentoTable := TFDQuery.Create(Self);
  try
    MovimentoTable.Connection := FrmPrincipal.BancomilhasConnection;
    MovimentoTable.SQL.Text :=
      'INSERT INTO movimento (id_pessoa, id_programa, tipo_movimento, tipo_origem, pontos, bonus, data_movimento, data_credito, data_credito_bonus, data_validade, data_validade_bonus, custo, obs)'
      + ' VALUES (:id_pessoa, :id_programa, :tipo_movimento, :tipo_origem, :pontos, :bonus, :data_movimento, :data_credito, :data_credito_bonus, :data_validade, :data_validade_bonus, :custo, :obs)';

    // Usa o valor associado ao objeto da ComboBox (id_pessoa)
    if Cbnome.ItemIndex <> -1 then
      MovimentoTable.ParamByName('id_pessoa').AsInteger :=
        Integer(Cbnome.Items.Objects[Cbnome.ItemIndex]);

    // Usa o valor associado ao objeto da ComboBox (id_programa)
    if Cbprograma.ItemIndex <> -1 then
      MovimentoTable.ParamByName('id_programa').AsInteger :=
        Integer(Cbprograma.Items.Objects[Cbprograma.ItemIndex]);

    MovimentoTable.ParamByName('tipo_movimento').AsString := 'Entrada';

    // Certifique-se de que o valor de tipo_origem � v�lido para o ENUM
    MovimentoTable.ParamByName('tipo_origem').AsString := 'Compra de Pontos';

    // Converte strings para Float
    MovimentoTable.ParamByName('pontos').AsFloat := StrToFloat(Edpontos.Text);
    MovimentoTable.ParamByName('bonus').AsFloat :=
      StrToFloatDef(Edpontosbonus.Text, 0);

    MovimentoTable.ParamByName('data_movimento').AsDate := Now;
    MovimentoTable.ParamByName('data_credito').AsDate := Dtpentradapontos.Date;
    MovimentoTable.ParamByName('data_credito_bonus').AsDate :=
      Dtpentradabonus.Date;
    MovimentoTable.ParamByName('data_validade').AsDate :=
      Dtpvalidadepontos.Date;
    MovimentoTable.ParamByName('data_validade_bonus').AsDate :=
      Dtpvalidadebonus.Date;

    // Converte o valor de custo para Float
    MovimentoTable.ParamByName('custo').AsFloat := StrToFloat(Edcusto.Text);

    MovimentoTable.ParamByName('obs').AsString := Edobs.Text;

    MovimentoTable.ExecSQL;
    ShowMessage('Entrada Salva com Sucesso!');

    // Limpar os campos ap�s salvar
    LimparCampos;
  finally
    MovimentoTable.Free;
  end;
end;

procedure TFrmMovimentacaoEntrada.LimparCampos;
begin
  Cbnome.ItemIndex := -1;
  Cbprograma.ItemIndex := -1;
  Dtpentradapontos.Date := Now;
  Edpontos.Clear;
  Edcusto.Clear;
  Edobs.Clear;
  Edpontosbonus.Clear;
  Dtpentradabonus.Date := Now;
  Dtpvalidadepontos.Date := Now;
  Dtpvalidadebonus.Date := Now;
  LabelSaldoPontos.Caption := 'Saldo de Pontos: 0';
  Lbvalormilheiro.Caption := 'Valor por Milheiro: 0';
end;

procedure TFrmMovimentacaoEntrada.CbnomeDropDown(Sender: TObject);
begin
  PessoaTable := TFDQuery.Create(Self);
  PessoaTable.Connection := FrmPrincipal.BancomilhasConnection;
  PessoaTable.SQL.Text := 'SELECT id_pessoa, nome FROM pessoa';
  PessoaTable.Open;
  Cbnome.Items.Clear;
  PessoaTable.First;
  while not PessoaTable.Eof do
  begin
    // Adiciona o nome e associa o id_pessoa
    Cbnome.Items.AddObject(PessoaTable.FieldByName('nome').AsString,
      TObject(PessoaTable.FieldByName('id_pessoa').AsInteger));
    PessoaTable.Next;
  end;
  PessoaTable.Free;
end;

procedure TFrmMovimentacaoEntrada.CbprogramaDropDown(Sender: TObject);
begin
  ProgramaTable := TFDQuery.Create(Self);
  ProgramaTable.Connection := FrmPrincipal.BancomilhasConnection;
  ProgramaTable.SQL.Text := 'SELECT id_programa, nome FROM programa';
  ProgramaTable.Open;
  Cbprograma.Items.Clear;
  ProgramaTable.First;
  while not ProgramaTable.Eof do
  begin
    // Adiciona o nome e associa o id_programa
    Cbprograma.Items.AddObject(ProgramaTable.FieldByName('nome').AsString,
      TObject(ProgramaTable.FieldByName('id_programa').AsInteger));
    ProgramaTable.Next;
  end;
  ProgramaTable.Free;
end;

procedure TFrmMovimentacaoEntrada.DtpentradabonusChange(Sender: TObject);
begin
  Dtpvalidadebonus.Date := IncMonth(Dtpentradabonus.Date, 6);
end;

procedure TFrmMovimentacaoEntrada.DtpentradapontosChange(Sender: TObject);
begin
  Dtpvalidadepontos.Date := IncMonth(Dtpentradapontos.Date, 24);
end;

procedure TFrmMovimentacaoEntrada.EdpontosbonusChange(Sender: TObject);
begin
  AtualizarValorMilheiro;
end;

procedure TFrmMovimentacaoEntrada.EdpontosChange(Sender: TObject);
begin
  AtualizarValorMilheiro;
end;

procedure TFrmMovimentacaoEntrada.EdcustoChange(Sender: TObject);
begin
  AtualizarValorMilheiro;
end;

procedure TFrmMovimentacaoEntrada.AtualizarValorMilheiro;
var
  Pontos, PontosBonus, Custo, ValorMilheiro: Double;
begin
  if TryStrToFloat(Edpontos.Text, Pontos) and TryStrToFloat(Edcusto.Text, Custo) then
  begin
    if not TryStrToFloat(Edpontosbonus.Text, PontosBonus) then
      PontosBonus := 0;

    if (Pontos + PontosBonus) <> 0 then
      ValorMilheiro := (Custo / (Pontos + PontosBonus)) * 1000
    else
      ValorMilheiro := 0;

    Lbvalormilheiro.Caption := 'Valor por Milheiro: ' +
      FormatFloat('0.00', ValorMilheiro);
  end
  else
  begin
    Lbvalormilheiro.Caption := 'Valor por Milheiro: 0';
  end;
end;

end.

