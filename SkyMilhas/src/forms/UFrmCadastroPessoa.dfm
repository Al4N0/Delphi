object FrmCadastroPessoa: TFrmCadastroPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastrar Pessoa'
  ClientHeight = 779
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 101
  TextHeight = 13
  object Lbprincipal: TLabel
    Left = 0
    Top = 0
    Width = 898
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar Pessoa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 243
  end
  object Lbnome: TLabel
    Left = 24
    Top = 61
    Width = 57
    Height = 21
    Caption = 'Nome *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbcpf_cnpj: TLabel
    Left = 432
    Top = 61
    Width = 96
    Height = 21
    Caption = 'CPF / CNPJ *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbtelefone: TLabel
    Left = 664
    Top = 61
    Width = 78
    Height = 21
    Caption = 'Telefone *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbemail: TLabel
    Left = 24
    Top = 157
    Width = 61
    Height = 21
    Caption = 'E-mail *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbdata: TLabel
    Left = 432
    Top = 157
    Width = 160
    Height = 21
    Caption = 'Data de Nascimento*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Ednome: TEdit
    Left = 24
    Top = 88
    Width = 385
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edcpf_cnpj: TEdit
    Left = 432
    Top = 88
    Width = 209
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edtelefone: TEdit
    Left = 664
    Top = 88
    Width = 209
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 24
    Top = 184
    Width = 385
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Dtpdata: TDateTimePicker
    Left = 432
    Top = 184
    Width = 186
    Height = 29
    Date = 45538.000000000000000000
    Time = 0.790658298610651400
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Ts: TToggleSwitch
    Left = 721
    Top = 184
    Width = 72
    Height = 20
    TabOrder = 5
  end
end
