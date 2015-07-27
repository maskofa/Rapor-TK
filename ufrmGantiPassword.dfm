object frmGantiPassword: TfrmGantiPassword
  Left = 379
  Top = 345
  BorderStyle = bsNone
  Caption = 'Ganti Password'
  ClientHeight = 250
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edPass: TShader
    Left = 0
    Top = 248
    Width = 399
    Height = 2
    Align = alClient
    Color = 16771020
    TabOrder = 0
    FromColor = 16771020
    ToColor = 16771020
    FromColorMirror = 16771020
    ToColorMirror = 16771020
    Direction = False
    Version = '1.2.1.3'
  end
  object mRibbon: TAdvToolBarPager
    Tag = 1
    Left = 0
    Top = 0
    Width = 399
    Height = 248
    ActivePage = m10
    Caption.Caption = '..:: Ganti Password ::..'
    CaptionButtons = [cbClose]
    TabGroups = <>
    TabSettings.EndMargin = 0
    TabSettings.Height = 0
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    PageLeftMargin = 0
    PageRightMargin = 0
    OptionPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFDE3E3E3E3FF000000FDE3FFFDFDE3E3E3FF000000FDE3FFFDFDE3
      E3E3FF000000FDE3FFFDE3FFFDE3FD000000FDE3FFFDFDFDFDFDFD000000FDE3
      FFFFFFFFFFFDFD000000FDE3E3E3E3E3E3FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    OptionDisabledPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFD07070707FF000000FD07FFFDFD070707FF000000FD07FFFDFD07
      0707FF000000FD07FFFD07FFFD07FD000000FD07FFFDFDFDFDFDFD000000FD07
      FFFFFFFFFFFDFD000000FD070707070707FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    TabOrder = 1
    TabStop = True
    object m10: TAdvPage
      Tag = 1
      Left = 4
      Top = 27
      Width = 391
      Height = 216
      Caption = 'Information'
      object Label4: TLabel
        Left = 24
        Top = 156
        Width = 133
        Height = 14
        Caption = 'Konfirmasi Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 24
        Top = 84
        Width = 119
        Height = 13
        Caption = 'Konfirmasi Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 24
        Top = 52
        Width = 85
        Height = 13
        Caption = 'Password Baru'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 24
        Top = 20
        Width = 89
        Height = 13
        Caption = 'Password Lama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edLama: TEdit
        Left = 151
        Top = 16
        Width = 219
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = #25
        ShowHint = True
        TabOrder = 0
        OnKeyPress = edLamaKeyPress
      end
      object edBaru: TEdit
        Left = 151
        Top = 48
        Width = 219
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = #25
        ShowHint = True
        TabOrder = 1
        OnKeyPress = edLamaKeyPress
      end
      object edKonfirm: TEdit
        Left = 151
        Top = 80
        Width = 219
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = #25
        ShowHint = True
        TabOrder = 2
        OnKeyPress = edLamaKeyPress
      end
      object btnSimpan: TAdvGlowButton
        Tag = 1
        Left = 151
        Top = 116
        Width = 104
        Height = 27
        Cursor = crHandPoint
        Caption = '&Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        OfficeHint.Title = 'simpan'
        OfficeHint.Notes.Strings = (
          'Untuk menggunakan sistem ini silahkan lakukan login')
        OfficeHint.Picture.Data = {
          424D360900000000000036000000280000001800000018000000010020000000
          0000000900000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000120000
          0024000000260000002600000026010203260B1115260A0E1226010102260000
          00260000002600000026000000260000001D0000000600000000000000000000
          0000000000000000000000000000000000000000000000000004000000A10101
          01CE010101D0010101D0010101D0030303D05983A7D0577995D010161BD00101
          01D0010101D0010101D0010101D0010101C10000004D00000000000000000000
          0000000000000000000000000000000000000000000000000001010101D00202
          02FF060606FF0E0E0EFF1A1A1AFF1C1E21FF88C4F4FF8EC5EFFF283742FF0202
          02FF020202FF020202FF020202FF020202F20000004F030303080E0D0D1F1412
          11261513132615141426161514261816162618171726181717260A0A0A8F1010
          10FC1D1D1DFF2E2E2EFF3B3B3BFF35434CFF95D0FCFF98D3FDFF4A667AFF1717
          17FF171717FF171717FF161616FE0E0E0EB20808081B403A39648C7C7AC49786
          83CE9F908FCEA69997CEADA1A0CEB3A9A9CEB5ACACCEB5ACACCEAEA5A5DC7B75
          75FD474545FF4A4A4AFF565656FF516B7CFF9AD5FEFF9BD6FEFF729CB9FF3A3A
          3AFF424242FF383838F7232323AC1818183C0D0D0D039B8A87A7BFA8A4FFC3AD
          A9FFCEBBB8FFD7C5C3FFDFCFCEFFEADCDCFFEEE3E3FFF0E6E6FFEFE3E3FFE9DC
          DBFFB2B4BCFF3F6179FF2C546CFF669BBBFF97D2F9FF9CD4FAFF9AD1F4FF2135
          3FE0171F247F0304041B0000000000000000000000008D7E7C83BFA7A3FFBFA8
          A4FFCAB5B1FFD2BFBCFFDAC9C6FFE3D5D4FFE8DCDCFFECE1E0FFEBE1E2FFBDC4
          CCFF6388A2FF135882FF135B85FF5395C0FF90C8F5FF8DC5F0FF7BB3DAFF1257
          80F20B4462C002151F4200000000000000000000000076696760BDA5A1FDBBA3
          9EFFC4AEABFFCCB8B4FFD3C0BEFFDCCCCAFFE1D4D2FFE5D9D8FFDCD4D6FF8DA2
          B3FF387092FF125D88FF3177A1FF85BBE5FF97CFFDFF94CCFBFF8CC2EEFF3980
          ABFF136491FD094563A500000000000000000000000062585639B69F9BEAB59C
          97FFBDA5A1FFC4ADA9FFCBB6B3FFD3C2BFFFD9C9C7FFDDCFCEFFD0C8CAFFA9AF
          BAFF66869EFF17638EFF63A1C9FF9CD2FCFF98D1FEFF9ED4FEFFA1D5FEFF70B4
          DDFF1175A4FF0B5C82C5000000000000000000000000A1908B15AE9A9596B49C
          97F3B69E99FFBDA4A0FFC3ACA8FFCCB9B5FFD2C1BEFFD7C7C5FFDBCECCFFDED1
          D0FFD5CECFFF23749EFF73B1D8FF9DD4FEFFA0D6FEFFAFDDFEFFBEE3FEFF94C9
          EAFF1881B1FF0A6289AF00000000000000000000000094858001AA989319BDA8
          A34BBAA39E93BAA39ECCBDA5A0F7CFBDBAFFE3D8D6FFDBCDCBFFECE4E3FFE1D7
          D5FFDDD1CFFB3C86ABFA7DBEE5FF99D2FAFFADDCFDFFBFE5FEFFCFEBFEFFB1D8
          EDFF1D86B6FF085C818500000000000000000000000000000000000000000000
          000000000000000000009D8A891893A6B4C5B3D4ECFFB1D1E9FFBAD8EAF6949A
          9F8B99847F180D5A7EB01B80B1FF2787B8FF6CB2D7FFCCE9FCFFE0F2FEFF90C6
          E0FF0E7FAFF20650704700000000000000000000000000000000000000000000
          000000000000000000010810152676A4C7D591C9F6FF90C8F6FF8EC4EDF64763
          76830C14180B0A5579830E77A7FF0E7AAAFF288CB9FFA3D3EAFFBBDFF2FF3198
          C4FF0A77A5C2096A922100000000000000000000000000000000000000000000
          00000000000010161B075E7B92979DCEF8FC97CFFEFF95CEFDFF97CFFCFE7EA8
          C9D0232E362C074866450D79AAEC0D7DAFFF0F82B3FF2E97C4FF2E99C7FF0C86
          B8F507658B7805506E0600000000000000000000000000000000000000000000
          0000000000001F2B351F8DB2D0CE9AD2FEFF9FD4FEFFA6D7FEFFA5D8FEFF9DD0
          F6F83345525804344A0A0976A5710B82B4DA0B86B9F40B88BBF40A8ABEE30786
          BA870578A9100000000000000000000000000000000000000000000000000000
          0000000305021226345992B9D7E9AADAFEFFB1DDFEFFB8E0FEFFBEE4FEFFB2DC
          FAFE3A6580BB00080B1A0882B3090984B63D0B88BB6A0A8ABE69088ABF47058A
          BE06000000000000000000000000000000000000000000000000000000000000
          0000031520100E3E599A87B8D8FDBBE2FEFFC1E5FEFFC7E7FEFFACCFE7FF6EA0
          BFFF2D7097FC082C3F7600000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000094460240D587CC7529CC2FFCCE9FDFFBCDCF1FF75A3C1FF195F88FF226A
          92FF4081A6FF154B659000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000095577210B6791C22389B7FFA3C9E1FF578FB1FF1C6690FF196B96FF337F
          A6FF4E94B7FF0F5A7D6100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000065E830A096B95790F7CACF22E749BFF166993FF126C99FF277EA9FF4694
          BAFF4097BEEB03415C1600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D517617105F89AE116D9AFD1174A2FF197EADFF3693BEF7399A
          C4CE1A8EBE4B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000E6794290E75A68B0D7DAEA81486B8A31C90C073168F
          C030098ABD040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B78AA080A7FB2140884B8120789BD020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        ParentFont = False
        TabOrder = 3
        OnClick = btnSimpanClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object btnBatal: TAdvGlowButton
        Tag = 1
        Left = 261
        Top = 116
        Width = 109
        Height = 26
        Cursor = crHandPoint
        Caption = '&Batal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        OfficeHint.Title = 'keluar'
        OfficeHint.Notes.Strings = (
          'Untuk menggunakan sistem ini silahkan lakukan login')
        OfficeHint.Picture.Data = {
          424D360900000000000036000000280000001800000018000000010020000000
          0000000900000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000120000
          0024000000260000002600000026010203260B1115260A0E1226010102260000
          00260000002600000026000000260000001D0000000600000000000000000000
          0000000000000000000000000000000000000000000000000004000000A10101
          01CE010101D0010101D0010101D0030303D05983A7D0577995D010161BD00101
          01D0010101D0010101D0010101D0010101C10000004D00000000000000000000
          0000000000000000000000000000000000000000000000000001010101D00202
          02FF060606FF0E0E0EFF1A1A1AFF1C1E21FF88C4F4FF8EC5EFFF283742FF0202
          02FF020202FF020202FF020202FF020202F20000004F030303080E0D0D1F1412
          11261513132615141426161514261816162618171726181717260A0A0A8F1010
          10FC1D1D1DFF2E2E2EFF3B3B3BFF35434CFF95D0FCFF98D3FDFF4A667AFF1717
          17FF171717FF171717FF161616FE0E0E0EB20808081B403A39648C7C7AC49786
          83CE9F908FCEA69997CEADA1A0CEB3A9A9CEB5ACACCEB5ACACCEAEA5A5DC7B75
          75FD474545FF4A4A4AFF565656FF516B7CFF9AD5FEFF9BD6FEFF729CB9FF3A3A
          3AFF424242FF383838F7232323AC1818183C0D0D0D039B8A87A7BFA8A4FFC3AD
          A9FFCEBBB8FFD7C5C3FFDFCFCEFFEADCDCFFEEE3E3FFF0E6E6FFEFE3E3FFE9DC
          DBFFB2B4BCFF3F6179FF2C546CFF669BBBFF97D2F9FF9CD4FAFF9AD1F4FF2135
          3FE0171F247F0304041B0000000000000000000000008D7E7C83BFA7A3FFBFA8
          A4FFCAB5B1FFD2BFBCFFDAC9C6FFE3D5D4FFE8DCDCFFECE1E0FFEBE1E2FFBDC4
          CCFF6388A2FF135882FF135B85FF5395C0FF90C8F5FF8DC5F0FF7BB3DAFF1257
          80F20B4462C002151F4200000000000000000000000076696760BDA5A1FDBBA3
          9EFFC4AEABFFCCB8B4FFD3C0BEFFDCCCCAFFE1D4D2FFE5D9D8FFDCD4D6FF8DA2
          B3FF387092FF125D88FF3177A1FF85BBE5FF97CFFDFF94CCFBFF8CC2EEFF3980
          ABFF136491FD094563A500000000000000000000000062585639B69F9BEAB59C
          97FFBDA5A1FFC4ADA9FFCBB6B3FFD3C2BFFFD9C9C7FFDDCFCEFFD0C8CAFFA9AF
          BAFF66869EFF17638EFF63A1C9FF9CD2FCFF98D1FEFF9ED4FEFFA1D5FEFF70B4
          DDFF1175A4FF0B5C82C5000000000000000000000000A1908B15AE9A9596B49C
          97F3B69E99FFBDA4A0FFC3ACA8FFCCB9B5FFD2C1BEFFD7C7C5FFDBCECCFFDED1
          D0FFD5CECFFF23749EFF73B1D8FF9DD4FEFFA0D6FEFFAFDDFEFFBEE3FEFF94C9
          EAFF1881B1FF0A6289AF00000000000000000000000094858001AA989319BDA8
          A34BBAA39E93BAA39ECCBDA5A0F7CFBDBAFFE3D8D6FFDBCDCBFFECE4E3FFE1D7
          D5FFDDD1CFFB3C86ABFA7DBEE5FF99D2FAFFADDCFDFFBFE5FEFFCFEBFEFFB1D8
          EDFF1D86B6FF085C818500000000000000000000000000000000000000000000
          000000000000000000009D8A891893A6B4C5B3D4ECFFB1D1E9FFBAD8EAF6949A
          9F8B99847F180D5A7EB01B80B1FF2787B8FF6CB2D7FFCCE9FCFFE0F2FEFF90C6
          E0FF0E7FAFF20650704700000000000000000000000000000000000000000000
          000000000000000000010810152676A4C7D591C9F6FF90C8F6FF8EC4EDF64763
          76830C14180B0A5579830E77A7FF0E7AAAFF288CB9FFA3D3EAFFBBDFF2FF3198
          C4FF0A77A5C2096A922100000000000000000000000000000000000000000000
          00000000000010161B075E7B92979DCEF8FC97CFFEFF95CEFDFF97CFFCFE7EA8
          C9D0232E362C074866450D79AAEC0D7DAFFF0F82B3FF2E97C4FF2E99C7FF0C86
          B8F507658B7805506E0600000000000000000000000000000000000000000000
          0000000000001F2B351F8DB2D0CE9AD2FEFF9FD4FEFFA6D7FEFFA5D8FEFF9DD0
          F6F83345525804344A0A0976A5710B82B4DA0B86B9F40B88BBF40A8ABEE30786
          BA870578A9100000000000000000000000000000000000000000000000000000
          0000000305021226345992B9D7E9AADAFEFFB1DDFEFFB8E0FEFFBEE4FEFFB2DC
          FAFE3A6580BB00080B1A0882B3090984B63D0B88BB6A0A8ABE69088ABF47058A
          BE06000000000000000000000000000000000000000000000000000000000000
          0000031520100E3E599A87B8D8FDBBE2FEFFC1E5FEFFC7E7FEFFACCFE7FF6EA0
          BFFF2D7097FC082C3F7600000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000094460240D587CC7529CC2FFCCE9FDFFBCDCF1FF75A3C1FF195F88FF226A
          92FF4081A6FF154B659000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000095577210B6791C22389B7FFA3C9E1FF578FB1FF1C6690FF196B96FF337F
          A6FF4E94B7FF0F5A7D6100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000065E830A096B95790F7CACF22E749BFF166993FF126C99FF277EA9FF4694
          BAFF4097BEEB03415C1600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D517617105F89AE116D9AFD1174A2FF197EADFF3693BEF7399A
          C4CE1A8EBE4B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000E6794290E75A68B0D7DAEA81486B8A31C90C073168F
          C030098ABD040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B78AA080A7FB2140884B8120789BD020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        ParentFont = False
        TabOrder = 4
        OnClick = btnBatalClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
    end
  end
  object AdvOfficeHint1: TAdvOfficeHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HintHelpText = 'Press F1 for more help.'
    Version = '1.1.5.1'
    Left = 72
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    Style = bsOffice2007Luna
    BorderColor = 14668485
    BorderColorHot = 14731181
    ButtonAppearance.Color = 16640730
    ButtonAppearance.ColorTo = 14986888
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = clNavy
    ButtonAppearance.BorderHotColor = clNavy
    ButtonAppearance.BorderCheckedColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 15915714
    CaptionAppearance.CaptionColorTo = 15784385
    CaptionAppearance.CaptionTextColor = 11168318
    CaptionAppearance.CaptionBorderColor = clHighlight
    CaptionAppearance.CaptionColorHot = 16769224
    CaptionAppearance.CaptionColorHotTo = 16772566
    CaptionAppearance.CaptionTextColorHot = 11168318
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 15587527
    Color.ColorTo = 16181721
    Color.Direction = gdVertical
    Color.Mirror.Color = 15984090
    Color.Mirror.ColorTo = 15785680
    Color.Mirror.ColorMirror = 15587784
    Color.Mirror.ColorMirrorTo = 16510428
    ColorHot.Color = 16773606
    ColorHot.ColorTo = 16444126
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16642021
    ColorHot.Mirror.ColorTo = 16576743
    ColorHot.Mirror.ColorMirror = 16509403
    ColorHot.Mirror.ColorMirrorTo = 16510428
    CompactGlowButtonAppearance.BorderColor = 14727579
    CompactGlowButtonAppearance.BorderColorHot = 15193781
    CompactGlowButtonAppearance.BorderColorDown = 12034958
    CompactGlowButtonAppearance.BorderColorChecked = 12034958
    CompactGlowButtonAppearance.Color = 15653832
    CompactGlowButtonAppearance.ColorTo = 16178633
    CompactGlowButtonAppearance.ColorChecked = 14599853
    CompactGlowButtonAppearance.ColorCheckedTo = 13544844
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 14599853
    CompactGlowButtonAppearance.ColorDownTo = 13544844
    CompactGlowButtonAppearance.ColorHot = 16250863
    CompactGlowButtonAppearance.ColorHotTo = 16246742
    CompactGlowButtonAppearance.ColorMirror = 15586496
    CompactGlowButtonAppearance.ColorMirrorTo = 16245200
    CompactGlowButtonAppearance.ColorMirrorHot = 16247491
    CompactGlowButtonAppearance.ColorMirrorHotTo = 16246742
    CompactGlowButtonAppearance.ColorMirrorDown = 16766645
    CompactGlowButtonAppearance.ColorMirrorDownTo = 13014131
    CompactGlowButtonAppearance.ColorMirrorChecked = 16766645
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 13014131
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 15587527
    DockColor.ColorTo = 16445929
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    DragGripStyle = dsNone
    FloatingWindowBorderColor = 14922381
    FloatingWindowBorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 14727579
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.Color = 15653832
    GlowButtonAppearance.ColorTo = 16178633
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15586496
    GlowButtonAppearance.ColorMirrorTo = 16245200
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.BorderColor = 12763842
    GroupAppearance.Color = 15851212
    GroupAppearance.ColorTo = 14213857
    GroupAppearance.ColorMirror = 14213857
    GroupAppearance.ColorMirrorTo = 10871273
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Tahoma'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = 9126421
    GroupAppearance.CaptionAppearance.CaptionColor = 15915714
    GroupAppearance.CaptionAppearance.CaptionColorTo = 15784385
    GroupAppearance.CaptionAppearance.CaptionTextColor = 11168318
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16769224
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16772566
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = 11168318
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 14086910
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = 10534860
    GroupAppearance.TabAppearance.BorderColorHot = 10534860
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 14542308
    GroupAppearance.TabAppearance.ColorHotTo = 16768709
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 14016477
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 10736609
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Tahoma'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggRadial
    GroupAppearance.TabAppearance.GradientMirror = ggRadial
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = 9126421
    GroupAppearance.TabAppearance.TextColorHot = 9126421
    GroupAppearance.TabAppearance.TextColorSelected = 9126421
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 15255470
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 14922381
    PageAppearance.Color = 16445929
    PageAppearance.ColorTo = 15587527
    PageAppearance.ColorMirror = 15587527
    PageAppearance.ColorMirrorTo = 16773863
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 12888726
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = 15780526
    PagerCaption.Color = 15525858
    PagerCaption.ColorTo = 15590878
    PagerCaption.ColorMirror = 15524312
    PagerCaption.ColorMirrorTo = 15723487
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
    PagerCaption.TextColorExtended = clGray
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Tahoma'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 11708063
    QATAppearance.Color = 16313052
    QATAppearance.ColorTo = 16313052
    QATAppearance.FullSizeBorderColor = 13476222
    QATAppearance.FullSizeColor = 15584690
    QATAppearance.FullSizeColorTo = 15386026
    RightHandleColor = 14668485
    RightHandleColorTo = 14731181
    RightHandleColorHot = 13891839
    RightHandleColorHotTo = 7782911
    RightHandleColorDown = 557032
    RightHandleColorDownTo = 8182519
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 15383705
    TabAppearance.BorderColorSelected = 14922381
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16709360
    TabAppearance.ColorSelectedTo = 16445929
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 14542308
    TabAppearance.ColorHotTo = 16768709
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 14016477
    TabAppearance.ColorMirrorHotTo = 10736609
    TabAppearance.ColorMirrorSelected = 16445929
    TabAppearance.ColorMirrorSelectedTo = 16181984
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = 9126421
    TabAppearance.TextColorHot = 9126421
    TabAppearance.TextColorSelected = 9126421
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 15255470
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 16767935
    TabAppearance.BackGround.ColorTo = clNone
    TabAppearance.BackGround.Direction = gdHorizontal
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2007Luna
    BorderColor = 11566422
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = 10079963
    PanelAppearanceLight.BorderColorDown = 4548219
    PanelAppearanceLight.Color = 16377559
    PanelAppearanceLight.ColorTo = 16309447
    PanelAppearanceLight.ColorHot = 16515071
    PanelAppearanceLight.ColorHotTo = 12644607
    PanelAppearanceLight.ColorDown = 7845111
    PanelAppearanceLight.ColorDownTo = 4561657
    PanelAppearanceLight.ColorMirror = 16109747
    PanelAppearanceLight.ColorMirrorTo = 16244941
    PanelAppearanceLight.ColorMirrorHot = 7067903
    PanelAppearanceLight.ColorMirrorHotTo = 10544892
    PanelAppearanceLight.ColorMirrorDown = 1671928
    PanelAppearanceLight.ColorMirrorDownTo = 241407
    PanelAppearanceLight.TextColor = 6365193
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = 10079963
    PanelAppearanceDark.BorderColorDown = 4548219
    PanelAppearanceDark.Color = 16309445
    PanelAppearanceDark.ColorTo = 16103047
    PanelAppearanceDark.ColorHot = 16515071
    PanelAppearanceDark.ColorHotTo = 12644607
    PanelAppearanceDark.ColorDown = 7845111
    PanelAppearanceDark.ColorDownTo = 4561657
    PanelAppearanceDark.ColorMirror = 15382160
    PanelAppearanceDark.ColorMirrorTo = 12752244
    PanelAppearanceDark.ColorMirrorHot = 7067903
    PanelAppearanceDark.ColorMirrorHotTo = 10544892
    PanelAppearanceDark.ColorMirrorDown = 1671928
    PanelAppearanceDark.ColorMirrorDownTo = 241407
    PanelAppearanceDark.TextColor = 6365193
    PanelAppearanceDark.TextColorHot = 6365193
    PanelAppearanceDark.TextColorDown = 6365193
    PanelAppearanceDark.TextStyle = []
    Left = 32
  end
end
