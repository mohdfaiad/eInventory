object frmNewContract: TfrmNewContract
  Left = 455
  Top = 123
  Width = 975
  Height = 563
  Caption = 'frmNewContract'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 536
    Align = alClient
    BorderOuter = fsGroove
    TabOrder = 0
    DesignSize = (
      965
      534)
    object RzLabel1: TRzLabel
      Left = 20
      Top = 81
      Width = 97
      Height = 23
      AutoSize = False
      Caption = ' '#3619#3627#3633#3626#3626#3617#3634#3594#3636#3585
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel3: TRzLabel
      Left = 20
      Top = 105
      Width = 97
      Height = 23
      AutoSize = False
      Caption = ' '#3594#3639#3656#3629
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel4: TRzLabel
      Left = 306
      Top = 81
      Width = 137
      Height = 23
      AutoSize = False
      Caption = ' '#3619#3627#3633#3626#3611#3619#3632#3592#3635#3605#3633#3623#3611#3619#3632#3594#3634#3594#3609
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel2: TRzLabel
      Left = 306
      Top = 105
      Width = 137
      Height = 23
      AutoSize = False
      Caption = ' '#3626#3585#3640#3621
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel5: TRzLabel
      Left = 20
      Top = 50
      Width = 97
      Height = 23
      AutoSize = False
      Caption = ' '#3648#3621#3586#3607#3637#3656#3626#3633#3597#3597#3634
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel6: TRzLabel
      Left = 307
      Top = 50
      Width = 137
      Height = 23
      AutoSize = False
      Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609#3607#3637#3656#3586#3629#3626#3636#3609#3648#3594#3639#3656#3629
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object RzLabel22: TRzLabel
      Left = 626
      Top = 50
      Width = 137
      Height = 23
      AutoSize = False
      Caption = ' '#3626#3606#3634#3609#3632#3626#3636#3609#3648#3594#3639#3656#3629
      Color = clSilver
      ParentColor = False
      Layout = tlCenter
      BorderColor = clGray
    end
    object sbtSearch: TSpeedButton
      Left = 275
      Top = 81
      Width = 23
      Height = 22
      Caption = '..'
      OnClick = sbtSearchClick
    end
    object pnHeader: TRzPanel
      Left = 2
      Top = 2
      Width = 963
      Height = 28
      Align = alTop
      BorderOuter = fsNone
      Color = 12700366
      TabOrder = 0
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 196
        Height = 14
        Caption = ' '#3626#3619#3657#3634#3591#3626#3633#3597#3597#3634#3651#3627#3617#3656' ( New Contract )'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pgDetail: TPageControl
      Left = 10
      Top = 144
      Width = 948
      Height = 351
      ActivePage = TabSheet1
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = #3626#3636#3609#3648#3594#3639#3656#3629
        object RzLabel7: TRzLabel
          Left = 12
          Top = 14
          Width = 108
          Height = 23
          AutoSize = False
          Caption = ' rate'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel8: TRzLabel
          Left = 12
          Top = 39
          Width = 108
          Height = 23
          AutoSize = False
          Caption = ' '#3629#3633#3605#3619#3634#3604#3629#3585#3648#3610#3637#3657#3618
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel9: TRzLabel
          Left = 353
          Top = 39
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3605#3657#3609')'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel10: TRzLabel
          Left = 300
          Top = 39
          Width = 45
          Height = 23
          AutoSize = False
          Caption = ' %'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel11: TRzLabel
          Left = 637
          Top = 39
          Width = 45
          Height = 23
          AutoSize = False
          Caption = ' '#3610#3634#3607
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel12: TRzLabel
          Left = 353
          Top = 135
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3619#3632#3618#3632#3648#3623#3621#3634#3612#3656#3629#3609#3594#3635#3619#3632
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel13: TRzLabel
          Left = 637
          Top = 135
          Width = 101
          Height = 23
          AutoSize = False
          Caption = ' '#3648#3604#3639#3629#3609
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel14: TRzLabel
          Left = 353
          Top = 159
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609#3612#3656#3629#3609#3594#3635#3619#3632
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel15: TRzLabel
          Left = 637
          Top = 159
          Width = 101
          Height = 23
          AutoSize = False
          Caption = ' '#3610#3634#3607'/'#3648#3604#3639#3629#3609
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel16: TRzLabel
          Left = 353
          Top = 63
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3604#3629#3585#3648#3610#3637#3657#3618')'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel17: TRzLabel
          Left = 637
          Top = 63
          Width = 45
          Height = 23
          AutoSize = False
          Caption = ' '#3610#3634#3607
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel18: TRzLabel
          Left = 353
          Top = 87
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609#3607#3633#3657#3591#3626#3636#3657#3609
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel19: TRzLabel
          Left = 637
          Top = 87
          Width = 45
          Height = 23
          AutoSize = False
          Caption = ' '#3610#3634#3607
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel20: TRzLabel
          Left = 353
          Top = 183
          Width = 111
          Height = 23
          AutoSize = False
          Caption = ' '#3592#3635#3609#3623#3609#3648#3591#3636#3609#3612#3656#3629#3609#3594#3635#3619#3632
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object RzLabel21: TRzLabel
          Left = 637
          Top = 183
          Width = 101
          Height = 23
          AutoSize = False
          Caption = ' '#3610#3634#3607'/week'
          Color = clSilver
          ParentColor = False
          Layout = tlCenter
          BorderColor = clGray
        end
        object cmbRates: TDBLookupComboboxEh
          Left = 128
          Top = 14
          Width = 305
          Height = 22
          DataField = 'CONRTE'
          DataSource = dsContract
          DropDownBox.ColumnDefValues.Title.EndEllipsis = True
          DropDownBox.ColumnDefValues.Title.TitleButton = True
          DropDownBox.Columns = <
            item
              FieldName = 'RTECDE'
              Title.Caption = #3619#3627#3633#3626
              Width = 80
            end
            item
              FieldName = 'RTENME'
              Title.Caption = #3594#3639#3656#3629
              Width = 150
            end
            item
              FieldName = 'RTERTF'
              Title.Caption = 'Rate|Rate From'
              Width = 80
            end
            item
              FieldName = 'RTERTT'
              Title.Caption = 'Rate|Rate To'
              Width = 80
            end
            item
              FieldName = 'RTEPER'
              Title.Caption = #3604#3629#3585#3648#3610#3637#3657#3618' (%)'
              Width = 80
            end
            item
              FieldName = 'RTEMPE'
              Title.Caption = #3592#3635#3609#3623#3609#3591#3623#3604'|'#3648#3604#3639#3629#3609
              Width = 100
            end
            item
              FieldName = 'RTEWPE'
              Title.Caption = #3592#3635#3609#3623#3609#3591#3623#3604'|week'
              Width = 100
            end>
          DropDownBox.ListSource = dsRates
          DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
          DropDownBox.UseMultiTitle = True
          DropDownBox.ShowTitles = True
          DropDownBox.Sizable = True
          DropDownBox.Width = 500
          EditButtons = <>
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'RTECDE'
          ListField = 'RTENME'
          ListSource = dsRates
          ParentFont = False
          Style = csDropDownEh
          TabOrder = 0
          Visible = True
        end
        object RzDBEdit3: TRzDBEdit
          Left = 129
          Top = 39
          Width = 169
          Height = 22
          DataSource = dsContractRate
          DataField = 'RTEPER'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 1
        end
        object RzDBEdit5: TRzDBEdit
          Left = 466
          Top = 39
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONAMT'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          TabOrder = 2
          OnExit = RzDBEdit5Exit
        end
        object RzDBEdit6: TRzDBEdit
          Left = 466
          Top = 134
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONPER'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 3
        end
        object RzDBEdit7: TRzDBEdit
          Left = 466
          Top = 158
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONMRT'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 4
        end
        object RzDBEdit8: TRzDBEdit
          Left = 466
          Top = 63
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONITR'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 5
        end
        object RzDBEdit9: TRzDBEdit
          Left = 466
          Top = 87
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONNET'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 6
        end
        object RzDBEdit10: TRzDBEdit
          Left = 466
          Top = 182
          Width = 169
          Height = 22
          DataSource = dsContract
          DataField = 'CONWRT'
          ReadOnly = True
          Color = 15000804
          Font.Charset = THAI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameVisible = True
          ParentFont = False
          ReadOnlyColor = 15000804
          TabOrder = 7
        end
      end
      object TabSheet2: TTabSheet
        Caption = #3585#3634#3619#3594#3635#3619#3632
        ImageIndex = 1
      end
    end
    object edCifCode: TRzDBEdit
      Left = 121
      Top = 81
      Width = 152
      Height = 22
      DataSource = dsContract
      DataField = 'CONCIF'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit1: TRzDBEdit
      Left = 121
      Top = 104
      Width = 177
      Height = 22
      DataSource = dsCustomer
      DataField = 'FNAME'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit2: TRzDBEdit
      Left = 446
      Top = 81
      Width = 174
      Height = 22
      DataSource = dsCustomer
      DataField = 'IDCARD'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 4
    end
    object RzDBEdit4: TRzDBEdit
      Left = 446
      Top = 104
      Width = 174
      Height = 22
      DataSource = dsCustomer
      DataField = 'LNAME'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 5
    end
    object RzDBEdit18: TRzDBEdit
      Left = 121
      Top = 50
      Width = 177
      Height = 24
      DataSource = dsContract
      DataField = 'CONRUN'
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 6
    end
    object RzDBEdit14: TRzDBEdit
      Left = 446
      Top = 50
      Width = 174
      Height = 24
      DataSource = dsContract
      DataField = 'CONAMT'
      Font.Charset = THAI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameVisible = True
      ParentFont = False
      TabOrder = 7
    end
    object btnOK: TRzBitBtn
      Left = 764
      Top = 501
      Width = 97
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = '[F11] OK'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 8
      OnClick = btnOKClick
    end
    object btnClose: TRzBitBtn
      Left = 861
      Top = 501
      Width = 97
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = '[ESC] Close'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 9
      OnClick = btnCloseClick
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 766
      Top = 50
      Width = 179
      Height = 22
      Ctl3D = False
      DataField = 'CONSTS'
      DataSource = dsContract
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'CDECDE'
      ListField = 'CDENME'
      ListSource = dsContractStatus
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      FlatButtons = True
      FrameVisible = True
    end
    object btnApprove: TRzBitBtn
      Left = 490
      Top = 501
      Width = 97
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = 'Approve.'
      Color = 16766378
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 11
      OnClick = btnApproveClick
    end
    object btnCancelContract: TRzBitBtn
      Left = 588
      Top = 501
      Width = 141
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = 'Cancel the contract.'
      Color = 13557503
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 12
      OnClick = btnCancelContractClick
    end
  end
  object cdsContract: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsContractBeforePost
    Left = 62
    Top = 313
  end
  object dsContract: TDataSource
    DataSet = cdsContract
    Left = 62
    Top = 265
  end
  object dsRates: TDataSource
    DataSet = cdsRates
    OnDataChange = dsRatesDataChange
    Left = 62
    Top = 361
  end
  object cdsRates: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 62
    Top = 409
  end
  object dsContractRate: TDataSource
    DataSet = cdsContractRate
    Left = 198
    Top = 257
  end
  object cdsContractRate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 198
    Top = 305
  end
  object cdsContractStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 325
    Top = 397
  end
  object dsContractStatus: TDataSource
    DataSet = cdsContractStatus
    Left = 389
    Top = 405
  end
  object dsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 198
    Top = 361
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 198
    Top = 409
  end
end
