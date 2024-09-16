unit tprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, tmentrada, tcpessoas, tcclube;

type
  TFormPrincipal = class(TForm)
    Menu1: TMainMenu;
    adas1: TMenuItem;
    Entrada1: TMenuItem;
    Compras1: TMenuItem;
    ransferncia1: TMenuItem;
    ransfentrePessoas1: TMenuItem;
    Agendamento1: TMenuItem;
    Venda1: TMenuItem;
    SadaManual1: TMenuItem;
    Passagem1: TMenuItem;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    Programa1: TMenuItem;
    Cartes1: TMenuItem;
    ContaBancria1: TMenuItem;
    Clubes1: TMenuItem;
    BancomilhasConnection: TFDConnection;
    procedure Entrada1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure Clubes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.Clubes1Click(Sender: TObject);
begin
  FormClube := TFormClube.Create(nil);
  try
    FormClube.ShowModal;
  finally
    FormClube.Free;
  end;
end;

procedure TFormPrincipal.Entrada1Click(Sender: TObject);

begin
  FormEntrada := TFormEntrada.Create(nil);
  try
    FormEntrada.ShowModal;
  finally
    FormEntrada.Free;
  end;
end;

procedure TFormPrincipal.Pessoa1Click(Sender: TObject);
var
  FormPessoas: TFormPessoas;
begin
  FormPessoas := TFormPessoas.Create(nil);
  try
    FormPessoas.ShowModal;
  finally
    FormPessoas.Free;
  end;
end;

end.
