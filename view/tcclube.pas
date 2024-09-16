unit tcclube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, tcadastroclube;

type
  TFormClube = class(TForm)
    Btnovo: TButton;
    procedure BtnovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClube: TFormClube;

implementation

{$R *.dfm}

procedure TFormClube.BtnovoClick(Sender: TObject);
begin
  FormCadastroClube := TFormCadastroClube.Create(Self);
  try
    FormCadastroClube.ShowModal;
  finally
    FormCadastroClube.Free;
  end;
end;

end.
