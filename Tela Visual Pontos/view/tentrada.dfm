object FormEntrada: TFormEntrada
  Left = 0
  Top = 0
  Caption = 'Entrada de Pontos'
  ClientHeight = 618
  ClientWidth = 1105
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
  object Lbnome: TLabel
    Left = 16
    Top = 29
    Width = 36
    Height = 13
    Caption = 'Nome *'
  end
  object Lbprograma: TLabel
    Left = 528
    Top = 29
    Width = 55
    Height = 13
    Caption = 'Programa *'
  end
  object Lbdesccartao: TLabel
    Left = 512
    Top = 101
    Width = 81
    Height = 13
    Caption = 'Desconto Cart'#227'o'
  end
  object Lbvalorbonus: TLabel
    Left = 656
    Top = 101
    Width = 71
    Height = 13
    Caption = 'Valor do Bonus'
  end
  object Lbporcebonus: TLabel
    Left = 808
    Top = 101
    Width = 58
    Height = 13
    Caption = '% do Bonus'
  end
  object Lbclube: TLabel
    Left = 752
    Top = 29
    Width = 36
    Height = 13
    Caption = 'Clube *'
  end
  object Lbdataentrada: TLabel
    Left = 960
    Top = 29
    Width = 38
    Height = 13
    Caption = 'Entrada'
  end
  object Lbentradabonus: TLabel
    Left = 960
    Top = 101
    Width = 85
    Height = 13
    Caption = 'Entrada do Bonus'
  end
  object Lbtipo: TLabel
    Left = 16
    Top = 101
    Width = 76
    Height = 13
    Caption = 'Tipo de Entrada'
  end
  object DBTsaldo: TDBText
    Left = 164
    Top = 235
    Width = 233
    Height = 54
    DataField = 'saldo'
    DataSource = Dsmovimento
  end
  object Lbsaldo: TLabel
    Left = 164
    Top = 216
    Width = 77
    Height = 13
    Caption = 'Saldo de Pontos'
  end
  object DBTcustomedio: TDBText
    Left = 512
    Top = 235
    Width = 233
    Height = 54
    DataField = 'data_movimento'
    DataSource = Dsmovimento
  end
  object Lbcustomedio: TLabel
    Left = 512
    Top = 216
    Width = 59
    Height = 13
    Caption = 'Custo M'#233'dio'
  end
  object Lbquantentrada: TLabel
    Left = 208
    Top = 101
    Width = 107
    Height = 13
    Caption = 'Quantidade de Pontos'
  end
  object Lbcusto: TLabel
    Left = 360
    Top = 101
    Width = 37
    Height = 13
    Caption = 'Custo *'
  end
  object Ednome: TEdit
    Left = 16
    Top = 48
    Width = 481
    Height = 21
    TabOrder = 0
  end
  object Cbprograma: TComboBox
    Left = 528
    Top = 48
    Width = 194
    Height = 21
    TabOrder = 1
  end
  object Eddesccartao: TEdit
    Left = 512
    Top = 120
    Width = 113
    Height = 21
    TabOrder = 2
  end
  object Edvalorbonus: TEdit
    Left = 656
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edporcebonus: TEdit
    Left = 808
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Cbclube: TComboBox
    Left = 752
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object Dtentrada: TDateTimePicker
    Left = 960
    Top = 48
    Width = 113
    Height = 21
    Date = 45533.000000000000000000
    Time = 0.754902442131424300
    TabOrder = 6
  end
  object Dtentradabonus: TDateTimePicker
    Left = 960
    Top = 120
    Width = 113
    Height = 21
    Date = 45533.000000000000000000
    Time = 0.754902442131424300
    TabOrder = 7
  end
  object Cbtipo: TComboBox
    Left = 16
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object Edquantentrada: TEdit
    Left = 208
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edcusto: TEdit
    Left = 360
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object DbmilhasConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=dbmilhas')
    Connected = True
    LoginPrompt = False
    Left = 874
    Top = 520
  end
  object CartaoTable: TFDQuery
    Connection = DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.cartao')
    Left = 503
    Top = 476
  end
  object ClubeTable: TFDQuery
    Connection = DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.clube')
    Left = 1052
    Top = 518
  end
  object MovimentoTable: TFDQuery
    Connection = DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.movimento')
    Left = 979
    Top = 519
  end
  object PessoasTable: TFDQuery
    Connection = DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.pessoas')
    Left = 362
    Top = 509
  end
  object ProgramaTable: TFDQuery
    Connection = DbmilhasConnection
    SQL.Strings = (
      'SELECT * FROM dbmilhas.programa')
    Left = 755
    Top = 516
  end
  object Dsmovimento: TDataSource
    DataSet = MovimentoTable
    Left = 592
    Top = 464
  end
end
