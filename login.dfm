object frmlogin: Tfrmlogin
  Left = 0
  Top = 0
  Caption = 'login'
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 360
    Width = 554
    Height = 63
    Color = clCaptionText
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 554
    Height = 29
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Color = clCream
    ParentColor = False
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 88
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
      object MDIFORM31: TMenuItem
        Caption = 'MDI FORM 3'
        OnClick = MDIFORM31Click
      end
      object MDIFORM41: TMenuItem
        Caption = 'MDI FORM 4'
        OnClick = MDIFORM41Click
      end
    end
    object WINDOW1: TMenuItem
      Caption = 'Setting'
      object ILE1: TMenuItem
        Caption = 'Tile'
        OnClick = ILE1Click
      end
      object CASCADE1: TMenuItem
        Caption = 'Cascade'
        OnClick = CASCADE1Click
      end
    end
  end
end
