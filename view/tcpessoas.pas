unit tcpessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, tcadastropessoas;

type
  TFormPessoas = class(TForm)
    Btnovo: TButton;
    procedure BtnovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPessoas: TFormPessoas;

implementation

uses
  tprincipal;

{$R *.dfm}

procedure TFormPessoas.BtnovoClick(Sender: TObject);
begin
  FormCadastroPessoas := TFormCadastroPessoas.Create(Self);
  try
    FormCadastroPessoas.ShowModal;
  finally
    FormCadastroPessoas.Free;
  end;
end;

end.
