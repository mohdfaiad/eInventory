object frmEditProductUnit: TfrmEditProductUnit
  Left = 405
  Top = 192
  Width = 618
  Height = 237
  Caption = 'frmEditProductUnit'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 210
    Align = alClient
    BorderOuter = fsGroove
    TabOrder = 0
    DesignSize = (
      608
      208)
    object btnSearchWh: TSpeedButton
      Left = 200
      Top = 13
      Width = 29
      Height = 23
      Caption = '..'
      Enabled = False
    end
    object RzLabel6: TRzLabel
      Left = 12
      Top = 14
      Width = 124
      Height = 23
      AutoSize = False
      Caption = ' '#3626#3636#3609#3588#3657#3634
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object spdSearchUnit: TSpeedButton
      Left = 200
      Top = 37
      Width = 29
      Height = 23
      Caption = '..'
      OnClick = spdSearchUnitClick
    end
    object RzLabel1: TRzLabel
      Left = 12
      Top = 38
      Width = 124
      Height = 23
      AutoSize = False
      Caption = ' '#3627#3609#3656#3623#3618#3626#3636#3609#3588#3657#3634
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object spdSearchPacking: TSpeedButton
      Left = 200
      Top = 61
      Width = 29
      Height = 23
      Caption = '..'
      OnClick = spdSearchPackingClick
    end
    object RzLabel2: TRzLabel
      Left = 12
      Top = 62
      Width = 124
      Height = 23
      AutoSize = False
      Caption = ' '#3627#3609#3656#3623#3618#3609#3633#3610
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel3: TRzLabel
      Left = 12
      Top = 94
      Width = 124
      Height = 23
      AutoSize = False
      Caption = ' '#3586#3609#3634#3604#3610#3619#3619#3592#3640
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object btnSave: TRzBitBtn
      Left = 437
      Top = 176
      Width = 80
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = #3610#3633#3609#3607#3638#3585
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFA15A6292494E92494E92494E92494E92494E92
        494E92494E92494E92494E92494EA25959D89585B35683FF00FFFF00FF92494E
        FEBEA3FAB092E8977CFBF7F8FBF7F8FBF7F8FBF7F8FBF7F8FBF7F8F6A381FCB5
        97FEBEA392494EFF00FFFF00FF92494EFDB9A1F2A68CDB8A74FBF7F8D58673D7
        9A8EF1E6E7F1E6E7F1E6E7E79378F5AC93FDB9A192494EFF00FFFF00FF92494E
        FCB49EEA9B86CE7D6DFBF7F8C97A6CD2978EEDDFE1EDDFE1EDDFE1D8836FF0A4
        8EFCB49E92494EFF00FFFF00FF92494EFAAF9BE19180C26F65FBF7F8FBF7F8FB
        F7F8ECDDDFECDDDFECDDDFC97365EA9B89FAAF9B92494EFF00FFFF00FF92494E
        F9AC9BE8988AC97365C97365C97365C97365C97365C97365C97365C97365ED9D
        8DF9AA9992494EFF00FFFF00FF92494EF9AFA1F9AFA1F9AFA1F9AFA1F9AFA1F9
        AFA1F9AFA1F9AFA1F9AFA1F9AFA1DF9289F8A59692494EFF00FFFF00FF92494E
        F8B2A8F9AFA19F60659F60659F60659F60659F60659F60659F60659F6065DF92
        89F7A49892494EFF00FFFF00FF92494EF8B7AF9F6065FDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFC9F6065F6A9A092494EFF00FFFF00FF92494E
        F8BCB79F6065FDFCFCE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBF5ECEE9F60
        65F6A9A392494EFF00FFFF00FF92494EF8C2BF9F6065FDFCFCF1E6E7F1E6E7F1
        E6E7F1E6E7F1E6E7F1E6E7F1E6E79F6065F5A9A592494EFF00FFFF00FF92494E
        F8C8C69F6065FDFCFCE3BEC2E3BEC2E3BEC2E3BEC2E3BEC2E3BEC2EDDFE19F60
        65F5ACA992494EFF00FFFF00FFB36279F8C8C79F6065FDFCFCE8D3D6E8D3D6E8
        D3D6E8D3D6E8D3D6E8D3D6ECDDDF9F6065EAA2A2B35684FF00FFFF00FFD23FBA
        92494E92494E9F60659F60659F60659F60659F60659F60659F60659F60659249
        4E92494ED52ABBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnCancel: TRzBitBtn
      Left = 525
      Top = 176
      Width = 80
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = #3618#3585#3648#3621#3636#3585
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFBF00E55000BA1000A60000A10000A01000A45000BABF00E5FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFEF00F94000B50000AD0000B50000B200
        00B00000AD0000AB0000A90000A34000B3EF00F9FF00FFFF00FFFF00FFEF00F9
        3000B50000C20000C20000BF0000B00000A80000A70000AA0000B10000AF0000
        AC3000B0EF00F9FF00FFFF00FF4000B70000D00000D00000CD0000B07F00CCFF
        00FFFF00FFAF00DF4000B40000AE0000B60000B24000B4FF00FFBF00E50000C8
        0000E10000DD0000DA0000D61000B7CF00ECFF00FFFF00FFFF00FF6000BF0000
        B30000BD0000AFBF00E55000C50000F30000EF0000BB0000E80000E40000E010
        00BACF00ECFF00FFFF00FFFF00FF4000B60000C80000C55000BC1000C60000FE
        0000DE7F00CC1000C10000F20000EE0000EA1000BDCF00ECFF00FFFF00FFAF00
        DF0000C10000D11000B40000CC0000FF0000CCFF00FFCF00EC1000C50000FC00
        00F90000F51000C2CF00ECFF00FFFF00FF0000BD0000DE0000BA0000CC0000FF
        0000CCFF00FFFF00FFCF00EC1000C60000FF0000FF0000FE1000C6CF00ECFF00
        FF0000C40000EC0000C11000C60000FF0000DFAF00DFFF00FFFF00FFCF00EC10
        00C60000FF0000FF0000FF1000C67F00CC0000DE0000FB1000C35000C60000FF
        0000FF4000B9FF00FFFF00FFFF00FFCF00EC1000C60000FF0000FF0000FF0000
        C60000FF0000FF5000BFBF00E50000D90000FF0000DF7F00CCFF00FFFF00FFFF
        00FFCF00EC1000C60000FF0000FF0000FF0000FF0000D9BF00E5FF00FF4000B9
        0000F90000FF0000DF4000B9AF00DFFF00FFFF00FF7F00CC0000C60000FF0000
        FF0000F94000B9FF00FFFF00FFEF00F93000C00000F90000FF0000FF0000DF00
        00CC0000CC0000DF0000FF0000FF0000F93000C0EF00F9FF00FFFF00FFFF00FF
        EF00F94000B90000D90000FF0000FF0000FF0000FF0000FF0000FF0000D94000
        B9EF00F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBF00E55000BF1000C600
        00CC0000CC1000C65000C6BF00E5FF00FFFF00FFFF00FFFF00FF}
    end
    object DBCheckBox1: TDBCheckBox
      Left = 140
      Top = 119
      Width = 97
      Height = 17
      Caption = #3651#3594#3657#3591#3634#3609
      DataField = 'PRUACT'
      DataSource = dsProdUni
      TabOrder = 2
      ValueChecked = 'A'
      ValueUnchecked = 'I'
    end
    object edPrdCode: TRzEdit
      Left = 139
      Top = 14
      Width = 59
      Height = 22
      AutoSize = False
      Enabled = False
      FocusColor = clWhite
      FrameVisible = True
      ReadOnlyColor = clSilver
      TabOrder = 3
    end
    object edPrdName: TRzEdit
      Left = 231
      Top = 14
      Width = 370
      Height = 22
      AutoSize = False
      Color = clSilver
      FocusColor = clWhite
      FrameVisible = True
      ReadOnly = True
      ReadOnlyColor = clSilver
      TabOrder = 4
    end
    object edUnitCode: TRzEdit
      Left = 139
      Top = 38
      Width = 59
      Height = 22
      AutoSize = False
      Color = clWhite
      FrameVisible = True
      ReadOnlyColor = clSilver
      TabOrder = 5
      OnKeyDown = edUnitCodeKeyDown
    end
    object edUnitName: TRzEdit
      Left = 231
      Top = 38
      Width = 370
      Height = 22
      AutoSize = False
      Color = clSilver
      FocusColor = clWhite
      FrameVisible = True
      ReadOnly = True
      ReadOnlyColor = clSilver
      TabOrder = 6
    end
    object edPackingCode: TRzEdit
      Left = 139
      Top = 62
      Width = 59
      Height = 22
      AutoSize = False
      Color = clWhite
      FrameVisible = True
      ReadOnlyColor = clSilver
      TabOrder = 7
      OnKeyDown = edPackingCodeKeyDown
    end
    object edPackingName: TRzEdit
      Left = 231
      Top = 62
      Width = 370
      Height = 22
      AutoSize = False
      Color = clSilver
      FocusColor = clWhite
      FrameVisible = True
      ReadOnly = True
      ReadOnlyColor = clSilver
      TabOrder = 8
    end
    object edPackingRate: TRzEdit
      Left = 139
      Top = 94
      Width = 94
      Height = 22
      AutoSize = False
      Color = clWhite
      FrameVisible = True
      ReadOnlyColor = clSilver
      TabOrder = 9
    end
  end
  object cdsProdUni: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 33
    Top = 134
  end
  object dsProdUni: TDataSource
    DataSet = cdsProdUni
    Left = 81
    Top = 134
  end
end
