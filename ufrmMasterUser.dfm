inherited frmMasterUser: TfrmMasterUser
  Left = 353
  Top = 151
  Caption = 'frmMasterUser'
  ClientHeight = 523
  ClientWidth = 386
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited mRibbon: TAdvToolBarPager
    Width = 386
    Height = 521
    Caption.Caption = '..:: Data Master User ::..'
    inherited m10: TAdvPage
      Width = 378
      Height = 489
      inherited Label1: TLabel
        Left = 16
        Top = 93
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 118
        Width = 50
        Height = 13
        Caption = 'User Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 142
        Width = 52
        Height = 13
        Caption = 'User Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 168
        Width = 46
        Height = 13
        Caption = 'Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 192
        Width = 37
        Height = 13
        Caption = 'Confirm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel [5]
        Left = 16
        Top = 69
        Width = 51
        Height = 13
        Caption = 'UserGroup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      inherited AdvSmoothPanel1: TAdvSmoothPanel
        Width = 378
        DesignSize = (
          378
          63)
        inherited btnNew: TAdvGlowButton
          Hint = 'edCode'
        end
        inherited btnEdit: TAdvGlowButton
          Hint = 'edCode'
        end
        inherited mmSQL: TMemo
          Left = 188
          Width = 171
          Lines.Strings = (
            
              'select user_id, user_code, user_name from tbuser where usergroup' +
              '_id=:parentID order by user_id'
            'select * from tbuser where user_id=:id'
            
              'insert into tbuser values(:auto, :code, :name, :group, :pass, nu' +
              'll)'
            
              'update tbuser set user_code=:code, user_name=:name, user_pass=:p' +
              'ass, usergroup_id=:group where user_id=:id'
            'delete from tbuser where user_id=:id'
            'select max(user_id) as maxid from tbuser'
            
              '[edUserGroup]select usergroup_id, usergroup_name from tbusergrou' +
              'p order by usergroup_name'
            '')
          WantReturns = False
        end
      end
      inherited sgData: TAdvColumnGrid
        Tag = 2
        Left = 16
        Top = 216
        Width = 345
        Height = 266
        Hint = 'User "%s"'
        ColumnHeaders.Strings = (
          'No.'
          ''
          'User Code'
          'UserName')
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
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 64
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
            Header = 'User Code'
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
            Header = 'UserName'
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
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 173
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
          64
          0
          79
          173
          0)
      end
      object edPass: TEdit [8]
        Tag = 25
        Left = 75
        Top = 165
        Width = 225
        Height = 19
        Hint = 'user_pass'
        HelpKeyword = 'pass'
        HelpContext = 18
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = 'Password'
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '#'
        TabOrder = 2
      end
      object edConfirm: TEdit [9]
        Tag = 25
        Left = 75
        Top = 189
        Width = 225
        Height = 19
        HelpContext = 18
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = 'Confirm'
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '#'
        TabOrder = 3
      end
      inherited edID: TEdit
        Tag = 1
        Left = 75
        Top = 91
        Hint = 'user_id'
        HelpType = htKeyword
        HelpKeyword = 'id'
        TabOrder = 4
      end
      object edCode: TEdit
        Tag = 2
        Left = 75
        Top = 115
        Width = 121
        Height = 19
        Hint = 'user_code'
        HelpKeyword = 'code'
        HelpContext = 18
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = 'User Code'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Edit1: TEdit
        Tag = 3
        Left = 75
        Top = 139
        Width = 225
        Height = 19
        Hint = 'user_name'
        HelpKeyword = 'name'
        HelpContext = 18
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = 'User Name'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object edUserGroup: TComboBox
        Left = 75
        Top = 65
        Width = 206
        Height = 21
        Hint = 'usergroup_id'
        HelpKeyword = 'group'
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 7
        OnChange = edUserGroupChange
      end
    end
  end
end
