unit UFrmCadastroCartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TFrmCadastroCartao = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    ToggleSwitch1: TToggleSwitch;
    Label7: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCartao: TFrmCadastroCartao;

implementation

{$R *.dfm}

end.
