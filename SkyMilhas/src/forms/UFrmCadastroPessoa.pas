unit UFrmCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ComCtrls;

type
  TFrmCadastroPessoa = class(TForm)
    Lbprincipal: TLabel;
    Ednome: TEdit;
    Lbnome: TLabel;
    Edcpf_cnpj: TEdit;
    Lbcpf_cnpj: TLabel;
    Edtelefone: TEdit;
    Lbtelefone: TLabel;
    Edit1: TEdit;
    Lbemail: TLabel;
    Dtpdata: TDateTimePicker;
    Lbdata: TLabel;
    Ts: TToggleSwitch;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPessoa: TFrmCadastroPessoa;

implementation

{$R *.dfm}

end.
