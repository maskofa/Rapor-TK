object frmKoneksi: TfrmKoneksi
  Left = 677
  Top = 335
  BorderStyle = bsNone
  Caption = 'Setting Koneksi'
  ClientHeight = 244
  ClientWidth = 470
  Color = 16774634
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mRibbon: TAdvToolBarPager
    Tag = 1
    Left = 0
    Top = 0
    Width = 470
    Height = 242
    ActivePage = m10
    Caption.Caption = '..:: Setting Koneksi Database ::..'
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
    TabOrder = 0
    TabStop = True
    object m10: TAdvPage
      Tag = 1
      Left = 4
      Top = 27
      Width = 462
      Height = 210
      Caption = 'Information'
      object Label3: TLabel
        Left = 23
        Top = 18
        Width = 64
        Height = 13
        Caption = 'Connection'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 23
        Top = 45
        Width = 97
        Height = 13
        Caption = 'Server IP / DNS '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 23
        Top = 71
        Width = 54
        Height = 13
        Caption = 'Database'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 23
        Top = 97
        Width = 26
        Height = 13
        Caption = 'User'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 23
        Top = 123
        Width = 54
        Height = 13
        Caption = 'Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 23
        Top = 149
        Width = 23
        Height = 13
        Caption = 'Port'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edPort: TEdit
        Left = 122
        Top = 146
        Width = 67
        Height = 19
        Color = 16114882
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edPortKeyPress
      end
      object edPass: TEdit
        Left = 122
        Top = 120
        Width = 314
        Height = 19
        Color = 16114882
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '>'
        ReadOnly = True
        TabOrder = 1
        Text = 'raport_tarki'
      end
      object edUser: TEdit
        Left = 122
        Top = 94
        Width = 314
        Height = 19
        Color = 16114882
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Admin'
      end
      object edbase: TEdit
        Left = 122
        Top = 68
        Width = 279
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object edHost: TEdit
        Left = 122
        Top = 42
        Width = 314
        Height = 19
        Color = 16114882
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object cbConn: TComboBox
        Left = 122
        Top = 14
        Width = 252
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = 16114882
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnChange = cbConnChange
        OnExit = cbConnExit
        OnKeyPress = cbConnKeyPress
      end
      object btnTambah: TAdvGlowButton
        Left = 377
        Top = 13
        Width = 28
        Height = 22
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnTambahClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
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
      object btnHapus: TAdvGlowButton
        Left = 408
        Top = 13
        Width = 28
        Height = 22
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = btnHapusClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
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
      object btnKeluar: TAdvGlowButton
        Left = 363
        Top = 146
        Width = 73
        Height = 50
        Caption = '&Keluar'
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
        Picture.Data = {
          424DF60600000000000036000000280000001800000018000000010018000000
          0000C0060000120B0000120B00000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEAEAEDBEBEDAA3A6D79EA2DBA6ABE1ABB1E5A4AAE1
          9DA2DCA3A5D7BEBEDAEAEAEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB2B2D47D81D88993FE99A5FFA4B1FFAE
          BBFFB2BEFFACB8FFA0ADFF94A1FF868FFD7B7FD6B3B3D4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEDEF8083C85D64F25560FA5E6B
          F37581F58794F8939FFA96A3FA919EF98491F7717DF45A66F3505BF95A61F080
          83C8EEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFF16768C0353BE8
          262EE1333DE54A55ED6571F37380F57D89F67F8CF77B88F6717DF4616DF24550
          EB3039E4222ADF3238E56568BFF0F0F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6A
          6BB81B1FD0080FCA0E16D4767AD28186D7404BEC5C68F16470F16672F2636FF1
          5964F13F49EA8A8ED6686CD10B12D3060CC7191ECD6B6BB7FFFFFDFFFFFFFFFF
          FFFFFFFFA5A5CB1C1EBB0000B30000BA6265C9EEEDDFEAEADD767BD7333DE74B
          55EC4D58EB4953EC313BE58388D6F0EFDEE7E7DD4E52C50000B80000B01C1FB9
          A7A8CDFFFFFFFFFFFFF2F2F42F319E0001A60000A76668C2F5F5E6EAEAE7EAEA
          E7EFEEE37074D51F28DE323BE51F28DD8084D5F3F2E4E8E8E7ECECE8F0EFE554
          55BD0000A50001A431329CF3F3F5FFFFFFA8A8CD090A9C00009500009D7D7ECB
          FFFFF5EFEFEDEBEBECF1F1EEF6F6EA676BD10006CB7A7DD3FBFAECF0EFEDEBEB
          ECF1F1EDFFFFF46869C300009B0000930A0A9BA9A9CEFFFFFF5757A511109A0E
          0E950000960000987677CBFFFFF9F5F5F3F1F1F2F8F8F4EFEFEEA3A4D6F7F6F0
          F6F6F4F1F1F2F7F7F4FFFFF86162C30000960000950E0E941111995959A6F5F5
          F846469C5252B15655B14848AF2727A50000997172C8FFFFFCF9F9F8F7F7F7FA
          FAF8FFFFFBF9F9F8F7F7F7FBFBF9FCFCFB5C5DC00000972828A54848AE5656B0
          5252B045459DE2E2ED49499E5959AF5C5CB16767B87272C06565BE3131AE9697
          D5FCFCFEFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF9F9FD8283CD3031AD6667BE72
          72C06767B85C5CB05959AE4A4A9DDBDBE94F4FA05F5FAF6464B17070BA7878C0
          8181C58989CC7374C2D7D7E8FFFFFFFEFEFEFEFEFEFEFEFEFFFFFFCACAE27171
          C28B8BCC8181C57878BF7070B96363B15F5FAE4E4F9FE1E1ED53539F6767B06F
          6FB48080BF8686C38C8CCA8888C7B7B7D4F9F9F9FCFCFCFCFCFCFCFCFCFCFCFC
          FDFDFCF7F7F7AFAFD08888C78C8CC98686C38080BE6E6EB36767B053539EF4F4
          F76161A47070B47C7CB98E8EC49494CA9191C8BABAD3FEFEF9FAFAF9F7F7F7F8
          F8F7FAFAF8F8F8F7F7F7F7FBFBFAFBFBF7B3B3CF9292C99494C98E8EC37C7CB8
          7070B46363A6FFFFFF7D7DB37979BB8989BD9C9CCB9A9AC9BCBCD2F8F8F4F5F5
          F4F2F2F2F3F3F2F1F1F1E0E0EBF2F2F2F3F3F2F2F2F2F6F6F5F5F5F1B6B6CF9A
          9ACA9D9DCA8888BD7979BA7E7EB2FFFFFFACADCE7B7BBC9494C2A5A5CEC0C0D2
          F2F2EDEEEEEEECECECEDEDECEDEDECD6D6E7C3C3E1DADAE8EEEEECEDEDECECEC
          ECEFEFEFEFEFECBBBBD0A5A5CE9393C17A7BBBAEAECFFFFFFFECECF36C6CA99F
          9FCAB1B1D3CECEDFE9E9E7E6E6E6E6E6E6E6E6E5DADAE7D3D3E8D6D6E9D3D3E8
          DCDCE7E7E7E5E6E6E6E6E6E6E9E9E7CACADDB0B0D39E9EC96C6DA9EDEDF4FFFF
          FFFFFFFFA7A7CB9696CBBDBDD9C0C0DCD2D2E0E0E0DEE0E0DFDDDDE7DCDCECE0
          E0EEE1E1EEE0E0EEDCDCECDEDEE6E0E0DEE0E0DFD0D0E0C0C0DCBCBCD89595CA
          A9A9CBFFFFFFFFFFFFFFFFFFFCFCFC8282B4BEBEE2D2D2E4D1D1E5D9D9E2DEDE
          E6E2E2EFE7E7F1E9E9F2EAEAF3E9E9F2E7E7F1E2E2EFDEDEE5D8D8E3D1D1E5D1
          D1E3BCBCE18282B5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFE8E8F08787BAD5D5EF
          E3E2EEDFDFEDE5E5F0EAEAF2EEEEF5F0F0F6F1F1F7F0F0F6EEEEF5EAEAF2E5E5
          F0DFDFECE3E2EED4D5EF8787BBE9E9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE8E8EE9292C1D2D3EFF7F7FDF0F0F6EFEFF6F3F3F8F6F6FAF7F7FAF6F6FA
          F3F3F8EFEFF5F0F0F6F6F6FDD1D1EE9393C0E9E9EFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEABABCEA9A9CFE8E8FAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8FBAAAACFABABCEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9ECB7B7
          D6AFAFD2BABAD7C7C7DECDCDE2C7C7DEBABAD8B1B1D3B9B9D7E9E9ECFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DEDEE9D5D5E6DEDEE9F4F4F4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 8
        OnClick = BtnKeluarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
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
      object btnSimpan: TAdvGlowButton
        Left = 288
        Top = 146
        Width = 73
        Height = 50
        Caption = '&Simpan'
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
        Picture.Data = {
          424DF60600000000000036000000280000001800000018000000010018000000
          0000C0060000120B0000120B00000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0E4E4E4
          D8D8D8CFCFCFC6C6C5BAB9B8AEADADA1A09FA4A4A4F4F4F4FFFFFFFFFFFFFFFF
          FFFFFFFFE9E9E9BFBFBEB1B0AFA5A4A4A3A3A3A4A4A4A4A4A6A0A1A19393948E
          8E8E8D8D8D8A8A8B8F8F927371703E352E453C35544B42665A4F5B534A9E9E9D
          FFFFFFFFFFFFFFFFFFFFFFFFA4A2A03C352F3F383238312A898787B7B7BA7B78
          766E6A67A6A5A6B8B9BAB4B4B5B2B2B4B8B9BB8A8887413830473E37564C445E
          53496D62597A7978CCCCCCFDFDFDFFFFFFEEEEED3934312A25212A2521241F19
          908E8EB8B9BA2F2A252019139B9999C0C1C2B9B9BAB9B9BAC2C2C48C8A89342D
          263E3730463F38473F37574F48969694BBBBBBE3E3E3FFFFFFDBDADA100E0D10
          0E0D12100E090704939393CACACB2C29261C1713A8A7A7D2D2D4CACACBCACACB
          D5D5D792919028221C362F2A36312C2E2924423D37CAC8C7FEFEFEFAFAFAFFFF
          FFDBDBDB0403030101010201010000009C9C9CDBDBDC221F1D0E0B09B4B3B3E5
          E5E6DBDBDCDBDBDCE9E9EA9897961B16112B262226221F1412102D2A27CFCECD
          FFFFFFFFFFFFFFFFFFDCDBDB040404010000000000000000A7A6A7EAEAEA0504
          03000000BEBEBEFBFBFCF0F0F1F2F2F2FFFFFFA4A3A30B0805211D1A18161402
          01011B1A19CCCBCAFFFFFFFFFFFFFFFFFFDCDCDC090808050504040403000000
          B6B6B6FFFFFF939393919192E6E6E6F8F8F8EBEBEBE3E3E3E1E1E18383830C0B
          0B1A19170C0C0B000000141313CBCAC9FFFFFFFFFFFFFFFFFFDCDCDB0F0D0C0B
          0A090908060504033B3B3A5453535656554B4A4A2F2E2E1E1E1D141313090908
          000000000000000000000000000000010101161615C9C9C8FFFFFFFFFFFFFFFF
          FFDDDCDC161412110F0D100E0C13110F0807050403010807060D0C0A1413121D
          1C1B2726263232313F3E3D4C4B4A5B5A5A5E5D5D131211020101191817C8C7C7
          FFFFFFFFFFFFFFFFFFDEDEDD191614252321949494A4A3A3A3A3A2A6A5A5A9A9
          A9ACACACB2B2B2B8B8B8BDBDBDC2C2C2C6C6C6C8C8C8CCCCCCCDCDCE32302F03
          02011E1D1BC5C5C4FFFFFFFFFFFFFFFFFFDFDEDE201C1835322FC4C4C4CFCFCF
          CBCBCBCBCBCBCBCBCBCACACACACACAC9C9C9C8C8C8C7C7C7C7C7C7C7C7C7C9C9
          C9C9C9C93735330C0907242220C4C4C3FFFFFFFFFFFFFFFFFFE0E0DF2924203B
          3733C8C8C8D7D7D7D3D3D3D3D3D3D3D3D3D4D4D4D4D4D4D4D4D4D4D4D4D5D5D5
          D5D5D5D5D5D5D7D7D7D6D6D73E3B3914110D2B2825C3C3C3FFFFFFFFFFFFFFFF
          FFE2E1E0312B26423D39D4D5D5E6E7E7E2E2E2E2E2E2E2E2E2E3E3E3E3E3E3E3
          E3E3E3E3E3E3E3E3E4E4E4E4E4E4E7E7E7E4E4E446423F1D1914312E2AC3C3C2
          FFFFFFFFFFFFFFFFFFE3E2E13A332D49443FDFE0E0F4F4F4EFEFEFEFEFEFF0F0
          F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1F1F1F1F1F1F4F4F4F0F0F04E4A4626
          201B393430C3C2C2FFFFFFFFFFFFFFFFFFE4E3E2433B34514A44E7E7E7FEFEFE
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9FCFC
          FCF7F7F755504B302A24453F3BC3C3C3FFFFFFFFFFFFFFFFFFE5E4E34B433B57
          514AE8E8E8FFFFFFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9FCFCFCF6F6F65E5853413933554F4AC5C5C4FFFFFFFFFFFFFFFF
          FFE6E4E35349415E564FE9E9E9FFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFDFDFDF7F7F76B655F534B44655F59C6C6C5
          FFFFFFFFFFFFFFFFFFE6E5E45B5046675E56E2E2E2F6F7F7F1F1F1F1F1F1F1F1
          F1F1F1F1F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFF1F1F1EBEBEB77716B6B
          645D78726CC8C7C6FFFFFFFFFFFFFFFFFFE6E4E2796E66847D77DCDBDBEDEEEE
          E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEDED
          EDE7E7E789837D514D486D6864CECDCCFFFFFFFFFFFFFFFFFFE6E5E3685D526A
          6158F5F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF9A948E817A73968F89CAC9C8FFFFFFFFFFFFFFFF
          FFF4F4F38E867E8B8179D4D3D1E2DEDCE1DDDCE0DDDBE0DEDBE1DFDBDEDAD9DD
          DBD8DCD9D7D9D8D5DAD8D5D8D7D4D8D7D4D3D0CFA49F99A7A09CA6A29EE3E3E2
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFAFAFAFCFCFCFCFCFCFCFCFCFEFE
          FEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 9
        OnClick = btnSimpanClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Enabled = False
        Layout = blGlyphTop
      end
      object btnTest: TAdvGlowButton
        Left = 198
        Top = 146
        Width = 84
        Height = 50
        Caption = '&Tes Koneksi'
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
        Picture.Data = {
          424DF60600000000000036000000280000001800000018000000010018000000
          0000C0060000120B0000120B00000000000000000000FDFDFDC9C9C9B1B1B1B1
          B1B1AFAFAFB2B2B2B4B4B4B6B6B6B8B8B8B9B9B9BBBBBBBDBDBDBDBDBDBDBDBD
          BBBBBBB9B9B9B7B7B7B5B5B5B3B3B3B2B2B2AFAFAFB2B2B2B0B0B0D6D6D6F9F9
          F9B2B2B2D4D6D4E7E4E6F7EBF0F8EDF2F4EEF1E8E8E8EBEBEBEEEEEEF0F0F0F0
          F0F0F1F1F1F0F0F0EFEFEFEFEFEFEDEDEDEAEAEAE9E9E9E7E7E7E6E6E6E3E3E3
          CBCBCBC2C2C2FAFAFAB4B4B4F8F7F7FFFFFF91D0B174C099D4EDE1FFFFFFFFFF
          FFFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFBFBFBFDFDFDFEFEFEFF
          FFFFFFFFFFFFFFFFE3E3E3C6C6C6FAFAFAB6B6B6F8F1F65CB285006D2200904C
          0A9659D6EAE0F1F0F0C4C4C4C6C6C6C5C5C5C4C4C4C3C3C3C2C2C2C1C1C1C2C2
          C2C4C4C4C5C5C5C6C6C6C3C3C3DDDDDDE1E1E1C5C5C5FAFAFABBB8B9D9E2DE16
          9F6430A27247C79814B27790CDB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDC5C5C5FAFA
          FAB7B6B6EEEAEA51D9B77DE9D0A5EEDB3AC090CAECE1F1EEEFC0C0C0C2C2C2C1
          C1C1C0C0C0BEBEBEBDBDBDBDBDBDBEBEBEBFBFBFC0C0C0C2C2C2BFBFBFDBDBDB
          E1E1E1C5C5C5FAFAFAB5B5B5F8F1F1E2FDF997E6D6A9E9D9C5EBE1FFFFFFFEFE
          FEFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFCFCFCDFDFDFC4C4C4FAFAFAB4B4B4EDEEEEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFC4C4C4FAFAFAB5B5B5F2F1F1FE
          FEFE98CBB37EBC9CD7E7DFFFFFFFFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F7F7F7F7F7F7F6F6F6FAFAFADFDFDFC4C4C4FAFA
          FAB6B6B6FAF2F76CB991007025008C4714985EDEEEE7F0EFEFC1C1C1C3C3C3C2
          C2C2C1C1C1BFBFBFBEBEBEBEBEBEBFBFBFC0C0C0C2C2C2C3C3C3C0C0C0DBDBDB
          E1E1E1C3C3C3F9F9F9BCB9BADBE2DF169C602598653EC29110AF7392CCB3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDDDDDDC3C3C3F9F9F9B9B7B7E9E9E847D4AF7DE8CFA2EDD8
          33BE8CC2E9DBF2EFF0C2C2C2C4C4C4C3C3C3C2C2C2C0C0C0BFBFBFBFBFBFC0C0
          C0C1C1C1C2C2C2C4C4C4C1C1C1DCDCDCE2E2E2C3C3C3F9F9F9B5B5B5F9F1F2D7
          FBF58DE5D2A6E9D8B7E7D9FFFFFFFCFCFCF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F9F9F9DEDEDEC4C4C4FEFE
          FEC5C5C5F3F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E9E9E9C8C8C8FFFFFFCACACAF8F8F8FDFDFD99CBB37FBC9CD7E7DFFFFFFFF9F8
          F8E8E8E8E9E9E9E8E8E8E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E8E8E8E8
          E8E8E7E7E7F0F0F0EDEDEDCCCCCCFEFEFEC9C9C9FCFAFC67B58C007025008C47
          14985EDCECE4F1F0F0C9C9C9CBCBCBCACACAC9C9C9C8C8C8C7C7C7C7C7C7C7C7
          C7C9C9C9CACACACBCBCBC9C9C9DEDEDEEEEEEECACACAFEFEFECCC9CAE2EAE711
          975B2598653EC29110AF7392CDB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9C9C9C9FEFE
          FEC7C5C6F0F0EF43D0AB7DE8CFA2EDD833BE8CC2E9DBF2EFF0C0C0C0C2C2C2C1
          C1C1BFBFBFBEBEBEBDBDBDBDBDBDBEBEBEBFBFBFC0C0C0C2C2C2BFBFBFD9D9D9
          EBEBEBC7C7C7FDFDFDC1C2C1FEF8FADFFFFD97EEDCAFF1E1C0F0E2FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEAEAEAC5C5C5FDFDFDC0C0C0E5E7E7FAF2F3F3F0F1EAEDED
          FBF5F7F4F3F4F4F4F4F4F4F4F5F5F5F5F5F5F6F6F6F5F5F5F5F5F5F5F5F5F4F4
          F4F3F3F3F2F2F2F0F0F0F1F1F1F0F0F0DCDCDCC5C5C5FAFAFAC0C0C0C3C3C3C4
          C4C4C9C8C9CDCBCCCFCFCFD1D1D1D4D4D4D8D8D8DADADADEDEDEDEDEDEDCDCDC
          DADADAD7D7D7D3D3D3D1D1D1CECECECBCBCBCACACAC7C7C7C3C3C3C7C7C7FBFB
          FBBDBDBDC0C0C0C3C3C3C7C7C7CBCBCBCECECED2D2D2D5D5D5D9D9D9DCDCDCDF
          DFDFE0E0E0DEDEDEDADADAD9D9D9D4D4D4D1D1D1CECECEC4C4C4B2B2B2B1B1B1
          B0B0B0C6C6C6FFFFFFD7D7D7CACACACDCDCDCFCFCFD1D1D1D3D3D3D4D4D4D6D6
          D6D8D8D8DADADADADADADBDBDBDADADAD9D9D9D8D8D8D6D6D6D4D4D4D2D2D2CD
          CDCDC4C4C4C3C3C3C1C1C1E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 10
        OnClick = btnTestClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
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
      object AdvGlowButton1: TAdvGlowButton
        Left = 402
        Top = 67
        Width = 32
        Height = 19
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = AdvGlowButton1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
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
  object Conn: TZConnection
    Protocol = 'ado'
    Left = 72
    Top = 192
  end
  object OD1: TOpenDialog
    DefaultExt = '*.mdb'
    Filter = 'Database  access (*.mdb)|*.mdb'
    Left = 24
    Top = 192
  end
end
