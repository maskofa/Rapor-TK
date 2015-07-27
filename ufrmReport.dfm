object frmReport: TfrmReport
  Left = 184
  Top = 148
  Width = 232
  Height = 190
  Caption = 'frmReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object frxDBDataset1: TfrxDBDataset
    UserName = 'zqr1'
    CloseDataSource = False
    DataSet = zqr1
    Left = 14
    Top = 14
  end
  object zqr1: TZQuery
    Params = <>
    Left = 46
    Top = 46
  end
  object zqr2: TZQuery
    Params = <>
    Left = 46
    Top = 14
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'zqr2'
    CloseDataSource = False
    DataSet = zqr2
    Left = 14
    Top = 46
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'zqr3'
    CloseDataSource = False
    DataSet = zqr3
    Left = 78
    Top = 14
  end
  object zqr3: TZQuery
    Params = <>
    Left = 111
    Top = 14
  end
  object zqr4: TZQuery
    Params = <>
    Left = 111
    Top = 46
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'zqr4'
    CloseDataSource = False
    DataSet = zqr4
    Left = 78
    Top = 46
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'zqr5'
    CloseDataSource = False
    DataSet = zqr5
    Left = 14
    Top = 78
  end
  object zqr5: TZQuery
    Params = <>
    Left = 46
    Top = 78
  end
  object zqr6: TZQuery
    Params = <>
    Left = 176
    Top = 78
  end
  object zqr7: TZQuery
    Params = <>
    Left = 176
    Top = 14
  end
  object zqr8: TZQuery
    Params = <>
    Left = 176
    Top = 46
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'zqr8'
    CloseDataSource = False
    DataSet = zqr8
    Left = 144
    Top = 46
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'zqr7'
    CloseDataSource = False
    DataSet = zqr7
    Left = 144
    Top = 14
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'zqr6'
    CloseDataSource = False
    DataSet = zqr6
    Left = 144
    Top = 78
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 176
    Top = 110
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 144
    Top = 110
  end
  object frxRichObject1: TfrxRichObject
    Left = 111
    Top = 110
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 78
    Top = 110
  end
  object frxChartObject1: TfrxChartObject
    Left = 46
    Top = 110
  end
  object frReport: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 39808.561133530100000000
    ReportOptions.LastChange = 40131.936438078700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Picture2.LoadFromFile(<zqr3."symbol_pic">);                   ' +
        '                                                                ' +
        '                 '
      'end;'
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure ColumnFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Picture3.LoadFromFile(<zqr4."kompetensi_pic">);  '
      'end;'
      ''
      'begin'
      
        '                                                                ' +
        '   '
      'end.                ')
    Left = 14
    Top = 110
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      PrintIfEmpty = False
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 173.858380000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 2.338590000000000000
          Width = 60.472480000000000000
          Height = 90.708720000000000000
          DataField = 'logo'
          DataSetName = 'Data Sekolah'
          KeepAspectRatio = False
          Picture.Data = {
            0A544A504547496D61676530150000FFD8FFE000104A46494600010101006400
            640000FFDB0043000302020302020303030304030304050805050404050A0707
            06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
            1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
            1414141414141414141414141414141414141414141414141414141414141414
            14141414141414141414141414FFC0001108009D006803012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
            A28A2800AA1AD69CFA8D9910C8D0DDC47CDB7943636C801033D720E482307826
            AFD14018FE18F11C3E22B27653B2F2DD8C3776ECA55A2947046D3CE0F507B8AD
            8AE2FC556CFE15D5D7C576A6536F8116AB6F1A6EF361008593D418CF3E9B4B67
            1C9AEB6C6F60D4ACADEEED6559ADA78D658A45E8EAC3208FA8359C677938BDD0
            DAEA81EF6DD2E92D9A7896E5C6E584B80EC39E40EBD8FE553D78E788B526FF00
            85A29E20DF28B5D1E78B4D2AB9D8E920C4ADB41E7699467FEB98C74F9BD8ABCB
            CBF35C3E6553114E83BBA337097F8924DFE76F91AD4A52A6A2DF55721BEBE834
            DB496EAE6410C112EE676EC3FCF6ACAF0BBDCEA96A9ABDEA34335DC61A2B66DA
            7ECF11E42E46724F058E79E07615CF25CCBE3FF18490AA2BF867476059C86C5E
            5D11C01C005501E704825875EDDED7A70973BBAD8CDAB5828A28AD490A28A280
            0A28A2800A4271D696B17C5DE11D33C6DA2C9A5EAD099AD59848006C1575E558
            76241E707238E41A995D27CAB51ADF535E548E68DE39155E3705595864107A82
            2BCF3449750F87FE23D474996CEE2EBC32D6F26A1697B12E56D9B73B3C0DF863
            073CE39C9248E4EC354D2A6D62FF004D76B0B996DE6D914D6D1109329C91B410
            7254704824704E40E06EA69F6B1BAB2DB44ACA7208400835FCF99F78A33C8B18
            F098FCB674EAC36BC959A7D53B6B17E5D57747A587C34313172A355496CEDAD9
            FE8D1041692DDE94D1DF3335C5C0692624A92AEE4B360800704F1C7615BFA9EB
            3AFEB7E14D1ED7498DE0D4F513F67BABEDA0AD9850565938C02770F94719F635
            9D503E9F6B2C8F23DB44F239CB332024F00727E800FC2BF0DE10E3FA9C3B5F19
            53170751621F33E5766A576DB4DDF74DAEFB1EC57C32AAA36E87A2681A1D9786
            747B6D334F8960B4B75211060752493C772493F8D68020F435E1DE21D4F4BD1D
            5600B6715E4ACAAA668894883123CC70A325460E40F6E99C8F50F05F8474AF0B
            58CCFA60576BE61713DC236566723EF000E00E78C7EBD6BFAE784F89311C4B87
            FAD2C14A851FB32935EF7F855B55E7B7457D6DF35555284DD38D45292DD2DD7A
            F63A2A28A2BEF8C428A28A0028A2BC3BE367ED79E07F832B7166F3B7883C4319
            D9FD95A7B82C8D9C7EF5CF080739EA783F293C57450C3D5C55454A845CA4FA23
            0AD5E961E0EA56928C57567AEF893C4DA7784F4B7BFD4EE56DE053B5413F348D
            824220FE26383803D2BC0FC77F15F53F183BDAD8F9DA6E94ACC3CA420493AF40
            6423381DC283DF9CF6F0BB8FDB36E3E3178A342D2AEF408B4C885C384F29CC85
            CB29037124607DDC803B75E78EFE2BD9E08E548A568926C6F58CE0370463E9C9
            E3FC057D461B24C65077AB4173F453768DBBD926DFA68BCFB7E759C71053AEBD
            8E1AA7B8F7696AFCB5B597A5CB29A6CB653219E65B02A54825B3221C641DA3E6
            0471E9D457A3FC3CBCBBBCD0337459B64856366EEA00E87B80723FFD55E55CB1
            F526BD8F4F107857C350FDA8AC290203234619816279238CF24FEB5FCF1E3D53
            A90CA70B83C4355F155EA254D469A5CB18FC5C9F14DB93708BBC9A7D228F4782
            1FFB555AB06E14A11BCAEF76F6BECB4D5EDA77EFB3591E2DBCBAB0D02E67B3CF
            9E9B7955C90B91B8FE59AE4A5F8A327F69C5B2D90596007463FBC3D3241E9C76
            1DFBF5E3B0D3750B5F14E885C0564990C72C5927692395EC7BF5E3D6BF96F19C
            119DF0457C0E6B9FE0AF877284A4B492DEEE9CD2DA4D2D9F7B6F74BF49A79CE0
            F39A75B0B81AD6A8934BA3DB78F757EA8F2436BF6C80DC1BE89E7DA0B4533957
            E38C027838EDCF4038ED5B7E07F1E6A9F0FAE5A3854CDA74CE1E4B19B851D373
            467F84918F63C1C739AE6EEED9ECAEA6B79305E2728C474C838A7A6A1711DAFD
            9BCCDD6F907CA7019463D33D3F0AFF004E2182C4D4C2C1519C2B516938A71E46
            934ADCB28271B25B2F66BCD9FCF94B1BF55AFED17342A27AB4EE9EBADD3D5EBB
            FBC7D49E0FF1BE95E37B06B9D3663BE32167B697026809E81D4138CE0E0F43D8
            9ADFAFCFFD4BF6A99BE0578DEEADED3448F55925B340FE6CBE5AA92C4F18CE78
            C673E9EF91EE5F05FF006E0F04FC4F9134ED5F3E13D6D9B62457B20304FD3052
            5ED9CF4603183D4727E7F1392E3A841D7F63254FBE8F4EFA1FA8E5D9E6131AA3
            4E5512A8FA6ABEEBFE5F9EE7D1D452039191457847D21F9CBFB4A7ED91E38D5F
            C41A9F85B4882E3C17696723DADD461C1BA918641CB803683CF0BDB1CD7CA324
            8D2C8F23B1791D8B3331C9624E4927D49AFB33FE0A1FF07BFB2B5CD3FC7FA75B
            05B5BFC5A6A250602CC07EEDCE07F128C67D5457C635FD0DC2EB053CBE1570B0
            517B4BBF32DF5DEDD5791F857113C5C31D2A5899B925AC7B59EDA6DE4FCD16B4
            ABE3A66A76978AA1CDBCC928538C1DA41C720FA57DE1677515F5A4373048B2C3
            322C89221CAB2919041EE315F02D7D99F0735F4F10FC3AD1A65508F0422D5D55
            768063F9781F400F1EBDBA0EDCDA1AC27EABFCBF53E729BE877DA65DC7617F0D
            CC9119844C1C206DB923A73FAFE18A9B54D72EB5711ACC51218862386250A918
            C0180076E2B3E8AF84A992E02B6630CD6AD252AD08F2C64F5E5576DF2A7B377D
            5AD5A496C8F4162AB4683C3465683776BBBE97EF6E9DB53AAD36D2D1FC09A849
            24319BAF301591B1B8723853D7F84FEBEF8C1D2B57BBD1A7F3AD65F29CE370C6
            437B1ADAB350DE10B80DCFCEA71F8495CCD7E4FC118786675F88709987EFA94B
            175172CD732B72C74B3BE96B2B791F67C451584A59754A1EECBD8C5DD68EFBFE
            7ADFCCBBAB6A3FDAB75F6968C473B8FDEE1890CDEA33D38C0C7B7BE052A2B2BC
            57ADA786FC37A96A92722D607900C672C07031C75381D47D457EC797E028E598
            4A581C2A6A14D28C55EF64B44AEF5D1688F88AF5A788AB2AD53E293BBF57B9F1
            CFC49D5E3D77C79AEDEC463689EE9D51E120ABAA9DA18103072141CF7CF7EB5C
            CB2860410083D41A7331762C40049C90A303F01495FA6D2872538C1F4491E7DD
            DEE7D05F01FF006C2F1B7C2DBDB4D36EA4B8F156824AC49A64EF9953270044E4
            123AFDDE9D28AD3FD85BE0EFFC2C3F8A435EBFB6F3744F0F8170C5D72925C1FF
            00569D307182C47B0A2BF0CE28797D0CC1D2A1455D2F7AD74AEF5D969B58FD8F
            87A9E3EBE0954AB5DA4DFBBA26EDB6ED37E87E857C54F87D63F14FC01AD78675
            055315FC051242398A41CA38E38218035F8E7E26F0EDF7847C43A8E8BA9C260B
            FB09DEDE78C8C6194E0FE1DC7B1AFDB8AF80BFE0A1BF06CE97AF587C41D360C5
            ADF8169A8EC5E16603E4738181B972093DD455F07665F54C6FD566FDDA9A7FDB
            DD3EFD87C57977D6B0BF5982F7A9FF00E93D7EEDFEF3E31AF7FF00D973C4D86D
            57C3EC383FE9D19CFF00BA8DDBFDCEFF00875AF00AEBBE13F88BFE118F1FE917
            6CC561694412E173F23FCA78F6C83F857ECF8EA5ED68492DD6BF71F8E45D99F6
            9514515F16741D2D85E05F07DE021F2B22C7C29EE1FBE3A735CD57436280783E
            FDF9C995063E81BB7F5FF0AE7ABF23E048F2E373CD7FE62E7FFA440FB9E25939
            50CB93FF009F31FCDFF90578F7ED31E25FECCF085B690A016D4E4F98E7A24655
            8F6F52BDC7E3CD7B0D7C9BFB43788BFB6FE20CD6A8FBA0D3A35B751B71F37DE7
            FAF271F87E35FB5E0697B5C445745AFDDFF06C7C249D91E634F82092EA78E186
            3696691822220C96627000F7CD32BE94FD85FE0D9F889F14935FBFB7F3344F0F
            62E1B7AE565B83FEA93A60E39623D857BF9A63A39760EA62A5F6569EBB2FC4E9
            CBF072C7E2A1878F57AF92EAFEE3EE2FD99FE1127C1AF84DA568D2C6A3569D7E
            D7A8B8EA677192B9C7451851F4A2BD568AFE63AB5675A72AB51DE4DDDB3FA229
            D38518469D3568A565E882B9CF88BE07B1F893E07D6BC33A90FF0044D4AD9A02
            D8C98DBAA38191CAB0561EE05747454464E12528BB345B4A4ACF63F12FC5DE17
            BEF0578A355D07538BC9BFD3AE5EDA64C83F329C6411D41EA0FA1ACA8A468644
            9118A3A90CACA70411D08AFB5FFE0A29F07FEC9A8E99F1174F8711DD6DB0D4F6
            F6900FDCC879EEA0A7030362F735F1357F4BE4B98C735C0C311F6B697AADFF00
            CFE67F3E67180796E32743ECEF1F47B7DDB7AA3EE6F056B3FF00090F84B48D44
            9DCF716D1BBFB3ED1B8741D0E7B56D5790FECD1E201A9782EE74E7663369F704
            7CCFBBE47195C0EC321863DBF2F5EAF9DA94FD8CDD3EDA1E7A775734ADC63C35
            A81F5BB83FF417ACDAD6B751FF0008ADF96C63ED50E38E7A3564D7E67C214BD9
            62F38F3C4C9FDF4E97F48FA5CE1DE960FF00EBD2FF00D2A64773709696D2CF21
            DB1C685D8E3380064D7C21ADEAB36B9AC5EEA170499AE66695B273824E71D074
            FA0AFAD7E396BE340F871A910EC93DD6DB58B63EC3963CF3D7EE86E075AF8F6B
            F69CA697C555FA7F9FE87CB4DF424B7B796F2E228208CCB3CAC1238D7AB31380
            07D4D7EBE7ECEBF09E3F835F09F46F0F9551A894FB56A0EA73BEE5C02FDC8C2F
            0808EA101AF87FF609F83E3C77F13DFC517D16FD2BC37B664CF47BB6CF943A83
            F2E0BF7E5573D6BF4AEBF36E35CCFDB622381A6FDD86AFFC4FFC97E67EB1C239
            77B1A12C64D7BD3D17F857F9BFC90514515F9A1FA0051451401CD7C49F0459FC
            47F026B7E1ABE4578351B668416CE11FAA3F1FDD60ADF857E3778AFC377BE0EF
            12EA5A26A31186F6C27682546182181AFDB6AF84BFE0A23F064C175A7FC47D36
            0CA4C56C7550A09C30188653EC40D87A744EB9AFD0383B33FAA633EAB51FBB53
            45FE2E9F7EDF71F15C5597FD6B07F5882F7A9EBFF6EF5FBB7F933E7DFD99F598
            EC3C7571652305FB6DAB2C7C725D486C7FDF218FE15F5257C2DE12D6DBC37E26
            D335356D9F669D646396036E7E6CED392319E3BF4E6BEE4B5B94BCB586E223BA
            39503A9C63208C8AFD1F33A6E188E6E925F969FE47E3D0D8DCB64FF8A5AF9F01
            B17318C9EAB907A71D0F7E7B0AC8AD086E3668773108C1DF326642791C31C018
            F6F5EC2B3EBF33E1B4D62734FF00B087FF00A6A97F5E5E87D166B38CE9E1395E
            D492FF00C9A67CF7FB546B51B4FA16948C0CA824B99060E403855E7A7387FC85
            7845ADB497B750DBC28649A5711A228C96627000FC6BADF8BFE22FF849FE206A
            974B209218DFECF111B800A9C746E9CE7A6064938E6BDC7F609F830DE3AF88EF
            E2DD4210DA378719648B783896ECF318078FB98DE7AF3B38E6BF56A98A594659
            2C455DD26D79B7B2FC8F2B2FC1CB31C6430F1EAF5F25D7F03EDAFD9BFE1647F0
            83E11E8BA1344B1EA0C9F6ABE619CB4EF82D9F7002AFFC06BD3A8A2BF9CAA549
            D69BA93776F567F434211A715082B25A20A28A2B32C28A28A002B0BC73E0FB0F
            1FF84357F0EEA71892C751B7682418CEDC8E187B83823DC56ED14D369DD0A494
            938BD99F8A3E3AF085EF807C61ABF87B50005DE9D72F6EE54E436D38047B1EB5
            F59FC25F10FF00C24BF0FF0048B9691659E3884131552A03A71DFDB1D38F4AD8
            FF008289FC1EDC9A6FC43D3E0C91B6C752D83B7FCB290FEAA7FE035E39FB2C6B
            1BAD35CD299BEE48974831EA36B7FE82B5FBD50C7ACDB2CA78B5F145DA5E4F67
            F7E8FD19F80E6B80796E36743ECEEBD3FAD0FA221843691732E065668C03DF90
            DC7F9F4AE7FC4FACC7E1EF0FEA1A94AE234B6859F7329619C719039EB8AE8E00
            7FB0AF0E063CE88671CF47AF15FDA5758FB078012C95B0F7D7288571D517E73F
            AAAD7C8F0FD1E6C563A115ACABEBFF0082E9EBF70B1AFDCA3FE05F9C8F992DAD
            EEB5DD56386353717B7930500632EECDF9724D7EC07C08F85D6FF07FE17E8DE1
            B8829B98A3F36F255FF96970DCB9FCF81ECA2BE22FD807E0DA78CFC7B71E31D4
            6012699A011F660EB957BB3F74FF00C007CDEC76D7E8ED61C65992AF5E380A4F
            DDA7BFADBF45F9B3F41E12CBBD8D078CA8BDE9EDE9FF0005FE81451457E727DF
            851451400514514005145140185E39F085878FFC21AB7877534DF65A8DBB4127
            1CAE470C3DC1C11EE2BF2CBC0BA76AFF00083E3B4FE18BD4C4CB70FA75CA1380
            EB9CAB8FC9581F42477AFD6AAF88BFE0A11F0A65B59F46F899A4A149EDDD2D2F
            D9072A41CC327E7953FF0001AFB5E18CC3EAF8896127F0D556F497D97F7E9F77
            63E2F8A32FFAD617EB105EF53D7E5D7EEDCDC8AF9134D9AD7F8A591641D7B03F
            877FD2BE61FDA2350D47C49E3FD33C376B119446A8B0431F2D2CD29C74FC140F
            C7D6BDF7C3FADC7AD78674ED658A2473DB473BB640099425813938C1CE79E315
            CD7EC55F0FA6F8ADF19358F88DAAC45AC34A98B5B865C06B86184039FE04E7BE
            0EDAFA6C15686531C6E327BA9DD27D64E10497E1F83F33F3BC3E1A799D7A1865
            B5ACFD13777FD791F63FC08F85D6FF0007FE17E8DE1B8829B98A3F36F255FF00
            96970DCB9FCF81ECA2BD028A2BF28A9525566EA4DDDB777EACFDD29D38D282A7
            0564959051451599A051451400514514005145140056178E7C2161E3FF00086A
            DE1DD4D37D96A36ED049C72B91C30F707047B8ADDA29A6E2D35B9328A92717B3
            3F3326D375DF047C3EF13F82675BA7F10D86A5FD956D144CC5A4123AEC64207D
            D20B9FA03D335F79FC09F85D6FF07FE1868DE1C8954DCC51F9B7922FFCB4B86E
            5CFBF3C0F65154B5DF847A6EADF19748F153C814C76ED34D67E4A959E788AAC3
            297EA0A090F03AED5F4AF4DAFA0CCF36A99842307A7DA979CAD6FCB6ED73E672
            8C96396D5AB537BBB47CA3BFF5E81451457CF1F5014514500145145007FFD9}
          HightQuality = False
        end
        object Memo1: TfrxMemoView
          Left = 85.929190000000000000
          Top = 2.338590000000000000
          Width = 612.283860000000000000
          Height = 94.488250000000000000
          DataSetName = 'Data Sekolah'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'KURIKULUM BERBASIS KOMPETENSI '
            'TINGKAT SATUAN PENDIDIKAN SEKOLAH TARAKANITA'
            'LAPORAN HASIL BELAJAR SISWA'
            ''
            '[zqr2."nama_tk"] [zqr2."kota"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 107.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kelompok')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 131.283550000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Semester / Tahun')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 152.519790000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Siswa / NIS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 143.622140000000000000
          Top = 131.283550000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 143.622140000000000000
          Top = 152.519790000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 143.622140000000000000
          Top = 107.826840000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Top = 107.826840000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[zqr2."tingkat"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 158.740260000000000000
          Top = 131.283550000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[zqr2."semester"] / [zqr2."tahun_ajaran"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 158.740260000000000000
          Top = 152.519790000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[zqr1."siswa_name"] / [zqr1."siswa_nis"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000010000
        Top = 215.433210000000000000
        Width = 680.315400000000000000
        Stretched = True
        object Memo12: TfrxMemoView
          Left = 49.133890000000000000
          Width = 468.661720000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr3."kompetensi_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 518.118430000000000000
          Width = 75.590600000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Prestasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 593.827150000000000000
          Width = 86.929190000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Simbol')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 49.133890000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 79.370130000000000000
        Top = 332.598640000000000000
        Width = 680.315400000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset3
        DataSetName = 'zqr3'
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          Left = 49.133890000000000000
          Width = 468.661720000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[zqr3."hb_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 518.118430000000000000
          Width = 75.590600000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr3."hb_symbol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 593.827150000000000000
          Width = 86.929190000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Width = 49.133890000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 597.165740000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 64.252010000000000000
          Center = True
          DataSet = frxDBDataset3
          DataSetName = 'zqr3'
          HightQuality = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Height = 351.496290000000000000
        Top = 472.441250000000000000
        Width = 680.315400000000000000
        OnBeforePrint = 'ColumnFooter1OnBeforePrint'
        object Memo19: TfrxMemoView
          Width = 517.795610000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rata - rata')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 517.338900000000000000
          Width = 75.590600000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr4."kompetensi_symbol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 593.047620000000000000
          Width = 86.929190000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture3: TfrxPictureView
          Left = 596.386210000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 64.252010000000000000
          Center = True
          HightQuality = False
        end
        object Memo22: TfrxMemoView
          Align = baCenter
          Left = 228.661565000000000000
          Top = 82.929190000000010000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Narasi Kemampuan Anak Didik')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 102.047310000000000000
          Width = 680.315400000000000000
          Height = 124.724490000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr4."kompetensi_narasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 5.669295000000000000
          Top = 234.330860000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Mengetahui')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 5.669295000000000000
          Top = 331.614409999999900000
          Width = 234.330708660000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr2."kepala_sekolah"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 249.448980000000000000
          Top = 234.330860000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Orang Tua / ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 490.338900000000000000
          Top = 234.330860000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd MMM yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Jakarta, [zqr2."tanggal"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 490.338900000000000000
          Top = 331.614409999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd MMM yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr2."wali_kelas"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 249.448980000000000000
          Top = 331.614409999999900000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[zqr1."siswa_fname"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 5.669295000000000000
          Top = 257.008040000000000000
          Width = 234.330708660000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kepala [zqr2."nama_tk"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 490.338900000000000000
          Top = 257.008040000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd MMM yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Guru Kelas')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 249.448980000000000000
          Top = 257.008040000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Wali Murid')
          ParentFont = False
        end
      end
    end
  end
end
