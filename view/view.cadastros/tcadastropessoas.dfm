object FormCadastroPessoas: TFormCadastroPessoas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 546
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 101
  TextHeight = 13
  object Lbnome: TLabel
    Left = 24
    Top = 21
    Width = 36
    Height = 13
    Caption = 'Nome *'
  end
  object Lbcpf: TLabel
    Left = 784
    Top = 21
    Width = 28
    Height = 13
    Caption = 'CPF *'
  end
  object Lbdata: TLabel
    Left = 24
    Top = 85
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Lbemail: TLabel
    Left = 320
    Top = 85
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Lbcelular: TLabel
    Left = 24
    Top = 141
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Lbtipocomissao: TLabel
    Left = 352
    Top = 141
    Width = 83
    Height = 13
    Caption = 'Tipo de Comiss'#227'o'
  end
  object Lbcomissao: TLabel
    Left = 528
    Top = 141
    Width = 45
    Height = 13
    Caption = 'Comiss'#227'o'
  end
  object Lbobs: TLabel
    Left = 24
    Top = 197
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object Lbativo: TLabel
    Left = 24
    Top = 381
    Width = 25
    Height = 13
    Caption = 'Ativo'
  end
  object Ednome: TEdit
    Left = 24
    Top = 40
    Width = 729
    Height = 21
    TabOrder = 0
  end
  object Dtnascimento: TDateTimePicker
    Left = 24
    Top = 104
    Width = 265
    Height = 21
    Date = 45533.000000000000000000
    Time = 0.482207673609082100
    TabOrder = 1
  end
  object Edemail: TEdit
    Left = 320
    Top = 104
    Width = 737
    Height = 21
    TabOrder = 2
  end
  object Edcelular: TEdit
    Left = 24
    Top = 160
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object Cbcomissao: TComboBox
    Left = 352
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Edcomissao: TEdit
    Left = 528
    Top = 160
    Width = 153
    Height = 21
    TabOrder = 5
  end
  object Edobs: TEdit
    Left = 24
    Top = 216
    Width = 1033
    Height = 145
    AutoSize = False
    TabOrder = 6
  end
  object Tsativo: TToggleSwitch
    Left = 24
    Top = 400
    Width = 72
    Height = 20
    TabOrder = 7
  end
  object Btcancelar: TButton
    Left = 24
    Top = 456
    Width = 121
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = BtcancelarClick
  end
  object Btsalvar: TButton
    Left = 168
    Top = 456
    Width = 121
    Height = 49
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = BtsalvarClick
  end
  object Mecpf: TMaskEdit
    Left = 784
    Top = 40
    Width = 271
    Height = 21
    EditMask = '000.000.000-00;1;_'
    MaxLength = 14
    TabOrder = 10
    Text = '   .   .   -  '
  end
  object Tbpessoa: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.pessoa')
    Left = 820
    Top = 454
  end
end
