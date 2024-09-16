unit UFrmCadastroClube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TFrmCadastroClube = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    ToggleSwitch1: TToggleSwitch;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClube: TFrmCadastroClube;

implementation

{$R *.dfm}

end.
