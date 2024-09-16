object FormCadastroClube: TFormCadastroClube
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clubes'
  ClientHeight = 593
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 101
  TextHeight = 13
  object Lbprograma: TLabel
    Left = 16
    Top = 13
    Width = 55
    Height = 13
    Caption = 'Programa *'
  end
  object Lbnomeclube: TLabel
    Left = 224
    Top = 13
    Width = 36
    Height = 13
    Caption = 'Nome *'
  end
  object Label1: TLabel
    Left = 568
    Top = 13
    Width = 55
    Height = 13
    Caption = 'Descri'#231#227'o *'
  end
  object Lbdata: TLabel
    Left = 8
    Top = 77
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object CBprograma1: TComboBox
    Left = 8
    Top = 32
    Width = 194
    Height = 21
    TabOrder = 0
    OnDropDown = CBprograma1DropDown
  end
  object Edclubenome: TEdit
    Left = 224
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object Btcancelar: TButton
    Left = 16
    Top = 512
    Width = 121
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtcancelarClick
  end
  object Btsalvar: TButton
    Left = 160
    Top = 512
    Width = 121
    Height = 49
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtsalvarClick
  end
  object Edit1: TEdit
    Left = 568
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object Dtcadastroclube: TDateTimePicker
    Left = 8
    Top = 96
    Width = 265
    Height = 21
    Date = 45533.000000000000000000
    Time = 0.482207673609082100
    TabOrder = 5
  end
  object TBPrograma1: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.programa')
    Left = 101
    Top = 171
  end
  object TBClube1: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.clube')
    Left = 37
    Top = 172
  end
end
