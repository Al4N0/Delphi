unit tentrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormEntrada = class(TForm)
    DbmilhasConnection: TFDConnection;
    CartaoTable: TFDQuery;
    ClubeTable: TFDQuery;
    MovimentoTable: TFDQuery;
    PessoasTable: TFDQuery;
    ProgramaTable: TFDQuery;
    Ednome: TEdit;
    Lbnome: TLabel;
    Lbprograma: TLabel;
    Cbprograma: TComboBox;
    Eddesccartao: TEdit;
    Lbdesccartao: TLabel;
    Edvalorbonus: TEdit;
    Lbvalorbonus: TLabel;
    Edporcebonus: TEdit;
    Lbporcebonus: TLabel;
    Cbclube: TComboBox;
    Lbclube: TLabel;
    Dtentrada: TDateTimePicker;
    Lbdataentrada: TLabel;
    Lbentradabonus: TLabel;
    Dtentradabonus: TDateTimePicker;
    Lbtipo: TLabel;
    Cbtipo: TComboBox;
    DBTsaldo: TDBText;
    Lbsaldo: TLabel;
    DBTcustomedio: TDBText;
    Lbcustomedio: TLabel;
    Lbquantentrada: TLabel;
    Edquantentrada: TEdit;
    Lbcusto: TLabel;
    Edcusto: TEdit;
    Dsmovimento: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

{$R *.dfm}

end.
