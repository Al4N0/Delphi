object FormEntrada: TFormEntrada
  Left = 0
  Top = 0
  Caption = 'Entrada'
  ClientHeight = 437
  ClientWidth = 1099
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
  object Lbpessoa: TLabel
    Left = 8
    Top = 13
    Width = 43
    Height = 13
    Caption = 'Pessoa *'
  end
  object Lbprograma: TLabel
    Left = 399
    Top = 13
    Width = 55
    Height = 13
    Caption = 'Programa *'
  end
  object Lbsaldo: TLabel
    Left = 819
    Top = 13
    Width = 54
    Height = 13
    Caption = 'Saldo Atual'
  end
  object Lbcustomedio: TLabel
    Left = 954
    Top = 13
    Width = 59
    Height = 13
    Caption = 'Custo M'#233'dio'
  end
  object Lbclube: TLabel
    Left = 615
    Top = 13
    Width = 36
    Height = 13
    Caption = 'Clube *'
  end
  object CBpessoa: TComboBox
    Left = 8
    Top = 32
    Width = 369
    Height = 21
    TabOrder = 0
    OnDropDown = CBpessoaDropDown
  end
  object CBprograma: TComboBox
    Left = 399
    Top = 32
    Width = 194
    Height = 21
    TabOrder = 1
    OnDropDown = CBprogramaDropDown
  end
  object EditSaldo: TEdit
    Left = 819
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Editcustomedio: TEdit
    Left = 954
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object CBclube: TComboBox
    Left = 615
    Top = 32
    Width = 186
    Height = 21
    TabOrder = 4
    OnChange = CBclubeChange
    OnDropDown = CBprogramaDropDown
  end
  object TBPessoa: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.pessoa')
    Left = 38
    Top = 99
  end
  object TBPrograma: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.programa')
    Left = 125
    Top = 96
  end
  object TBMovimento: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.movimento')
    Left = 209
    Top = 98
  end
  object TBClube: TFDQuery
    Connection = FormPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.clube')
    Left = 331
    Top = 94
  end
end
