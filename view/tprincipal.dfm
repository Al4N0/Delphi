object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'ProMilhas'
  ClientHeight = 298
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 101
  TextHeight = 13
  object Menu1: TMainMenu
    Left = 8
    Top = 8
    object adas1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Entrada1: TMenuItem
        Caption = 'Entrada'
        OnClick = Entrada1Click
      end
      object Compras1: TMenuItem
        Caption = 'Compras'
      end
      object ransferncia1: TMenuItem
        Caption = 'Transfer'#234'ncia'
      end
      object ransfentrePessoas1: TMenuItem
        Caption = 'Transf. entre Pessoas'
      end
      object Agendamento1: TMenuItem
        Caption = 'Agendamento'
      end
      object Venda1: TMenuItem
        Caption = 'Venda'
      end
      object SadaManual1: TMenuItem
        Caption = 'Sa'#237'da Manual'
      end
      object Passagem1: TMenuItem
        Caption = 'Passagem'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastros'
      object Pessoa1: TMenuItem
        Caption = 'Pessoas'
        OnClick = Pessoa1Click
      end
      object Programa1: TMenuItem
        Caption = 'Programa'
      end
      object Clubes1: TMenuItem
        Caption = 'Clubes'
        OnClick = Clubes1Click
      end
      object Cartes1: TMenuItem
        Caption = 'Cart'#245'es'
      end
      object ContaBancria1: TMenuItem
        Caption = 'Conta Banc'#225'ria'
      end
    end
  end
  object BancomilhasConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=bancomilhas')
    LoginPrompt = False
    Left = 449
    Top = 181
  end
end
