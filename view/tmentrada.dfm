object FormEntrada: TFormEntrada
  Left = 0
  Top = 0
  Caption = 'Entrada'
  ClientHeight = 437
  ClientWidth = 1016
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
    Left = 423
    Top = 13
    Width = 55
    Height = 13
    Caption = 'Programa *'
  end
  object Lbsaldo: TLabel
    Left = 648
    Top = 13
    Width = 54
    Height = 13
    Caption = 'Saldo Atual'
  end
  object Lbcustomedio: TLabel
    Left = 800
    Top = 13
    Width = 59
    Height = 13
    Caption = 'Custo M'#233'dio'
  end
  object CBpessoas: TComboBox
    Left = 8
    Top = 32
    Width = 385
    Height = 21
    TabOrder = 0
    OnDropDown = CBpessoasDropDown
  end
  object CBprograma: TComboBox
    Left = 423
    Top = 32
    Width = 194
    Height = 21
    TabOrder = 1
    OnDropDown = CBprogramaDropDown
  end
  object EditSaldo: TEdit
    Left = 648
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Editcustomedio: TEdit
    Left = 800
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object TBPessoas: TFDQuery
    Connection = FormPrincipal.DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.pessoas')
    Left = 56
    Top = 110
  end
  object TBPrograma: TFDQuery
    SQL.Strings = (
      'SELECT * FROM dbmilhas.programa')
    Left = 55
    Top = 171
  end
  object TBMovimento: TFDQuery
    SQL.Strings = (
      'SELECT * FROM dbmilhas.movimento')
    Left = 51
    Top = 225
  end
end
