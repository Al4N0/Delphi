object FrmMovimentacaoEntrada: TFrmMovimentacaoEntrada
  Left = 0
  Top = 0
  Caption = 'Entrada Compra de Pontos / Milhas'
  ClientHeight = 586
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 101
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 53
    Width = 36
    Height = 13
    Caption = 'Nome *'
  end
  object Label2: TLabel
    Left = 282
    Top = 53
    Width = 55
    Height = 13
    Caption = 'Programa *'
  end
  object LabelSaldoPontos: TLabel
    Left = 482
    Top = 75
    Width = 105
    Height = 21
    AutoSize = False
  end
  object Label4: TLabel
    Left = 610
    Top = 75
    Width = 105
    Height = 21
    AutoSize = False
  end
  object Label5: TLabel
    Left = 482
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Saldo'
  end
  object Label6: TLabel
    Left = 610
    Top = 56
    Width = 59
    Height = 13
    Caption = 'Custo M'#233'dio'
  end
  object Label8: TLabel
    Left = 160
    Top = 125
    Width = 79
    Height = 13
    Caption = 'Entrada Milhas *'
  end
  object Label9: TLabel
    Left = 24
    Top = 125
    Width = 75
    Height = 13
    Caption = 'Pontos/Milhas *'
  end
  object Label10: TLabel
    Left = 464
    Top = 157
    Width = 60
    Height = 13
    Caption = 'Valor Total *'
  end
  object Lbvalormilheiro: TLabel
    Left = 610
    Top = 179
    Width = 183
    Height = 21
    AutoSize = False
  end
  object Label12: TLabel
    Left = 610
    Top = 160
    Width = 63
    Height = 13
    Caption = 'Valor Milheiro'
  end
  object Label13: TLabel
    Left = 24
    Top = 277
    Width = 62
    Height = 13
    Caption = 'Observa'#231#227'o:'
  end
  object Label3: TLabel
    Left = 24
    Top = 194
    Width = 107
    Height = 13
    Caption = 'Pontos/Milhas B'#244'nus *'
  end
  object Label7: TLabel
    Left = 160
    Top = 194
    Width = 79
    Height = 13
    Caption = 'Entrada B'#244'nus *'
  end
  object Label14: TLabel
    Left = 304
    Top = 125
    Width = 81
    Height = 13
    Caption = 'Validade Milhas *'
  end
  object Label15: TLabel
    Left = 304
    Top = 194
    Width = 81
    Height = 13
    Caption = 'Validade B'#244'nus *'
  end
  object Cbnome: TComboBox
    Left = 24
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 0
    OnDropDown = CbnomeDropDown
  end
  object Cbprograma: TComboBox
    Left = 282
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
    OnDropDown = CbprogramaDropDown
  end
  object Dtpentradapontos: TDateTimePicker
    Left = 160
    Top = 144
    Width = 129
    Height = 21
    Date = 45540.000000000000000000
    Time = 0.423839895833225500
    TabOrder = 2
    OnChange = DtpentradapontosChange
  end
  object Edpontos: TEdit
    Left = 24
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = EdpontosChange
  end
  object Edcusto: TEdit
    Left = 464
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edobs: TEdit
    Left = 24
    Top = 296
    Width = 737
    Height = 185
    AutoSelect = False
    AutoSize = False
    TabOrder = 5
  end
  object Btnsalvar: TButton
    Left = 24
    Top = 512
    Width = 97
    Height = 41
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = BtnsalvarClick
  end
  object Edpontosbonus: TEdit
    Left = 24
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 7
    OnChange = EdpontosbonusChange
  end
  object Dtpentradabonus: TDateTimePicker
    Left = 160
    Top = 213
    Width = 129
    Height = 21
    Date = 45540.000000000000000000
    Time = 0.423839895833225500
    TabOrder = 8
    OnChange = DtpentradabonusChange
  end
  object Dtpvalidadepontos: TDateTimePicker
    Left = 304
    Top = 144
    Width = 129
    Height = 21
    Date = 45540.000000000000000000
    Time = 0.423839895833225500
    TabOrder = 9
  end
  object Dtpvalidadebonus: TDateTimePicker
    Left = 304
    Top = 213
    Width = 129
    Height = 21
    Date = 45540.000000000000000000
    Time = 0.423839895833225500
    TabOrder = 10
  end
  object PessoaTable: TFDQuery
    Connection = FrmPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.pessoa')
    Left = 549
    Top = 411
  end
  object ProgramaTable: TFDQuery
    Connection = FrmPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.programa')
    Left = 482
    Top = 409
  end
  object MovimentoTable: TFDQuery
    Connection = FrmPrincipal.BancomilhasConnection
    SQL.Strings = (
      'SELECT * FROM bancomilhas.movimento')
    Left = 400
    Top = 408
  end
end
