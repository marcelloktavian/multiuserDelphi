object frmMdi2: TfrmMdi2
  Left = 0
  Top = 0
  Caption = 'Coba MDI 2'
  ClientHeight = 458
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 232
    Top = 88
    Width = 46
    Height = 13
    Caption = 'mdiForm2'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 458
    Align = alClient
    Caption = 'Panel1'
    Color = clAqua
    ParentBackground = False
    TabOrder = 0
    object AdvStringGrid1: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 725
      Height = 456
      Cursor = crDefault
      Align = alClient
      DrawingStyle = gdsClassic
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.7.0'
      ExplicitLeft = 296
      ExplicitTop = 208
      ExplicitWidth = 400
      ExplicitHeight = 250
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=C:\Users\aditya\Documents\GitHub\multiuserDelphi\konek' +
      'si.udl'
    LoginPrompt = False
    Left = 409
    Top = 321
  end
  object master: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblso')
    Left = 521
    Top = 297
    object masterid_so: TStringField
      FieldName = 'id_so'
      FixedChar = True
      Size = 15
    end
    object masterkode: TStringField
      FieldName = 'kode'
      FixedChar = True
      Size = 15
    end
    object mastertgl_trans: TDateField
      FieldName = 'tgl_trans'
    end
    object masterid_cust: TStringField
      FieldName = 'id_cust'
      FixedChar = True
      Size = 15
    end
    object masterTotalKG: TFloatField
      FieldName = 'TotalKG'
    end
    object masterTotalQty: TFloatField
      FieldName = 'TotalQty'
    end
    object masterTotalFaktur: TFloatField
      FieldName = 'TotalFaktur'
    end
    object masterTotalDisc: TFloatField
      FieldName = 'TotalDisc'
    end
    object masterUangMuka: TFloatField
      FieldName = 'UangMuka'
    end
    object masterPiutang: TFloatField
      FieldName = 'Piutang'
    end
    object masterKeterangan: TStringField
      FieldName = 'Keterangan'
      FixedChar = True
      Size = 200
    end
    object masterstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object masterlastmodified: TDateTimeField
      FieldName = 'lastmodified'
    end
    object masteruser: TStringField
      FieldName = 'user'
      FixedChar = True
      Size = 30
    end
    object masterarchive: TStringField
      FieldName = 'archive'
      FixedChar = True
      Size = 1
    end
  end
  object detail: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblsodet')
    Left = 601
    Top = 313
    object detailid_SOdet: TAutoIncField
      FieldName = 'id_SOdet'
      ReadOnly = True
    end
    object detailid_so: TStringField
      FieldName = 'id_so'
      FixedChar = True
      Size = 15
    end
    object detailid_grey: TStringField
      FieldName = 'id_grey'
      FixedChar = True
      Size = 15
    end
    object detailid_cust: TStringField
      FieldName = 'id_cust'
      FixedChar = True
      Size = 15
    end
    object detailid_w: TStringField
      FieldName = 'id_w'
      FixedChar = True
      Size = 15
    end
    object detailid_jw: TStringField
      FieldName = 'id_jw'
      FixedChar = True
      Size = 15
    end
    object detailkg: TFloatField
      FieldName = 'kg'
    end
    object detailqty: TFloatField
      FieldName = 'qty'
    end
    object detailhargajual: TFloatField
      FieldName = 'hargajual'
    end
    object detailsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object detailsetting: TIntegerField
      FieldName = 'setting'
    end
    object detailketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
      Size = 200
    end
    object detailhardener: TFloatField
      FieldName = 'hardener'
    end
    object detailsoftener: TFloatField
      FieldName = 'softener'
    end
    object detailfiller: TFloatField
      FieldName = 'filler'
    end
    object detailjasapo: TIntegerField
      FieldName = 'jasapo'
    end
    object detaillastmodified: TDateTimeField
      FieldName = 'lastmodified'
    end
  end
end
