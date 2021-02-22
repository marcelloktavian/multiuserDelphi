object frmlogin: Tfrmlogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 423
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 56
    object Contoh1: TMenuItem
      Caption = 'Contoh'
      object MDIFORM1: TMenuItem
        Caption = 'MDI FORM'
        OnClick = MDIFORM1Click
      end
      object MDIFORM21: TMenuItem
        Caption = 'MDI FORM 2'
        OnClick = MDIFORM21Click
      end
    end
  end
end
