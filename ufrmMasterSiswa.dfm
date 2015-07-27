inherited frmMasterSiswa: TfrmMasterSiswa
  Left = 322
  Top = 41
  Caption = 'frmMasterSiswa'
  ClientHeight = 574
  ClientWidth = 862
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited mmSQL: TMemo
    Lines.Strings = (
      
        'select siswa_code, siswa_nis, siswa_name, siswa_dated, siswa_fna' +
        'me, siswa_telpno from tbsiswa order by siswa_name'
      'select * from tbsiswa where siswa_code=:id'
      
        'insert into tbsiswa values(null, :id, :nis, :name, :nick, :sex, ' +
        ':datel, :dated, :rel, :entry, :height, :weight, :addr, :telp, :c' +
        'no, :ccount, :fname, :fdated, :fdatel, :frel, :fedu, :faddr, :ft' +
        'elp, :fwork, :foaddr, :fotelp, :mname, :mdated, :mdatel, :mrel, ' +
        ':medu, :maddr, :mtelp, :mwork, :moaddr, :motelp, :photo, 0, 0, 0' +
        ', "","","","","","","")'
      
        'update tbsiswa set siswa_nis=:nis, siswa_name=:name, siswa_nick=' +
        ':nick, siswa_sex=:sex, siswa_datel=:datel, siswa_dated=:dated, s' +
        'iswa_religion=:rel, siswa_entry=:entry, siswa_address=:addr, sis' +
        'wa_telpno=:telp, siswa_childno=:cno, siswa_childcount=:ccount, s' +
        'iswa_fname=:fname, siswa_fdated=:fdated, siswa_fdatel=:fdatel, s' +
        'iswa_freligion=:frel, siswa_fedu=:fedu, siswa_faddress=:faddr, s' +
        'iswa_ftelp=:ftelp, siswa_fwork=:fwork, siswa_foaddress=:foaddr, ' +
        'siswa_fotelp=:fotelp, siswa_mname=:mname, siswa_mdated=:mdated, ' +
        'siswa_mdatel=:mdatel, siswa_mreligion=:mrel, siswa_medu=:medu, s' +
        'iswa_maddress=:maddr, siswa_mtelp=:mtelp, siswa_mwork=:mwork, si' +
        'swa_moaddress=:moaddr, siswa_motelp=:motelp, siswa_pic=:photo, s' +
        'iswa_height=:height, siswa_weight=:weight where siswa_code=:id'
      'delete from tbsiswa where siswa_code=:id'
      'SqlMax')
  end
  inherited mRibbon: TAdvToolBarPager
    Width = 862
    Height = 573
    Caption.Caption = '..:: Master Data Siswa ::..'
    inherited m10: TAdvPage
      Width = 854
      Height = 541
      inherited sgData: TAdvColumnGrid [1]
        Tag = 3
        Left = 16
        Top = 128
        Width = 817
        Height = 400
        Hint = 'Siswa'
        ColCount = 7
        ColumnHeaders.Strings = (
          'No.'
          'Kode'
          'NIS'
          'Nama Legkap'
          'Tanggal Lahir'
          'Nama Orangtua'
          'Telephon')
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
            Header = 'Kode'
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
            Width = 79
          end
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
            Header = 'NIS'
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
            Width = 78
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
            Header = 'Nama Legkap'
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
            Width = 218
          end
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
            Header = 'Tanggal Lahir'
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
            Width = 101
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
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Nama Orangtua'
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
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
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 202
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
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Telephon'
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
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
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 64
          end>
        ColWidths = (
          40
          79
          78
          218
          101
          202
          64)
      end
      object TabPage: TAdvSmoothTabPager [2]
        Left = 3
        Top = 64
        Width = 844
        Height = 474
        ActivePage = tabDaftar
        TabSettings.StartMargin = 4
        TabReorder = False
        TabOrder = 3
        object tabDaftar: TAdvSmoothTabPage
          Left = 1
          Top = 26
          Width = 842
          Height = 446
          Caption = '  Daftar Siswa                '
          PageAppearance.Color = 16773091
          PageAppearance.ColorTo = 16768452
          PageAppearance.ColorMirror = 16765357
          PageAppearance.ColorMirrorTo = 16767936
          PageAppearance.GradientMirrorType = gtVertical
          PageAppearance.BorderColor = 16765357
          PageAppearance.Rounding = 0
          PageAppearance.ShadowOffset = 0
          TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Appearance.Font.Color = clWindowText
          TabAppearance.Appearance.Font.Height = -11
          TabAppearance.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Appearance.Font.Style = []
          TabAppearance.Status.Caption = '0'
          TabAppearance.Status.Appearance.Fill.Color = clRed
          TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
          TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
          TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
          TabAppearance.Status.Appearance.Fill.BorderColor = clGray
          TabAppearance.Status.Appearance.Fill.Rounding = 0
          TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
          TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Status.Appearance.Font.Color = clWhite
          TabAppearance.Status.Appearance.Font.Height = -11
          TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Status.Appearance.Font.Style = []
          TabAppearance.BevelColor = 16765357
          TabAppearance.Color = 16773091
          TabAppearance.ColorDown = 11196927
          TabAppearance.ColorDisabled = 16765357
        end
        object TabData: TAdvSmoothTabPage
          Left = 1
          Top = 26
          Width = 842
          Height = 446
          Caption = '  Data Siswa                     '
          PageAppearance.Color = 16773091
          PageAppearance.ColorTo = 16768452
          PageAppearance.ColorMirror = 16765357
          PageAppearance.ColorMirrorTo = 16767936
          PageAppearance.GradientMirrorType = gtVertical
          PageAppearance.BorderColor = 16765357
          PageAppearance.Rounding = 0
          PageAppearance.ShadowOffset = 0
          TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Appearance.Font.Color = clWindowText
          TabAppearance.Appearance.Font.Height = -11
          TabAppearance.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Appearance.Font.Style = []
          TabAppearance.Status.Caption = '0'
          TabAppearance.Status.Appearance.Fill.Color = clRed
          TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
          TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
          TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
          TabAppearance.Status.Appearance.Fill.BorderColor = clGray
          TabAppearance.Status.Appearance.Fill.Rounding = 0
          TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
          TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Status.Appearance.Font.Color = clWhite
          TabAppearance.Status.Appearance.Font.Height = -11
          TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Status.Appearance.Font.Style = []
          TabAppearance.BevelColor = 16765357
          TabAppearance.Color = 16773091
          TabAppearance.ColorDown = 11196927
          TabAppearance.ColorDisabled = 16765357
          object Label8: TLabel
            Left = 38
            Top = 163
            Width = 64
            Height = 13
            Caption = 'Agama Siswa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label76: TLabel
            Left = 38
            Top = 41
            Width = 21
            Height = 13
            Caption = 'NIS '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 38
            Top = 140
            Width = 125
            Height = 13
            Caption = 'Tempat dan Tanggal Lahir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 38
            Top = 114
            Width = 64
            Height = 13
            Caption = 'Jenis Kelamin'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 38
            Top = 88
            Width = 109
            Height = 13
            Caption = 'Nama Panggilan Siswa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 38
            Top = 65
            Width = 59
            Height = 13
            Caption = 'Nama Siswa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 38
            Top = 18
            Width = 56
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'Kode Siswa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 238
            Top = 345
            Width = 122
            Height = 13
            Caption = 'Jumlah Saudara Kandung'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 38
            Top = 369
            Width = 41
            Height = 13
            Caption = 'Anak Ke'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 38
            Top = 234
            Width = 66
            Height = 13
            Caption = 'Alamat Siswa '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 38
            Top = 345
            Width = 73
            Height = 13
            Caption = 'Nomor Telepon'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 38
            Top = 213
            Width = 74
            Height = 13
            Caption = 'Tanggal Masuk'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 38
            Top = 188
            Width = 99
            Height = 13
            Caption = 'Tinggi / Berat Badan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 230
            Top = 188
            Width = 14
            Height = 13
            Caption = 'cm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label31: TLabel
            Left = 214
            Top = 369
            Width = 17
            Height = 13
            Caption = 'dari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 286
            Top = 369
            Width = 53
            Height = 13
            Caption = 'bersaudara'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 326
            Top = 188
            Width = 13
            Height = 13
            Caption = 'Kg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 456
            Top = 136
            Width = 64
            Height = 13
            Caption = '(dd/mm/yyyy)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 265
            Top = 213
            Width = 64
            Height = 13
            Caption = '(dd/mm/yyyy)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edTmpLahir: TEdit
            Tag = 105
            Left = 169
            Top = 135
            Width = 190
            Height = 19
            Hint = 'siswa_datel'
            HelpType = htKeyword
            HelpKeyword = 'datel'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 25
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object edNamaPanggil: TEdit
            Tag = 100
            Left = 169
            Top = 85
            Width = 119
            Height = 19
            Hint = 'siswa_nick'
            HelpType = htKeyword
            HelpKeyword = 'nick'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Nama Panggilan Siswa'
            MaxLength = 50
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object edNama: TEdit
            Tag = 3
            Left = 169
            Top = 62
            Width = 265
            Height = 19
            Hint = 'siswa_name'
            HelpType = htKeyword
            HelpKeyword = 'name'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Nama Lengkap Siswa'
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object edKode: TEdit
            Tag = 1
            Left = 169
            Top = 14
            Width = 121
            Height = 19
            Hint = 'siswa_code'
            HelpType = htKeyword
            HelpKeyword = 'id'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Kode Siswa'
            MaxLength = 12
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnChange = edKodeChange
          end
          object ediNis: TEdit
            Tag = 2
            Left = 169
            Top = 38
            Width = 121
            Height = 19
            Hint = 'siswa_nis'
            HelpType = htKeyword
            HelpKeyword = 'nis'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'NIS'
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object ediKandung: TEdit
            Tag = 100
            Left = 241
            Top = 366
            Width = 38
            Height = 19
            Hint = 'siswa_childcount'
            HelpType = htKeyword
            HelpKeyword = 'ccount'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Jumlah Saudara'
            MaxLength = 2
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            OnKeyPress = MustBeNumber
          end
          object ediAnakke: TEdit
            Tag = 100
            Left = 169
            Top = 366
            Width = 38
            Height = 19
            Hint = 'siswa_childno'
            HelpType = htKeyword
            HelpKeyword = 'cno'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Anak ke-'
            MaxLength = 2
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnKeyPress = MustBeNumber
          end
          object btnPhoto: TAdvGlowButton
            Left = 673
            Top = 187
            Width = 121
            Height = 25
            Caption = '&Insert Foto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 12
            OnClick = btnPhotoClick
            Appearance.ColorTo = 14411406
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorTo = 14540909
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Layout = blGlyphTop
          end
          object pnPhoto: TPanel
            Left = 673
            Top = 14
            Width = 121
            Height = 163
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = clWhite
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            object imgFoto: TImage
              Tag = 100
              Left = 3
              Top = 5
              Width = 113
              Height = 151
              Hint = 'siswa_pic'
              HelpType = htKeyword
              HelpKeyword = 'photo'
              HelpContext = 18
              Stretch = True
            end
          end
          object edTmpTelp: TEdit
            Tag = 6
            Left = 169
            Top = 342
            Width = 238
            Height = 19
            Hint = 'siswa_telpno'
            HelpType = htKeyword
            HelpKeyword = 'telp'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Nomor Telepon Siswa'
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 10
          end
          object almsiswa: TMemo
            Tag = 100
            Left = 169
            Top = 234
            Width = 400
            Height = 103
            Hint = 'siswa_address'
            HelpType = htKeyword
            HelpKeyword = 'addr'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Alamat Siswa'
            ParentCtl3D = False
            TabOrder = 9
          end
          object edKelamin: TComboBox
            Tag = 100
            Left = 169
            Top = 110
            Width = 136
            Height = 21
            Hint = 'siswa_sex'
            HelpType = htKeyword
            HelpKeyword = 'sex'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 4
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              'LAKI-LAKI'
              'PEREMPUAN')
          end
          object ComboBox1: TComboBox
            Tag = 100
            Left = 169
            Top = 159
            Width = 136
            Height = 21
            Hint = 'siswa_religion'
            HelpType = htKeyword
            HelpKeyword = 'rel'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 6
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              'KATHOLIK'
              'PROTESTAN'
              'KRISTEN'
              'ISLAM'
              'HINDU'
              'BUDHA'
              'LAIN-LAIN')
          end
          object Edit1: TEdit
            Tag = 100
            Left = 169
            Top = 185
            Width = 56
            Height = 19
            Hint = 'siswa_height'
            HelpType = htKeyword
            HelpKeyword = 'height'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Nama Lengkap Siswa'
            MaxLength = 50
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object Edit2: TEdit
            Tag = 100
            Left = 265
            Top = 185
            Width = 56
            Height = 19
            Hint = 'siswa_weight'
            HelpType = htKeyword
            HelpKeyword = 'weight'
            HelpContext = 18
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = 'Nama Lengkap Siswa'
            MaxLength = 50
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object dtTglLahir: TDateTimePicker
            Tag = 4
            Left = 364
            Top = 134
            Width = 89
            Height = 21
            Hint = 'siswa_dated'
            HelpType = htKeyword
            HelpKeyword = 'dated'
            HelpContext = 18
            Date = 41561.417963275460000000
            Format = 'dd/MM/yyyy'
            Time = 41561.417963275460000000
            ImeName = 'Tanggal Lahir'
            TabOrder = 15
          end
          object edTglMasuk: TDateTimePicker
            Tag = 100
            Left = 169
            Top = 209
            Width = 89
            Height = 21
            Hint = 'siswa_entry'
            HelpType = htKeyword
            HelpKeyword = 'entry'
            HelpContext = 18
            Date = 41561.417963275460000000
            Format = 'dd/MM/yyyy'
            Time = 41561.417963275460000000
            ImeName = 'Tanggal Masuk'
            TabOrder = 16
          end
        end
        object TabOrtu: TAdvSmoothTabPage
          Left = 1
          Top = 26
          Width = 842
          Height = 446
          Caption = 'Data Orangtua / Wali       '
          PageAppearance.Color = 16773091
          PageAppearance.ColorTo = 16768452
          PageAppearance.ColorMirror = 16765357
          PageAppearance.ColorMirrorTo = 16767936
          PageAppearance.GradientMirrorType = gtVertical
          PageAppearance.BorderColor = 16765357
          PageAppearance.Rounding = 0
          PageAppearance.ShadowOffset = 0
          TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Appearance.Font.Color = clWindowText
          TabAppearance.Appearance.Font.Height = -11
          TabAppearance.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Appearance.Font.Style = []
          TabAppearance.Status.Caption = '0'
          TabAppearance.Status.Appearance.Fill.Color = clRed
          TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
          TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
          TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
          TabAppearance.Status.Appearance.Fill.BorderColor = clGray
          TabAppearance.Status.Appearance.Fill.Rounding = 0
          TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
          TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Status.Appearance.Font.Color = clWhite
          TabAppearance.Status.Appearance.Font.Height = -11
          TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
          TabAppearance.Status.Appearance.Font.Style = []
          TabAppearance.BevelColor = 16765357
          TabAppearance.Color = 16773091
          TabAppearance.ColorDown = 11196927
          TabAppearance.ColorDisabled = 16765357
          object Label70: TLabel
            Left = 11
            Top = 13
            Width = 131
            Height = 16
            Caption = 'Identitas Ayah / Wali'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 11
            Top = 118
            Width = 124
            Height = 13
            Caption = 'Pendidikan Tertinggi Ayah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 11
            Top = 65
            Width = 107
            Height = 13
            Caption = 'Tempat, Tanggal Lahir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label37: TLabel
            Left = 11
            Top = 40
            Width = 27
            Height = 13
            Caption = 'Nama'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 11
            Top = 91
            Width = 61
            Height = 13
            Caption = 'Agama Ayah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 11
            Top = 138
            Width = 61
            Height = 13
            Caption = 'Alamat Ayah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 11
            Top = 251
            Width = 72
            Height = 13
            Caption = 'Nomor Telepon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 11
            Top = 282
            Width = 97
            Height = 13
            Caption = 'Pekerjaan / Jabatan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 11
            Top = 304
            Width = 68
            Height = 13
            Caption = 'Alamat Kantor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 11
            Top = 417
            Width = 73
            Height = 13
            Caption = 'Telepon Kantor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 447
            Top = 13
            Width = 119
            Height = 16
            Caption = 'Identitas Ibu / Wali'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 447
            Top = 40
            Width = 27
            Height = 13
            Caption = 'Nama'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 447
            Top = 65
            Width = 107
            Height = 13
            Caption = 'Tempat, Tanggal Lahir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 447
            Top = 91
            Width = 52
            Height = 13
            Caption = 'Agama Ibu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 447
            Top = 118
            Width = 115
            Height = 13
            Caption = 'Pendidikan Tertinggi Ibu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 447
            Top = 138
            Width = 52
            Height = 13
            Caption = 'Alamat Ibu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 447
            Top = 251
            Width = 72
            Height = 13
            Caption = 'Nomor Telepon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 447
            Top = 282
            Width = 97
            Height = 13
            Caption = 'Pekerjaan / Jabatan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label27: TLabel
            Left = 447
            Top = 304
            Width = 68
            Height = 13
            Caption = 'Alamat Kantor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label28: TLabel
            Left = 447
            Top = 417
            Width = 73
            Height = 13
            Caption = 'Telepon Kantor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label36: TLabel
            Left = 301
            Top = 85
            Width = 64
            Height = 13
            Caption = '(dd/mm/yyyy)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 725
            Top = 85
            Width = 64
            Height = 13
            Caption = '(dd/mm/yyyy)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edTempatAyah: TEdit
            Tag = 100
            Left = 136
            Top = 61
            Width = 145
            Height = 19
            Hint = 'siswa_fdatel'
            HelpType = htKeyword
            HelpKeyword = 'fdatel'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Tempat Lahir Ayah'
            MaxLength = 25
            ParentCtl3D = False
            TabOrder = 1
          end
          object edNamaAyah: TEdit
            Tag = 5
            Left = 136
            Top = 36
            Width = 265
            Height = 19
            Hint = 'siswa_fname'
            HelpType = htKeyword
            HelpKeyword = 'fname'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Nama Ayah'
            MaxLength = 30
            ParentCtl3D = False
            TabOrder = 0
          end
          object edAlamatAyah: TMemo
            Tag = 100
            Left = 136
            Top = 140
            Width = 265
            Height = 103
            Hint = 'siswa_faddress'
            HelpType = htKeyword
            HelpKeyword = 'faddr'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Alamat Ayah'
            ParentCtl3D = False
            TabOrder = 4
          end
          object edTelpAyah: TEdit
            Tag = 100
            Left = 136
            Top = 248
            Width = 201
            Height = 19
            Hint = 'siswa_ftelp'
            HelpType = htKeyword
            HelpKeyword = 'ftelp'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Nomor Telpon Ayah'
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 5
          end
          object edJabAyah: TEdit
            Tag = 100
            Left = 136
            Top = 278
            Width = 265
            Height = 19
            Hint = 'siswa_fwork'
            HelpType = htKeyword
            HelpKeyword = 'fwork'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Jabatan / Pekerjaan Ayah'
            MaxLength = 50
            ParentCtl3D = False
            TabOrder = 6
          end
          object edTelpKantorAyah: TEdit
            Tag = 100
            Left = 136
            Top = 414
            Width = 201
            Height = 19
            Hint = 'siswa_fotelp'
            HelpType = htKeyword
            HelpKeyword = 'fotelp'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Telepon Kantor Ayah'
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 8
          end
          object edAlmKantorAyah: TMemo
            Tag = 100
            Left = 136
            Top = 306
            Width = 265
            Height = 103
            Hint = 'siswa_foaddress'
            HelpType = htKeyword
            HelpKeyword = 'foaddr'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Alamat Kantor Ayah'
            ParentCtl3D = False
            TabOrder = 7
          end
          object edNamaIbu: TEdit
            Tag = 100
            Left = 565
            Top = 36
            Width = 265
            Height = 19
            Hint = 'siswa_mname'
            HelpType = htKeyword
            HelpKeyword = 'mname'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Nama Ibu'
            MaxLength = 30
            ParentCtl3D = False
            TabOrder = 9
          end
          object edTempatIbu: TEdit
            Tag = 100
            Left = 565
            Top = 61
            Width = 145
            Height = 19
            Hint = 'siswa_mdatel'
            HelpType = htKeyword
            HelpKeyword = 'mdatel'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Tempat Lahir Ibu'
            MaxLength = 25
            ParentCtl3D = False
            TabOrder = 10
          end
          object edAlamatIbu: TMemo
            Tag = 100
            Left = 565
            Top = 140
            Width = 265
            Height = 103
            Hint = 'siswa_maddress'
            HelpType = htKeyword
            HelpKeyword = 'maddr'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Alamat Ibu'
            ParentCtl3D = False
            TabOrder = 13
          end
          object edTelpIbu: TEdit
            Tag = 100
            Left = 565
            Top = 248
            Width = 201
            Height = 19
            Hint = 'siswa_mtelp'
            HelpType = htKeyword
            HelpKeyword = 'mtelp'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Nomor Telepon Ibu'
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 14
          end
          object edJabIbu: TEdit
            Tag = 100
            Left = 565
            Top = 278
            Width = 265
            Height = 19
            Hint = 'siswa_mwork'
            HelpType = htKeyword
            HelpKeyword = 'mwork'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Pekerjaan / Jabatan Ibu'
            MaxLength = 50
            ParentCtl3D = False
            TabOrder = 15
          end
          object edAlmKantorIbu: TMemo
            Tag = 100
            Left = 565
            Top = 306
            Width = 265
            Height = 103
            Hint = 'siswa_moaddress'
            HelpType = htKeyword
            HelpKeyword = 'moaddr'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Alamat Kantor Ibu'
            ParentCtl3D = False
            TabOrder = 16
          end
          object edTelpKantorIbu: TEdit
            Tag = 100
            Left = 565
            Top = 414
            Width = 201
            Height = 19
            Hint = 'siswa_motelp'
            HelpType = htKeyword
            HelpKeyword = 'motelp'
            HelpContext = 18
            Ctl3D = False
            ImeName = 'Telepon Kantor Ibu'
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 17
          end
          object edPendidikanAyah: TComboBox
            Tag = 100
            Left = 136
            Top = 114
            Width = 136
            Height = 21
            Hint = 'siswa_fedu'
            HelpType = htKeyword
            HelpKeyword = 'fedu'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 3
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              '-'
              'TIDAK LULUS SD'
              'SD / MI'
              'SMP / MTS'
              'SMA / SMK / MA'
              'D1'
              'D2'
              'D3'
              'D4'
              'S1'
              'S2'
              'S3')
          end
          object edPendidikanIbu: TComboBox
            Tag = 100
            Left = 565
            Top = 114
            Width = 136
            Height = 21
            Hint = 'siswa_medu'
            HelpType = htKeyword
            HelpKeyword = 'medu'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 12
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              '-'
              'TIDAK LULUS SD'
              'SD / MI'
              'SMP / MTS'
              'SMA / SMK / MA'
              'D1'
              'D2'
              'D3'
              'D4'
              'S1'
              'S2'
              'S3')
          end
          object edAgamaAyah: TComboBox
            Tag = 100
            Left = 136
            Top = 87
            Width = 136
            Height = 21
            Hint = 'siswa_freligion'
            HelpKeyword = 'frel'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 2
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              '-'
              'KATHOLIK'
              'PROTESTAN'
              'KRISTEN'
              'ISLAM'
              'HINDU'
              'BUDHA'
              'LAIN-LAIN')
          end
          object edAgamaIbu: TComboBox
            Tag = 100
            Left = 565
            Top = 87
            Width = 136
            Height = 21
            Hint = 'siswa_mreligion'
            HelpType = htKeyword
            HelpKeyword = 'mrel'
            HelpContext = 18
            BevelInner = bvNone
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 11
            OnKeyPress = MustBeUpperCase
            Items.Strings = (
              '-'
              'KATHOLIK'
              'PROTESTAN'
              'KRISTEN'
              'ISLAM'
              'HINDU'
              'BUDHA'
              'LAIN-LAIN')
          end
          object edTglLahairf: TDateTimePicker
            Tag = 100
            Left = 289
            Top = 60
            Width = 89
            Height = 21
            Hint = 'siswa_fdated'
            HelpType = htKeyword
            HelpKeyword = 'fdated'
            HelpContext = 18
            Date = 41561.417963275460000000
            Format = 'dd/MM/yyyy'
            Time = 41561.417963275460000000
            ImeName = 'Tanggal Lahir Ayah'
            TabOrder = 18
          end
          object DateTimePicker1: TDateTimePicker
            Tag = 100
            Left = 713
            Top = 60
            Width = 89
            Height = 21
            Hint = 'siswa_mdated'
            HelpType = htKeyword
            HelpKeyword = 'mdated'
            HelpContext = 18
            Date = 41561.417963275460000000
            Format = 'dd/MM/yyyy'
            Time = 41561.417963275460000000
            ImeName = 'Tanggal Lahir Ibu'
            TabOrder = 19
          end
        end
      end
      inherited AdvSmoothPanel1: TAdvSmoothPanel [3]
        Width = 854
        inherited btnNew: TAdvGlowButton
          Hint = 'edKode'
        end
        inherited btnEdit: TAdvGlowButton
          Hint = 'edKode'
        end
      end
      inherited edID: TEdit
        Tag = 1
        Hint = 'siswa_code'
        HelpType = htKeyword
        HelpKeyword = 'id'
      end
    end
  end
  object dlgOpen: TOpenDialog
    DefaultExt = '*.jpg'
    Filter = 'JPEG File (*.jpg)|*.jpg'
    Left = 528
    Top = 192
  end
end