object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Menu Utama'
  ClientHeight = 665
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMinimized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 665
    Align = alClient
    Caption = 'Panel1'
    Color = clRed
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 701
    ExplicitHeight = 377
    object Label1: TLabel
      Left = 111
      Top = 28
      Width = 74
      Height = 13
      Caption = 'Coba MDI Form'
    end
    object Button1: TButton
      Left = 30
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
end
