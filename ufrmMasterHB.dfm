inherited frmMasterHB: TfrmMasterHB
  Left = 226
  Top = 174
  ClientHeight = 446
  ClientWidth = 601
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited mmSQL: TMemo
    Left = 372
    Lines.Strings = (
      
        'select hb_id, hb_name from tbhb h, tbkompetensi k where h.kompet' +
        'ensi_id=k.kompetensi_id and h.kompetensi_id=:parentID'
      'select * from tbhb where hb_id=:id'
      'insert into tbhb values(:auto, :komid, :name)'
      'update tbhb set hb_name=:name where hb_id=:id'
      'delete from tbhb where hb_id=:id'
      'select max(hb_id) as maxid from tbhb'
      '[edKompetensi]select * from tbkompetensi')
  end
  inherited mRibbon: TAdvToolBarPager
    Width = 601
    Height = 446
    Caption.Caption = '..:: Master Data Hasil  : Capaian Perkembangan (CP) :..'
    inherited m10: TAdvPage
      Width = 593
      Height = 414
      object Label2: TLabel [0]
        Left = 16
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Kompetensi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel [1]
        Left = 16
        Top = 119
        Width = 43
        Height = 13
        Caption = 'CP Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      inherited Label1: TLabel
        Left = 16
        Top = 96
        Width = 27
        Caption = 'CP ID'
      end
      inherited AdvSmoothPanel1: TAdvSmoothPanel
        Width = 593
        inherited btnNew: TAdvGlowButton
          Hint = 'edNama'
        end
        inherited btnEdit: TAdvGlowButton
          Hint = 'edNama'
        end
      end
      inherited sgData: TAdvColumnGrid
        Tag = 2
        Left = 16
        Top = 144
        Width = 561
        Hint = 'Capaian Perkembangan (CP)'
        TabOrder = 2
        ColumnHeaders.Strings = (
          'No.'
          'Nama Hasil Belajar (HB)'
          'Capaian Perkembangan (CP)'
          'User Name')
        FixedColWidth = 40
        Columns = <
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header = 'No.'
            HeaderAlignment = taCenter
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 40
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header = 'Nama Hasil Belajar (HB)'
            HeaderAlignment = taCenter
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 0
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header = 'Capaian Perkembangan (CP)'
            HeaderAlignment = taCenter
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 490
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header = 'User Name'
            HeaderAlignment = taCenter
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 0
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HeaderAlignment = taCenter
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 0
          end>
        ColWidths = (
          40
          0
          490
          0
          0)
      end
      inherited edID: TEdit
        Tag = 1
        Top = 93
        Hint = 'hb_id'
        HelpType = htKeyword
        HelpKeyword = 'id'
        TabOrder = 3
      end
      object edNama: TEdit
        Tag = 2
        Left = 88
        Top = 116
        Width = 489
        Height = 19
        Hint = 'hb_name'
        HelpType = htKeyword
        HelpKeyword = 'name'
        HelpContext = 18
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object edKompetensi: TComboBox
        Left = 88
        Top = 68
        Width = 489
        Height = 21
        Hint = 'kompetensi_id'
        HelpType = htKeyword
        HelpKeyword = 'komid'
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 4
        OnSelect = edKompetensiSelect
      end
      object cbCaps: TCheckBox
        Left = 400
        Top = 94
        Width = 177
        Height = 17
        Caption = 'Penggunaan Huruf Besar Semua'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 5
        OnClick = cbCapsClick
      end
    end
  end
end
