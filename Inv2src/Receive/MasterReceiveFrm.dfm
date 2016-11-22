object frmMasterReceive: TfrmMasterReceive
  Left = 456
  Top = 163
  Width = 1024
  Height = 563
  Caption = 'frmMasterReceive'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnAllClients: TRzPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 536
    Align = alClient
    BorderOuter = fsPopup
    TabOrder = 0
    object rzTopPanel: TRzPanel
      Left = 1
      Top = 29
      Width = 1014
      Height = 4
      Align = alTop
      BorderOuter = fsNone
      GradientColorStyle = gcsCustom
      TabOrder = 0
      VisualStyle = vsGradient
    end
    object pnHeader: TRzPanel
      Left = 1
      Top = 1
      Width = 1014
      Height = 28
      Align = alTop
      BorderOuter = fsNone
      Color = 5832793
      TabOrder = 1
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 139
        Height = 16
        Caption = #3621#3591#3619#3633#3610#3626#3636#3609#3588#3657#3634' ( Receive )'
        Font.Charset = THAI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pgAllClients: TPageControl
      Left = 1
      Top = 33
      Width = 1014
      Height = 502
      ActivePage = TabReceiveList
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 2
      OnChange = pgAllClientsChange
      object TabReceiveList: TTabSheet
        Caption = #3619#3634#3618#3585#3634#3619#3651#3610#3621#3591#3619#3633#3610
        object Splitter1: TSplitter
          Left = 0
          Top = 81
          Width = 1006
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object pnMiddle: TRzPanel
          Left = 0
          Top = 120
          Width = 1006
          Height = 348
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object pgWarehouseProduct: TRzPageControl
            Left = 0
            Top = 0
            Width = 1006
            Height = 348
            ActivePage = TabWarehouseProducts
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            TabOrientation = toBottom
            TabStyle = tsRoundCorners
            FixedDimension = 22
            object TabWarehouseProducts: TRzTabSheet
              Caption = #3619#3634#3618#3585#3634#3619#3621#3591#3619#3633#3610#3607#3633#3657#3591#3627#3617#3604
              object grdAllReceives: TcxGrid
                Left = 0
                Top = 0
                Width = 1004
                Height = 321
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView1: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView1DblClick
                  DataController.DataSource = dsAllReceives
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = 'Item'
                    DataBinding.FieldName = 'INSITM'
                    OnGetDisplayText = cxGridDBColumn1GetDisplayText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 33
                  end
                  object cxGridDBTableView1Column11: TcxGridDBColumn
                    Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3621#3591#3619#3633#3610
                    DataBinding.FieldName = 'RCHCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 120
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
                    DataBinding.FieldName = 'POHCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 111
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    Caption = #3588#3621#3633#3591
                    DataBinding.FieldName = 'WH0NAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 222
                  end
                  object cxGridDBTableView1Column7: TcxGridDBColumn
                    Caption = #3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
                    DataBinding.FieldName = 'SUPNAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 346
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                    DataBinding.FieldName = 'RCHAMT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 97
                  end
                  object cxGridDBTableView1Column6: TcxGridDBColumn
                    Caption = #3616#3634#3625#3637
                    DataBinding.FieldName = 'RCHVAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
                    DataBinding.FieldName = 'RCHNET'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 109
                  end
                  object grdAllReceivesFLG: TcxGridDBColumn
                    Caption = #3626#3606#3634#3609#3632
                    DataBinding.FieldName = 'RCHFLG'
                    OnCustomDrawCell = grdAllReceivesFLGCustomDrawCell
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 100
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
            object TabWarehouseProductLots: TRzTabSheet
              Caption = #3619#3634#3618#3585#3634#3619#3621#3591#3619#3633#3610#3626#3636#3609#3588#3657#3634' (PO)'
              object Splitter2: TSplitter
                Left = 0
                Top = 201
                Width = 1004
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object grdPOReceives: TcxGrid
                Left = 0
                Top = 204
                Width = 1004
                Height = 117
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView3: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView3DblClick
                  DataController.DataSource = dsPOReceives
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView3CustomDrawColumnHeader
                  object cxGridDBColumn9: TcxGridDBColumn
                    Caption = #3621#3635#3604#3633#3610
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    OnGetDisplayText = cxGridDBColumn9GetDisplayText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 45
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    Caption = #3648#3621#3586#3607#3637#3656#3621#3591#3619#3633#3610
                    DataBinding.FieldName = 'RCHCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 141
                  end
                  object cxGridDBColumn40: TcxGridDBColumn
                    Caption = #3623#3633#3609#3607#3637#3656
                    DataBinding.FieldName = 'RCHDTE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 94
                  end
                  object cxGridDBColumn44: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                    DataBinding.FieldName = 'RCHAMT'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 64
                  end
                  object cxGridDBColumn45: TcxGridDBColumn
                    Caption = #3616#3634#3625#3637
                    DataBinding.FieldName = 'RCHVAM'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 100
                  end
                  object cxGridDBColumn46: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3619#3623#3617
                    DataBinding.FieldName = 'RCHNET'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 105
                  end
                  object grdPOReceiveListFLG: TcxGridDBColumn
                    Caption = #3626#3606#3634#3609#3632
                    DataBinding.FieldName = 'RCHFLG'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    OnCustomDrawCell = grdPOReceiveListFLGCustomDrawCell
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 117
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBTableView3
                end
              end
              object grdPOLIST: TcxGrid
                Left = 0
                Top = 0
                Width = 1004
                Height = 201
                Align = alTop
                BorderStyle = cxcbsNone
                TabOrder = 1
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                object cxGridDBTableView4: TcxGridDBTableView
                  OnDblClick = cxGridDBTableView4DblClick
                  DataController.DataSource = dsPOList
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView4CustomDrawColumnHeader
                  object cxGridDBColumn8: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'POHCOD'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 33
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
                    DataBinding.FieldName = 'POHCDE'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 174
                  end
                  object cxGridDBColumn25: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'WH0CDE'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 53
                  end
                  object cxGridDBColumn26: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3588#3621#3633#3591
                    DataBinding.FieldName = 'WH0NAM'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 139
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    Caption = #3619#3627#3633#3626
                    DataBinding.FieldName = 'SUPCDE'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 47
                  end
                  object cxGridDBColumn28: TcxGridDBColumn
                    Caption = #3594#3639#3656#3629#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
                    DataBinding.FieldName = 'SUPNAM'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 172
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                    DataBinding.FieldName = 'POHAMT'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 101
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    Caption = #3616#3634#3625#3637
                    DataBinding.FieldName = 'POHVAM'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 87
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
                    DataBinding.FieldName = 'POHNET'
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 103
                  end
                  object grdPOListColF13: TcxGridDBColumn
                    DataBinding.FieldName = 'POHF13'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    OnCustomDrawCell = grdPOListColF13CustomDrawCell
                    OnGetDisplayText = grdPOListColF13GetDisplayText
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Sorting = False
                    Width = 80
                  end
                  object grdPOListColFLR: TcxGridDBColumn
                    Caption = #3585#3634#3619#3621#3591#3619#3633#3610
                    DataBinding.FieldName = 'POHFLR'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.DefaultImageIndex = 0
                    Properties.ImeMode = imHira
                    Properties.Items = <
                      item
                        ImageIndex = 0
                        Value = 'N'
                      end
                      item
                        ImageIndex = 2
                        Value = 'R'
                      end>
                    Properties.LargeImages = cxImageList1
                    OnCustomDrawCell = grdPOListColFLRCustomDrawCell
                    OnGetDisplayText = grdPOListColFLRGetDisplayText
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 70
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = cxGridDBTableView4
                end
              end
            end
          end
        end
        object pnTop: TRzPanel
          Left = 0
          Top = 0
          Width = 1006
          Height = 81
          Align = alTop
          BorderOuter = fsPopup
          TabOrder = 1
          object RzLabel17: TRzLabel
            Left = 4
            Top = 5
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3588#3621#3633#3591
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel16: TRzLabel
            Left = 364
            Top = 5
            Width = 118
            Height = 23
            AutoSize = False
            Caption = '  '#3627#3609#3656#3623#3618#3591#3634#3609#3607#3637#3656#3586#3629#3595#3639#3657#3629
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel18: TRzLabel
            Left = 4
            Top = 29
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel19: TRzLabel
            Left = 4
            Top = 53
            Width = 95
            Height = 23
            AutoSize = False
            Caption = ' '#3586#3657#3629#3588#3623#3634#3617#3588#3657#3609#3627#3634
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object RzLabel20: TRzLabel
            Left = 364
            Top = 29
            Width = 118
            Height = 23
            AutoSize = False
            Caption = ' '#3611#3619#3632#3648#3616#3607#3585#3634#3619#3592#3633#3604#3595#3639#3657#3629
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            BorderColor = clGray
          end
          object cmbWarehouse: TRzComboBox
            Left = 102
            Top = 4
            Width = 259
            Height = 24
            Color = clWhite
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 0
            OnChange = btnRefreshClick
          end
          object cmbDepartments: TRzComboBox
            Left = 486
            Top = 4
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 1
            OnChange = btnRefreshClick
          end
          object cmbSuppliers: TRzComboBox
            Left = 102
            Top = 28
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 2
            OnChange = btnRefreshClick
          end
          object RzBitBtn1: TRzBitBtn
            Left = 750
            Top = 3
            Width = 120
            Height = 70
            Caption = 'Refresh'
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnRefreshClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6DB0B0988A9C9C7E6D9C9C7E6DB0B0978AC0C0ACA1BFBFABA1AFAF96
              899A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFD8D88F43FAFAF3E8DFDFBD9DC4C47F52BABA6A34B8B86A3CCCCC95
              76F5F5E7D6F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFCACA6C12C0C07123D8D87400E8E88300D9D97200B7B75201BABA5D
              26D6D6A182FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFD6D67B19FEFEA62CFFFFA208DEDE7800C6C67C46F3F3DBC7FBFBF5
              EBFBFBF4E9FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFD7D77B20FFFFC56DFBFBA634C5C56E22FAFAF0E7FCFCF7EFFBFBF6
              EDFBFBF5EBFBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFD4D47E29D8D88027D9D97D20D4D47719D3D37414D9D97E21D9D981
              28D4D47E28FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFFEFEFCFBFEFEFCFAFDFDFCFAFBFBF3EDC6C66E23FBFBA634FFFFC5
              6DD8D87C20FBFBF5EC9B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEF5F5E2D5C7C77E4ADEDE7800FFFFA208FEFEA6
              2CD7D77B1AFCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFD9D9A990BBBB5F2AB8B85201D9D97200E8E88300D8D87400C1C172
              24CBCB6C12FCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFBFBF6F4CFCF9D84BABA6E43BBBB6D39C6C68359E2E2C2A7FCFCF8
              F3D9D98F45F0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70B9B99B8DA7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object edSearch: TRzEdit
            Left = 102
            Top = 53
            Width = 643
            Height = 24
            FrameVisible = True
            TabOrder = 4
          end
          object cmbPOType: TRzComboBox
            Left = 486
            Top = 28
            Width = 259
            Height = 24
            Ctl3D = False
            FrameVisible = True
            ItemHeight = 16
            ParentCtl3D = False
            TabOrder = 5
            OnChange = btnRefreshClick
          end
        end
        object RzPanel3: TRzPanel
          Left = 0
          Top = 84
          Width = 1006
          Height = 36
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 2
          DesignSize = (
            1006
            36)
          object RzLabel2: TRzLabel
            Left = 8
            Top = 6
            Width = 353
            Height = 23
            AutoSize = False
            Caption = #3619#3634#3618#3585#3634#3619#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3649#3621#3632#3621#3591#3619#3633#3610
            Font.Charset = THAI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object btnNewPO: TRzBitBtn
            Left = 316
            Top = 4
            Width = 172
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3610#3633#3609#3607#3638#3585#3621#3591#3619#3633#3610#3651#3627#3617#3656' (KEY-IN)'
            Color = clSilver
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 0
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6CBFBFABA1000075
              000000700000006D00BFBFABA100000000000000000000000000000000009B77
              66FFFFFFFFFAFAF4E9FAFAF4E9FAFAF4E9FAFAF3E8FAFAF3E7FCFCF8F100007D
              004444DD7700007200BDBDA99D0000000000000000000000000000000000A27F
              6FFFFFFFFFDDDDC2B5DDDDC2B5DCDCC2B5E9E9D6CD0000870000008500000081
              004848E17B00007A00000075000000700000000000000000000000000000A380
              70FFFFFFFFDBDBC3BBDBDBC3BADBDBC2B8EBEBDCD500008D005E5EF7915A5AF3
              8D5353EC864848E17B4545DE780000780000000000000000000000000000A987
              78FFFFFFFFDBDBC7C2DBDBC6C1DBDBC4BCEBEBDDD70000910000008D0000008B
              005A5AF38D000083000000810000007D0000000000000000000000000000AB89
              7AFFFFFFFFDBDBC7C3DBDBC7C2DBDBC5BEEBEBDED9EBEBDCD6EBEBDBD300008F
              005E5EF79100008900C8C8B7AE0000000000000000000000000000000000AF8E
              7FFFFFFFFFDCDCC5C0DCDCC5BFDBDBC4BDDBDBC2B9DBDBBFB4EBEBDBD3000093
              000000910000008D00BFBFABA10000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEFEFEFDFDFEFEFCFBFDFDFBF8FEFEFCFAFDFDFC
              F8FDFDFBF7FCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDEDECAC6DEDEC6C0DEDEC4BADEDEC1B4DEDEBE
              ADDEDEBEABFCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF8FCFCF9
              F4F9F9F4EEF0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object btnDeletePO: TRzBitBtn
            Left = 597
            Top = 4
            Width = 80
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3621#3610
            Color = clSilver
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 1
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000020482000A14
              AF86867EB8D4D4C8C32E2E2DB3252526B8B7B7ACC3A5A588799B9B7C6B9B9B7C
              6B9A9A7C6A99997B689B9B7C6B0000000000000000000000000002038E002C72
              FF151534D4212135C417174EFF15155CFF36363AC5FDFDF9F3FAFAF2E6FAFAF1
              E4F9F9EFE0F8F8EDDA9797796700000000000000000000000000000049001225
              C52C2C67FF25255DFF20205BFF14141FBAD3D3C9D8DFDFC3B5DCDCBBA9DCDCBA
              A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A79E
              C1101022BF2D2D66FF1C1C49F4747471C4ECECDDD6DBDBBDAFDADABBAADADAB8
              A5DCDCB9A5FAFAF3E699997A6A00000000000000000000000000000000002725
              A63F3F7DFF1C1C3FDD292961FF121223C4D2D2CADADEDEC4B8DBDBBCADDADABA
              A8DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000151C
              C039396DFF868683CC373738B42B2B6DFF29292ABDEEEEE2DCDBDBBDAFDBDBBA
              A9DCDCBCA9FBFBF5EA9A9A7C6B0000000000000000000000000000000000A59B
              CA424242C4F0F0E6E4CACAC3DA323231BBBDBDB8E5E7E7D4CCDBDBBDAFDBDBBA
              AADDDDBBA9FBFBF5EC9B9B7C6B0000000000000000000000000000000000BCA1
              94FFFFFFFFFEFEFEFEFEFEFEFEFFFFFEFEFEFEFDFCFDFDFBF8FDFDFAF6FCFCF9
              F3FCFCF7F0FCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDFDFCBC7DEDEC6C0DEDEC4BADEDEC1B4DEDEBE
              ADDEDEBEABFCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF8FCFCF9
              F4F9F9F4EEF0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
          object btnHoldPO: TRzBitBtn
            Left = 488
            Top = 4
            Width = 109
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3649#3585#3657#3652#3586#3651#3610#3621#3591#3619#3633#3610
            Color = clSilver
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            Visible = False
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6C9B9B7C6B9B9B7C
              6B9A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFFAFAF4E9FAFAF4E9EEEEE9DEE8E8E2D8F7F7F0E4FAFAF2E6FAFAF1
              E4F9F9EFE0F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFDDDDC2B5DDDDC2B5B5B5A9A4B1B1A19ADBDBC2B4DCDCBBA9DCDCBA
              A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFDBDBC3BBEAEADDD76F6F6D7192928B96C3C3CDB9E8E8D6CCDADAB8
              A5DCDCB9A5FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFDBDBC7C2E9E9DDDAA8A8BBCE3434B3562C2CB4447171B46FECECDB
              D2DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFDBDBC7C3E6E6D7D49999D0A76666FF985A5AEC862E2EAD468787BE
              81EAEAD8CCFBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFDCDCC5C0DEDEC9C3DBDBE4D65757E27F6A6AFF9D5555E17C2A2AA4
              3C9C9CC494FCFCF8F29B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEFEFEFDFDD1D1F8DC5454EE836868FF9B5050DC
              7724249E38B7B7DCB6B6B69F940000000000000000000000000000000000AF8F
              80FFFFFFFFDFDFCECCDFDFCDCBDEDECAC6E9E9D9D5ADADEAB95A5AF6886464FF
              974242DA693434873EC6C6BDB60000000000000000000000000000000000B190
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFD9191EFAC5555FC
              889A9AC1A4CDCDBBB66E6E6D8C0000010800000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFBFBFCFAA5A5C5
              A6FFFFFFFF787892F520203DDC0000026600000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9DEDED0
              C98C8C99DE424277FF2D2D4AD80101027700000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B393
              84C1C1B9D0313040BF00080C7E0000001400000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              709C473C37000000000000000000000000000000000000000000}
          end
          object btnNewPOReceive: TRzBitBtn
            Left = 868
            Top = 4
            Width = 134
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = #3651#3610#3621#3591#3619#3633#3610#3651#3627#3617#3656' (PO)'
            Color = clSilver
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnNewPOReceiveClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000036706000E8E180B0B8A150A0A88140909851200004F
              0200000000000000000000000000000000000000000000000000000000000000
              00000000000000000000046A080051DA7B3A3ACF693939CD673232C25B010151
              0300000000000000000000000000000000000000000000000000000000000000
              00000000000000000000056808005CE0843E3ED46E3D3DD36D3434C55F020253
              0400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000005630A0064E48A4141D7713F3FD56F3737C861020253
              050000000000000000000000000000000000000000000000000007770E00066E
              0D00066A0C0006680C0008810F0056E2824444DA744141D8723939CB64030371
              080003580500035705000256040001550300000000000000000021A72D6060E4
              874B4BDD794A4ADC784949DC774A4AE07A4646DD774444DB754040D6703B3BCD
              673939CB653636C8623333C45E0A0A841300000000000000000022A92F7676F0
              995E5EEA8A5A5AE8885656E6845353E4814E4EE17D4747DE784444DB754141D8
              723F3FD56F3D3DD36D3939CD670B0B871500000000000000000024AB307E7EF3
              9F6868EE916464ED8E6060EA8B5959E8865454E4824E4EE17D4646DD774444DA
              744141D7713E3ED46E3A3ACF690C0C891600000000000000000025AD329191F7
              AB8D8DF6A88B8BF5A68989F4A57A7AF09B5959E8865353E4814A4ADF7A5B5BE4
              866767E58C5E5EE1865353DB7C0F0F8D1A000000000000000000087E1100097B
              110008790F0008770F000B8A140089F4A56060EA8B5656E6844545D87207077C
              0D0005630A000568090005680900046608000000000000000000000000000000
              0000000000000000000008770F008BF5A66464ED8E5A5AE8884545D77105055C
              0900000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097910008DF6A86868EE915E5EEA8A4646D87205055E
              0900000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097A110091F7AB7F7FF39F7676F0995858DF7F060563
              0B00000000000000000000000000000000000000000000000000000000000000
              00000000000000000000097D120026AD332525AB322323A9302121A62E07066E
              0C00000000000000000000000000000000000000000000000000}
          end
          object btnRefresh: TRzBitBtn
            Left = 168
            Top = 3
            Width = 120
            Height = 29
            Anchors = [akRight, akBottom]
            Caption = 'Refresh'
            Color = clSilver
            Enabled = False
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnClick = btnRefreshClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009B7C
              6B9D9D7E6DB0B0988A9C9C7E6D9C9C7E6DB0B0978AC0C0ACA1BFBFABA1AFAF96
              899A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
              66FFFFFFFFD8D88F43FAFAF3E8DFDFBD9DC4C47F52BABA6A34B8B86A3CCCCC95
              76F5F5E7D6F8F8EDDA979779670000000000000000000000000000000000A27F
              6FFFFFFFFFCACA6C12C0C07123D8D87400E8E88300D9D97200B7B75201BABA5D
              26D6D6A182FAFAF1E2989879680000000000000000000000000000000000A380
              70FFFFFFFFD6D67B19FEFEA62CFFFFA208DEDE7800C6C67C46F3F3DBC7FBFBF5
              EBFBFBF4E9FAFAF3E699997A6A0000000000000000000000000000000000A987
              78FFFFFFFFD7D77B20FFFFC56DFBFBA634C5C56E22FAFAF0E7FCFCF7EFFBFBF6
              EDFBFBF5EBFBFBF4E899997B6B0000000000000000000000000000000000AB89
              7AFFFFFFFFD4D47E29D8D88027D9D97D20D4D47719D3D37414D9D97E21D9D981
              28D4D47E28FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
              7FFFFFFFFFFEFEFCFBFEFEFCFAFDFDFCFAFBFBF3EDC6C66E23FBFBA634FFFFC5
              6DD8D87C20FBFBF5EC9B9B7C6B0000000000000000000000000000000000AF8F
              80FFFFFFFFFEFEFEFEFEFEFEFEF5F5E2D5C7C77E4ADEDE7800FFFFA208FEFEA6
              2CD7D77B1AFCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
              80FFFFFFFFD9D9A990BBBB5F2AB8B85201D9D97200E8E88300D8D87400C1C172
              24CBCB6C12FCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
              80FFFFFFFFFBFBF6F4CFCF9D84BABA6E43BBBB6D39C6C68359E2E2C2A7FCFCF8
              F3D9D98F45F0F0E8E09E9D7F700000000000000000000000000000000000B797
              87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
              70B9B99B8DA7A78270A7A782700000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
              70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
              88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
              70B1B18E7E622F2420000000000000000000000000000000000000000000B898
              88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
              7083352924000000000000000000000000000000000000000000}
          end
        end
      end
      object TabReceiveData: TTabSheet
        Caption = #3651#3610#3621#3591#3619#3633#3610
        ImageIndex = 1
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 1006
          Height = 468
          Align = alClient
          BorderOuter = fsFlat
          TabOrder = 0
          object RzPanel2: TRzPanel
            Left = 1
            Top = 1
            Width = 1004
            Height = 216
            Align = alTop
            BorderOuter = fsPopup
            TabOrder = 0
            DesignSize = (
              1003
              215)
            object RzLabel5: TRzLabel
              Left = 4
              Top = 4
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3648#3621#3586#3607#3637#3656#3651#3610#3621#3591#3619#3633#3610
              Color = 6776679
              Font.Charset = THAI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel6: TRzLabel
              Left = 4
              Top = 52
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel7: TRzLabel
              Left = 680
              Top = 28
              Width = 118
              Height = 22
              AutoSize = False
              Caption = '  '#3623#3633#3609#3607#3637#3656#3585#3635#3627#3609#3604#3626#3656#3591#3626#3636#3609#3588#3657#3634
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel9: TRzLabel
              Left = 4
              Top = 100
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3611#3619#3632#3648#3616#3607#3585#3634#3619#3592#3633#3604#3595#3639#3657#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel10: TRzLabel
              Left = 374
              Top = 28
              Width = 140
              Height = 23
              AutoSize = False
              Caption = ' '#3623#3633#3609#3607#3637#3656#3626#3633#3656#3591#3595#3639#3657#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel1: TRzLabel
              Left = 374
              Top = 4
              Width = 140
              Height = 23
              AutoSize = False
              Caption = ' '#3627#3609#3656#3623#3618#3591#3634#3609#3607#3637#3656#3586#3629#3595#3639#3657#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel3: TRzLabel
              Left = 4
              Top = 76
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3623#3636#3608#3637#3585#3634#3619#3592#3633#3604#3595#3639#3657#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel4: TRzLabel
              Left = 517
              Top = 52
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' VAT (%)'
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel8: TRzLabel
              Left = 517
              Top = 76
              Width = 128
              Height = 23
              AutoSize = False
              Caption = ' '#3610#3619#3636#3625#3633#3607#3607#3637#3656#3626#3633#3656#3591#3595#3639#3657#3629
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel14: TRzLabel
              Left = 4
              Top = 124
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' Ref. No'
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel15: TRzLabel
              Left = 331
              Top = 4
              Width = 12
              Height = 23
              AutoSize = False
              Caption = '/'
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object btnSearchDep: TSpeedButton
              Left = 576
              Top = 3
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object btnSearchWh: TSpeedButton
              Left = 192
              Top = 51
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object btnSearchPOType: TSpeedButton
              Left = 192
              Top = 99
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object btnSearchKind: TSpeedButton
              Left = 192
              Top = 75
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object btnSearchSupp: TSpeedButton
              Left = 707
              Top = 75
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object btnSearchVAT: TSpeedButton
              Left = 707
              Top = 51
              Width = 29
              Height = 23
              Caption = '..'
              Enabled = False
            end
            object RzLabel11: TRzLabel
              Left = 4
              Top = 28
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' '#3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel12: TRzLabel
              Left = 331
              Top = 28
              Width = 12
              Height = 23
              AutoSize = False
              Caption = '/'
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzLabel13: TRzLabel
              Left = 4
              Top = 148
              Width = 124
              Height = 23
              AutoSize = False
              Caption = ' Remark'
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object RzDBEdit17: TRzDBEdit
              Left = 130
              Top = 4
              Width = 196
              Height = 22
              DataSource = dsReceiveHeader
              DataField = 'RCHCDE'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
            end
            object RzDBEdit2: TRzDBEdit
              Left = 800
              Top = 28
              Width = 180
              Height = 22
              DataField = 'POHDUE'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 1
            end
            object RzDBEdit7: TRzDBEdit
              Left = 960
              Top = 52
              Width = 19
              Height = 22
              DataField = 'POHVAT'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
            end
            object btnAddItem: TRzBitBtn
              Left = 4
              Top = 178
              Width = 148
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = 'F3- '#3648#3614#3636#3656#3617#3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634
              Color = clSilver
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 3
              Visible = False
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                D46D73C88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BD46D
                73D46D73FF00FFFF00FFFF00FFFF00FFCC9356FDFCFBFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2ECC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFDEC9FFDDC8FFDCC5FFDBC5FFDBC2FFDAC1FFD9C0FFD8BDFFF0
                EBC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFDCC5FFDBC3FFDAC2FF
                D9C0FFD8BEFFD7BDFFD6BBFFD3B6FFEFE8C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFE2CEFFE1CDFFE0CB47A04AFFDEC8FFDDC6FFDCC4FFDBC3FFF0
                EAC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFE6D4FFE5D347A04A1B
                A32847A04AFFE1CCFFE0CAFFDFC9FFF2EDC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFE9DA47A04A36C44F3CD55933C74D47A04AFDE2CFFFE2CFFFF3
                EFC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFF47A04A4AD9704EE17447
                A04A3FCE5F46D96947A04AFDE5D3FFF5F1C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFF33C74D4BBD6133C74DFDECDF33C74D50DE775AF08747A04AFFF6
                F3C88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFF4EC33C74DFFF2E9FF
                F1E7FFF0E533C74D45CD6733C74DFFF8F4C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFF7F2FFF6F0FFF5EFFFF4EDFFF3EBFFF2EA33C74DFFF0E6FFF9
                F8C88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFF8F4FFF7F4FFF6F2FF
                F5EFFFF4EFFFF3EDFFF5EFFFF4EEFFFFFFC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFFDFBFFFCFAFFFBF8FFFAF5FFF9F5FFFAF7C88C4BC88C4BC88C
                4BC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFFFFFFFFEFEFFFEFDFF
                FDFCFFFCFBFFFEFEC88C4BF7BF86C88C4BFF00FFFF00FFFF00FFFF00FFFF00FF
                CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BC88C4BFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFD78681C88C4BC88C4BC88C4BC88C4BC8
                8C4BC88C4BC88C4BC88C4BFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object btnEditItem: TRzBitBtn
              Left = 153
              Top = 178
              Width = 163
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = 'F2- '#3649#3585#3657#3652#3586#3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634
              Color = clSilver
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 4
              Visible = False
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                D46D73C88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BD46D
                73D46D73FF00FFFF00FFFF00FFFF00FFCC9356FDFCFBFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2ECC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFDEC9FFDDC8FFDCC5FFDBC5FFDBC2FFDAC1FFD9C0FFD8BDFFF0
                EBC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFDCC5FFDBC3FFDAC2FF
                D9C0FFD8BEFFD7BDFFD6BBFFD3B6FFEFE8C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFE1CCFFE0CAFFDFC7FFDEC7FFDDC4FFDCC4FFDBC2FFD8BDFFF0
                EAC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFE3D2A7AAC616339046
                477F2D4D9FFFDEC8FFDDC8FFDBC3FFF2EDC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFE8D8D1C6C794AEC4B2DEFF61AAE32248A1FFE2CEFFDFC9FFF3
                EFC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFEADCFEE8DB76A1DA88
                ECFF8EEFFF5FBDEB2248A2FFE2D0FFF5F1C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFEFE2FFEEE27B90B580E1FB94EDFF95EEFF54B9EB2249A2FFF6
                F3C88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFF1E8FFF0E8FFEFE667
                89BD89E1FBA4EEFFA3EFFF4AB6EB224BA6C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFF6EEFFF5EEFFF4ECFDF1E75780BB99E3FBBDF2FFBCF3FF43AD
                E360527BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFF8F4FFF7F4FFF6F2FF
                F5EFFDF2ED5680BCB2E7FBD4E4E5BF856BF6CDBFAD6161FF00FFFF00FFFF00FF
                C88C4BFFFFFFFFFDFBFFFCFAFFFBF8FFFAF5FFF9F5FDF8F546608BBA836AFFD4
                C7BA99BD3C2CB7B70AB6FF00FFFF00FFC88C4BFFFFFFFFFFFFFFFEFEFFFEFDFF
                FDFCFFFCFBFFFEFEC68A4ABE7869CFB9CF0000C5121CE8252BCBFF00FFFF00FF
                CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BBD84468A33
                781B1FB9609CFB5C15BFFF00FFFF00FFD78681C88C4BC88C4BC88C4BC88C4BC8
                8C4BC88C4BC88C4BC88C4BFF00FFFA03FAC12FDCB039E3FA03FA}
            end
            object btnReceiveFromPO: TRzBitBtn
              Left = 4
              Top = 178
              Width = 168
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = #3621#3591#3619#3633#3610#3592#3634#3585#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629' (PO) ..'
              Color = 14068651
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 5
              OnClick = btnReceiveFromPOClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFD84FCF
                6A7A8EC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BD46D
                73D46D73FF00FFFF00FFFF00FF1372C0009DFF1E6EB1FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2ECC88C4BFF00FFFF00FFFF00FF1668BB
                48D3FF01A3FF206DB0FFDDC8FFDCC5FFDBC5FFDBC2FFDAC1FFD9C0FFD8BDFFF0
                EBC88C4BFF00FFFF00FFFF00FFFF00FF1F6EC148D2FF01A8FF206CAD94535A90
                52589352599F5F5FFFD6BBFFD3B6FFEFE8C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4B1F6FC238AEF395737BFFFFFFFDCA8FF6C28DBD8578A26D66FFD8BDFFF0
                EAC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFF926A69FFFFFFFFE3A4FF
                DFA2FFDC9BFFE398C58475B17871FFF2EDC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFCA8883FFFFFFFFEBB8FFEBBAFFE6B2FFE0A2E4B17EB6817BFFF3
                EFC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFBB857DFFFFFFFFF5CBFF
                F5CBFFF0C3FFE8B2F1CA95B6827EFFF5F1C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFC37B82FFFFFFFFFCD3FFFBD6FFF5C8FFF4C3FFFFFFB5807BFFF6
                F3C88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFD6C2BABE8B85FFFFFFFF
                FFFFFFFFFFFFFFFFAA716AFFE9DCFFF8F4C88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFF6EECFBEB8B46F73B37E78B07771A16D67FFF0E4FFEEE2FFF9
                F8C88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFF8F4FFF7F4FFF6F2FF
                F5EFFFF4EFFFF3EDFFF5EFFFF4EEFFFFFFC88C4BFF00FFFF00FFFF00FFFF00FF
                C88C4BFFFFFFFFFDFBFFFCFAFFFBF8FFFAF5FFF9F5FFFAF7C88C4BC88C4BC88C
                4BC88C4BFF00FFFF00FFFF00FFFF00FFC88C4BFFFFFFFFFFFFFFFEFEFFFEFDFF
                FDFCFFFCFBFFFEFEC88C4BF7BF86C88C4BFF00FFFF00FFFF00FFFF00FFFF00FF
                CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BC88C4BFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFD78681C88C4BC88C4BC88C4BC88C4BC8
                8C4BC88C4BC88C4BC88C4BFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object RzBitBtn5: TRzBitBtn
              Left = 659
              Top = 138
              Width = 149
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = #3609#3635#3648#3586#3657#3634#3592#3634#3585#3651#3610#3586#3629#3648#3610#3636#3585'..'
              Color = 14068651
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 6
              Visible = False
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFF220FC148BD2148BD2148BD2148BD214
                8BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2FF02FFFF00FF148BD2
                148BD2C8FEFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFF
                FFCCFFFFC9FEFE148BD2148BD2BEFBFD148BD2CCFFFF3CDBFF3ADBFF35DAFF2F
                D8FF2AD7FF25D6FF21D4FF1CD3FF17D2FF09CDFFCCFFFF148BD2148BD2CCFFFF
                148BD2CCFFFF51E2FF51E2FF4CDFFF47DFFF42DEFF3DDBFF37DBFF34DAFF2FD7
                FF22D4FFCCFFFF148BD2148BD2CCFFFF148BD2CCFFFF67E7FF66E6FF61E6FF5C
                E5FF57E2FF52E2FF4DE1FF47DEFF44DEFF38DAFFCCFFFF148BD2148BD2CCFFFF
                148BD2CCFFFF7DEDFF79EDFF76EAFF71E9FF6CE9FF67E6FF068E105DE5FF57E4
                FF4EE0FFCCFFFF148BD2148BD2CCFFFF26AE9938BC486EE6B09BF4FF8BF1FF86
                F0FF81EDFF7CEDFF057D050D720D6DE8FF63E6FFCCFFFF148BD2148BD2CCFFFF
                26AE9929C13E2492260A8A109BF4FF9BF4FF96F4FF91F3FF08880B13AB1D0973
                0979EDFFC3FEFF148BD2148BD2CCFFFF148BD288ECB029C13E2DCA462BB63E09
                790A0C720C0A8A1009880C20BC3214B01F057C06AEF4F4148BD2148BD2CCFFFF
                00B6F1148BD2148BD2077C0843E0654BEA713FDB602CBD4228B83D27C13C1CB5
                2A11AD19008801C12AC4148BD2CCFFFF00CBFF00CBFF00CBFF00CBFF0A710A14
                9A1D44DB6549E96D3CD7592DC64421BA3215B2200288023C583C148BD2CCFFFF
                00C8FF00CAFF00CAFF00CAFF00C5FC43D6A80E750E0C6F0C0E8E1433CE4C23BF
                34067D077D3882FF00FF148BD2C0FDFF4FE3FF4FE3FF4FE3FF4FE3FF4FE3FF14
                8BD2FF00FFFF00FF0E8E1229C13E097309B60FB6FF00FFFF00FFFB11FE148BD2
                148BD2148BD2148BD2148BD2148BD2FF00FFFF00FFFF00FF057D050D720DEA01
                EAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF118715FF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object RzDBEdit9: TRzDBEdit
              Left = 130
              Top = 124
              Width = 387
              Height = 22
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 7
            end
            object btnNew: TRzBitBtn
              Left = 810
              Top = 146
              Width = 149
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = #3651#3610#3621#3591#3619#3633#3610#3651#3627#3617#3656
              Color = clSilver
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 8
              Visible = False
              OnClick = btnNewClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000009B7C
                6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6C9B9B7C6B9B9B7C
                6B9A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
                66FFFFFFFFFAFAF4E9FAFAF4E9FAFAF4E9FAFAF3E8FAFAF3E7FAFAF2E6FAFAF1
                E4F9F9EFE0F8F8EDDA979779670000000000000000000000000000000000A27F
                6FFFFFFFFFDDDDC2B5DDDDC2B5DCDCC2B5DCDCBFB1DCDCBEAEDCDCBBA9DCDCBA
                A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A380
                70FFFFFFFFDBDBC3BBDBDBC3BADBDBC2B8DBDBBFB3DBDBBDAFDADABBAADADAB8
                A5DCDCB9A5FAFAF3E699997A6A0000000000000000000000000000000000A987
                78FFFFFFFFDBDBC7C2DBDBC6C1DBDBC4BCDBDBC1B7DBDBBFB2DBDBBCADDADABA
                A8DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000AB89
                7AFFFFFFFFDBDBC7C3DBDBC7C2DBDBC5BEDBDBC2B9DBDBC0B4DBDBBDAFDBDBBA
                A9DCDCBCA9FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
                7FF7F7F8FFD4D4C6D0D7D7CCCFE1E1CFCADBDBC2B9DBDBBFB4DBDBBDAFDBDBBA
                AADDDDBBA9FBFBF5EC9B9B7C6B0000000000000000000000000000000100A69D
                A9A7A7B3FF838391FEA6A6D1FFC7C7D1FDF7F7F6FBFDFDFBF8FDFDFAF6FCFCF9
                F3FCFCF7F0FCFCF6ED9B9B7C6C00000000000000000000000000000416007E98
                D8545497FF5A5AAFFA4B4B9AF8575767EEB5B5AFD7DEDEC4BADEDEC1B4DEDEBE
                ADDEDEBEABFCFCF6EE9C9C7C6D00000000000000000000000000000A35003A58
                E86060E1FF1D1DE5FF5B5BEDFF5F5FB3FFA1A1C0FEF4F4F5FBFDFDFBF8FCFCF9
                F4F9F9F4EEF0F0E8E09E9D7F7000000000000000000000000000000C40005B9A
                F15757EDFF0000CDFF3C3CECFF3A3A82FF89899BFEF1F1F2FBFDFDFBF9A7A782
                70A7A78270A7A78270A7A78270000000000000000000000000000B1A33004D66
                E349499EFF6363F8FF6D6DE2FF43437BFFADADBDFEFAFAF8FAFDFDFBF9A7A782
                70F5F5E2D9B1B18E7E602E241F00000000000000000000000000000108009693
                C866668DFF5D5D9BFF4E4E71FFA6A6CDFFE3E3E8FFFFFFFFFFFFFFFFFFA7A782
                70B1B18E7E622F2420000000000000000000000000000000000000000000C0A8
                A3B5B5B7C49E9E97C3A6A69EBFB2B29B9FB0B08E7DACAC8877ACAC8877A7A782
                7083352924000000000000000000000000000000000000000000}
            end
            object btnDeleteItem: TRzBitBtn
              Left = 317
              Top = 178
              Width = 124
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = 'F4- '#3621#3610#3619#3634#3618#3585#3634#3619
              Color = clSilver
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 9
              Visible = False
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000D000205
                830003088D000000340000000200000000000000000000000000000000000000
                470000003D0000000E0000000000000000000000000000000000000059001844
                F619194DF8101031D2010102790000000B000000000000000000000053000928
                D709092ED7030313B30000004300000000000000000000000000010390002451
                F91F1F52FF1D1D4FFF171744E804040A9A000000130000004C000D2EDD111142
                F90D0D3DF50B0B3BF004041ABC0000002400000000000000000000002C001832
                DB28285BFF242456FF222253FF1B1B4BF105050DAC000F30DD16164AFE131344
                F9101041F60E0E3EF60A0A3CF00000006800000000000000000000003C001F37
                DD3A3A6FFF2C2C5EFF29295AFF262657FF202052FC1C1C4FFF19194AFD161646
                FA141445FA0F0F3DF202020A9A00000025000000000000000000000000000000
                4F00111CBB003D6AFB353567FF2C2C5DFF282859FF222253FF1D1D4EFF1A1A4D
                FF12123DED0000027B0000001000000000000000000000000000000000000000
                000000001700000082002E4EE7363668FF2E2E5EFF282859FF222254FF16163D
                EA00000067000000040000000000000000000000000000000000000000000000
                00000000000000003500253FDF3B3B6DFF343464FF2E2E5EFF272759FF1B1B46
                EA00000179000000020000000000000000000000000000000000000000000000
                00000000000002038F004B7CFF414170FF3B3B6BFF39396CFF2D2D5EFF252558
                FF131336D70000004A0000000000000000000000000000000000000000000000
                000000002300263CDA005080FF454575FF363662FA0D0D14C1003C6DFF2A2A5B
                FF202053FD0B0B1DC10000001C00000000000000000000000000000000000000
                000000006900527CFA505081FF4B4B7DFF0A0A11AF00000025000D14B300386A
                FF242456FF1A1A4AF20202069200000005000000000000000000000000000000
                00001119C0006A9CFF575788FF2B2B46E7000000350000000000000028000F1A
                BF003065FF1F1F51FF141439DD00000054000000000000000000000000000000
                000000007D003A52E3005782FB01010192000000000000000000000000000000
                39001426D100265AFF0F0F2EE30101038E000000000000000000000000000000
                0000000000000000310000007900000025000000000000000000000000000000
                000000004B000001850000003100000001000000000000000000}
            end
            object RzDBEdit10: TRzDBEdit
              Left = 341
              Top = 4
              Width = 31
              Height = 22
              DataSource = dsReceiveHeader
              DataField = 'RCHREV'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 10
            end
            object edDepCode: TRzEdit
              Left = 515
              Top = 4
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 11
            end
            object edDepName: TRzEdit
              Left = 608
              Top = 4
              Width = 371
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 12
            end
            object edWhCode: TRzEdit
              Left = 131
              Top = 52
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 13
            end
            object edWhName: TRzEdit
              Left = 223
              Top = 52
              Width = 292
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 14
            end
            object edPOTypeCode: TRzEdit
              Left = 131
              Top = 100
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 15
            end
            object edPOTypeName: TRzEdit
              Left = 223
              Top = 100
              Width = 292
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 16
            end
            object edPOKndCode: TRzEdit
              Left = 131
              Top = 76
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 17
            end
            object edPOKndName: TRzEdit
              Left = 223
              Top = 76
              Width = 292
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 18
            end
            object edSuppCode: TRzEdit
              Left = 646
              Top = 76
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 19
            end
            object edSuppName: TRzEdit
              Left = 738
              Top = 76
              Width = 241
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 20
            end
            object edVATCode: TRzEdit
              Left = 646
              Top = 52
              Width = 59
              Height = 22
              AutoSize = False
              Color = clSilver
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 21
            end
            object edVATName: TRzEdit
              Left = 738
              Top = 52
              Width = 241
              Height = 22
              AutoSize = False
              Color = clSilver
              FocusColor = clWhite
              FrameVisible = True
              ReadOnly = True
              ReadOnlyColor = clSilver
              TabOrder = 22
            end
            object RzDBEdit1: TRzDBEdit
              Left = 130
              Top = 28
              Width = 196
              Height = 22
              DataSource = dsPOHeader
              DataField = 'POHCDE'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 23
            end
            object RzDBEdit3: TRzDBEdit
              Left = 341
              Top = 28
              Width = 31
              Height = 22
              DataSource = dsPOHeader
              DataField = 'POHREV'
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 24
            end
            object RzDBEdit4: TRzDBEdit
              Left = 130
              Top = 148
              Width = 387
              Height = 22
              DataField = 'POHRF1'
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameVisible = True
              ParentFont = False
              TabOrder = 25
            end
            object ckShowUnitCod: TCheckBox
              Left = 552
              Top = 144
              Width = 97
              Height = 17
              Caption = 'ckShowUnitCod'
              TabOrder = 26
              Visible = False
              OnClick = ckShowUnitCodClick
            end
            object btnCancelReceive: TRzBitBtn
              Left = 810
              Top = 114
              Width = 149
              Height = 29
              Anchors = [akLeft, akBottom]
              Caption = #3618#3585#3648#3621#3636#3585#3619#3634#3618#3585#3634#3619#3621#3591#3619#3633#3610
              Color = clSilver
              Enabled = False
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 27
              Visible = False
              OnClick = btnCancelReceiveClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000020482000A14
                AF86867EB8D4D4C8C32E2E2DB3252526B8B7B7ACC3A5A588799B9B7C6B9B9B7C
                6B9A9A7C6A99997B689B9B7C6B0000000000000000000000000002038E002C72
                FF151534D4212135C417174EFF15155CFF36363AC5FDFDF9F3FAFAF2E6FAFAF1
                E4F9F9EFE0F8F8EDDA9797796700000000000000000000000000000049001225
                C52C2C67FF25255DFF20205BFF14141FBAD3D3C9D8DFDFC3B5DCDCBBA9DCDCBA
                A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A79E
                C1101022BF2D2D66FF1C1C49F4747471C4ECECDDD6DBDBBDAFDADABBAADADAB8
                A5DCDCB9A5FAFAF3E699997A6A00000000000000000000000000000000002725
                A63F3F7DFF1C1C3FDD292961FF121223C4D2D2CADADEDEC4B8DBDBBCADDADABA
                A8DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000151C
                C039396DFF868683CC373738B42B2B6DFF29292ABDEEEEE2DCDBDBBDAFDBDBBA
                A9DCDCBCA9FBFBF5EA9A9A7C6B0000000000000000000000000000000000A59B
                CA424242C4F0F0E6E4CACAC3DA323231BBBDBDB8E5E7E7D4CCDBDBBDAFDBDBBA
                AADDDDBBA9FBFBF5EC9B9B7C6B0000000000000000000000000000000000BCA1
                94FFFFFFFFFEFEFEFEFEFEFEFEFFFFFEFEFEFEFDFCFDFDFBF8FDFDFAF6FCFCF9
                F3FCFCF7F0FCFCF6ED9B9B7C6C0000000000000000000000000000000000AF8F
                80FFFFFFFFDFDFCECCDFDFCDCBDFDFCBC7DEDEC6C0DEDEC4BADEDEC1B4DEDEBE
                ADDEDEBEABFCFCF6EE9C9C7C6D0000000000000000000000000000000000B190
                80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF8FCFCF9
                F4F9F9F4EEF0F0E8E09E9D7F700000000000000000000000000000000000B797
                87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
                70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
                70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
                70B1B18E7E622F2420000000000000000000000000000000000000000000B898
                88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
                7083352924000000000000000000000000000000000000000000}
            end
            object btnPrint: TRzBitBtn
              Left = 847
              Top = 178
              Width = 149
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3614#3636#3617#3614#3660#3651#3610#3621#3591#3619#3633#3610#3651#3627#3617#3656
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 28
              OnClick = btnPrintClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000009B7C
                6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6D9C9C7D6D9C9C7D6C9B9B7C6B9B9B7C
                6B9A9A7C6A99997B689B9B7C6B00000000000000000000000000000000009B77
                66FFFFFFFFFAFAF4E9FAFAF4E9FAFAF4E9FAFAF3E8FAFAF3E7FAFAF2E6FAFAF1
                E4F9F9EFE0F8F8EDDA979779670000000000000000000000000000000000A27F
                6FFFFFFFFFDDDDC2B5DDDDC2B5DCDCC2B5DCDCBFB1DCDCBEAEDCDCBBA9DCDCBA
                A5DCDCBAA3FAFAF1E2989879680000000000000000000000000000000000A380
                70FFFFFFFFDBDBC3BBDBDBC3BADBDBC2B8DBDBBFB3DBDBBDAFDADABBAADADAB8
                A5DCDCB9A5FAFAF3E699997A6A0000000000000000000000000000000000A987
                78FFFFFFFFDBDBC7C2DBDBC6C1DBDBC4BCDBDBC1B7DBDBBFB2DBDBBCADDADABA
                A8DCDCBBA7FBFBF4E899997B6B0000000000000000000000000000000000AB89
                7AFFFFFFFFDBDBC7C3DBDBC7C2DBDBC5BEDBDBC2B9DBDBC0B4DBDBBDAFDBDBBA
                A9DCDCBCA9FBFBF5EA9A9A7C6B0000000000000000000000000000000000AF8E
                7FF7F7F8FFD4D4C6D0D7D7CCCFE1E1CFCADBDBC2B9DBDBBFB4DBDBBDAFDBDBBA
                AADDDDBBA9FBFBF5EC9B9B7C6B0000000000000000000000000000000100A69D
                A9A7A7B3FF838391FEA6A6D1FFC7C7D1FDF7F7F6FBFDFDFBF8FDFDFAF6FCFCF9
                F3FCFCF7F0FCFCF6ED9B9B7C6C00000000000000000000000000000416007E98
                D8545497FF5A5AAFFA4B4B9AF8575767EEB5B5AFD7DEDEC4BADEDEC1B4DEDEBE
                ADDEDEBEABFCFCF6EE9C9C7C6D00000000000000000000000000000A35003A58
                E86060E1FF1D1DE5FF5B5BEDFF5F5FB3FFA1A1C0FEF4F4F5FBFDFDFBF8FCFCF9
                F4F9F9F4EEF0F0E8E09E9D7F7000000000000000000000000000000C40005B9A
                F15757EDFF0000CDFF3C3CECFF3A3A82FF89899BFEF1F1F2FBFDFDFBF9A7A782
                70A7A78270A7A78270A7A78270000000000000000000000000000B1A33004D66
                E349499EFF6363F8FF6D6DE2FF43437BFFADADBDFEFAFAF8FAFDFDFBF9A7A782
                70F5F5E2D9B1B18E7E602E241F00000000000000000000000000000108009693
                C866668DFF5D5D9BFF4E4E71FFA6A6CDFFE3E3E8FFFFFFFFFFFFFFFFFFA7A782
                70B1B18E7E622F2420000000000000000000000000000000000000000000C0A8
                A3B5B5B7C49E9E97C3A6A69EBFB2B29B9FB0B08E7DACAC8877ACAC8877A7A782
                7083352924000000000000000000000000000000000000000000}
            end
            object RzDBDateTimePicker1: TRzDBDateTimePicker
              Left = 515
              Top = 28
              Width = 166
              Height = 22
              Date = 41588.729345949080000000
              Time = 41588.729345949080000000
              ShowCheckbox = True
              DateFormat = dfLong
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 29
              FrameVisible = True
              DataField = 'RCHDTE'
              DataSource = dsReceiveHeader
            end
          end
          object RzPanel4: TRzPanel
            Left = 1
            Top = 217
            Width = 1004
            Height = 207
            Align = alClient
            BorderOuter = fsNone
            TabOrder = 1
            object grdPoItems: TcxGrid
              Left = 0
              Top = 0
              Width = 1004
              Height = 207
              Align = alClient
              BorderStyle = cxcbsNone
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              object cxGridDBTableView2: TcxGridDBTableView
                OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
                OnEditKeyDown = cxGridDBTableView2EditKeyDown
                DataController.DataSource = dsReceiveDetails
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.Inserting = False
                OptionsView.GridLines = glNone
                OptionsView.GroupByBox = False
                OnCustomDrawColumnHeader = cxGridDBTableView2CustomDrawColumnHeader
                object cxGridDBColumn10: TcxGridDBColumn
                  Caption = '#'
                  DataBinding.FieldName = 'PODSEQ'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  OnGetDisplayText = cxGridDBColumn10GetDisplayText
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 28
                end
                object cxGridDBColRCDPRD: TcxGridDBColumn
                  Caption = #3619#3627#3633#3626
                  DataBinding.FieldName = 'RCDPRD'
                  Visible = False
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 37
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
                  DataBinding.FieldName = 'RCDPCD'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 79
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634' '
                  DataBinding.FieldName = 'RCDPNA'
                  PropertiesClassName = 'TcxLabelProperties'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 296
                end
                object cxGridDBTableView2Column4: TcxGridDBColumn
                  Caption = 'Lot No.'
                  DataBinding.FieldName = 'RCDLOT'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Options.Sorting = False
                  Width = 84
                end
                object cxGridDBTableView2Column5: TcxGridDBColumn
                  Caption = 'Expire'
                  DataBinding.FieldName = 'RCDEXP'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Options.Sorting = False
                  Width = 86
                end
                object cxGridDBColRCDUNI: TcxGridDBColumn
                  Caption = #3619#3627#3633#3626
                  DataBinding.FieldName = 'RCDUNI'
                  Visible = False
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 56
                end
                object cxGridDBColumn16: TcxGridDBColumn
                  Caption = #3594#3639#3656#3629#3627#3609#3656#3623#3618
                  DataBinding.FieldName = 'RCDUNA'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 100
                end
                object cxGridDBColRCDPAC: TcxGridDBColumn
                  Caption = #3619#3627#3633#3626
                  DataBinding.FieldName = 'RCDPAC'
                  Visible = False
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 62
                end
                object cxGridDBColumn18: TcxGridDBColumn
                  Caption = #3586#3609#3634#3604#3610#3619#3619#3592#3640
                  DataBinding.FieldName = 'RCDPCN'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.ReadOnly = True
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 87
                end
                object cxGridDBColumn20: TcxGridDBColumn
                  Caption = #3592#3635#3609#3623#3609#3626#3633#3656#3591#3595#3639#3657#3629
                  DataBinding.FieldName = 'RCDPOQ'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 72
                end
                object cxGridDBColumn21: TcxGridDBColumn
                  Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' ('#3626#3633#3656#3591#3595#3639#3657#3629')'
                  DataBinding.FieldName = 'RCDPOC'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 125
                end
                object cxGridDBTableView2Column3: TcxGridDBColumn
                  Caption = #3592#3635#3609#3623#3609#3588#3657#3634#3591#3619#3633#3610
                  DataBinding.FieldName = 'RCDRMQ'
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 75
                end
                object cxGridDBTableView2Column1: TcxGridDBColumn
                  Caption = #3592#3635#3609#3623#3609#3621#3591#3619#3633#3610
                  DataBinding.FieldName = 'RCDQTY'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.UseDisplayFormatWhenEditing = True
                  Properties.UseLeftAlignmentOnEditing = False
                  Options.Sorting = False
                  Width = 82
                end
                object cxGridDBTableView2Column2: TcxGridDBColumn
                  Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' ('#3621#3591#3619#3633#3610')'
                  DataBinding.FieldName = 'RCDCOS'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.UseDisplayFormatWhenEditing = True
                  Options.Sorting = False
                  Width = 125
                end
                object cxGridDBColumn22: TcxGridDBColumn
                  Caption = #3619#3634#3588#3634#3619#3623#3617
                  DataBinding.FieldName = 'RCDAMT'
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Focusing = False
                  Options.Sorting = False
                  Width = 98
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridDBTableView2
              end
            end
          end
          object RzPanel5: TRzPanel
            Left = 1
            Top = 424
            Width = 1004
            Height = 43
            Align = alBottom
            BorderOuter = fsPopup
            TabOrder = 2
            DesignSize = (
              1003
              42)
            object lbAmount: TRzLabel
              Left = 6
              Top = 8
              Width = 182
              Height = 23
              AutoSize = False
              Caption = ' '#3618#3629#3604#3619#3623#3617'  100,000.00 '#3610#3634#3607
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object lbVat: TRzLabel
              Left = 193
              Top = 8
              Width = 163
              Height = 23
              AutoSize = False
              Caption = ' '#3616#3634#3625#3637'  100,000.00 '#3610#3634#3607
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object lbNetAmount: TRzLabel
              Left = 361
              Top = 8
              Width = 163
              Height = 23
              AutoSize = False
              Caption = ' '#3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609'  100,000.00 '#3610#3634#3607
              Color = clSilver
              ParentColor = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object lbStatus: TRzLabel
              Left = 531
              Top = 8
              Width = 209
              Height = 22
              AutoSize = False
              Caption = ' '#3648#3629#3585#3626#3634#3619#3651#3627#3617#3656
              Color = 108
              Font.Charset = THAI_CHARSET
              Font.Color = clYellow
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              BorderColor = clGray
            end
            object btnSave: TRzBitBtn
              Left = 836
              Top = 10
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
              Left = 917
              Top = 10
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
            object btnRevise: TRzBitBtn
              Left = 699
              Top = 10
              Width = 78
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = 'Revise'
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnReviseClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000C0000002D0000AC99899D9D7E6D9C9C7E6D9C9C7D
                6D9B9B7C6B9B9B7C6B99997B689B9B7C6B000000000000000000000000000000
                00000002000000340000077A0A0000270000B4998CFFFFFFFFFAFAF4E9FAFAF3
                E8FAFAF2E6FAFAF1E4F8F8EDDA97977967000000000000000000000000000000
                0000003C000020B4311616A01F0000090000A27F6FFFFFFFFFFCFCF6EDFBFBF5
                ECFBFBF4EAFBFBF3E8FAFAF1E298987968000000000000000000000000000005
                000012931A003DDC5C16169E200000030000A98778FFFFFFFFFDFDF9F4FCFCF8
                F2FCFCF7EFFBFBF6EDFBFBF4E899997B6B000000000000000000C6B5AB9F9FAE
                8A2626B73A4A4AE66E1C1CAB2AB6B6B29ED0D0BCB4FFFFFFFFFDFDFBF7FDFDFA
                F5FCFCF8F2FCFCF7EFFBFBF5EA9A9A7C6B0000000000000000006EA75E3838A4
                382D2DC1445757F1832F2FC3463030A52C60609446FFFFFFFFFEFEFEFEEEEEF6
                EB5757B655E8E8F2E0FCFCF6ED9B9B7C6C000000000000000000C1B5A63D3DB4
                405C5CF68A6969FF9F5B5BF3874848B545C0C0AB9CFFFFFFFFF5F5FCF53C3CB3
                3B5A5AF3853333B131E2E2E5D39F9F8070000000000000000000A98778F0F0FB
                F03333B1325A5AF3853B3BB237F1F1F3E4B7B79787FAFAFDFA4949B84A5B5BF3
                876969FF9F5C5CF68A2D2D9E27C4C4B7A6000000000000000000AB897AFFFFFF
                FFE9E9F4E45757B655ECECF2E3FCFCF7EFB8B898888C8CD28C3131A8312F2FC3
                465757F1832D2DC1442B2B9123291D5013000000000000000000AF8F80FFFFFF
                FFFEFEFEFEFEFEFCFBFDFDFAF6FCFCF9F3D7D7C4BBD7D7C4BBD5D5D6C61C1CAB
                2A4A4AE66E2626B73A34212D1600000000000000000000000000B19080FFFFFF
                FFFFFFFFFFFEFEFEFEFDFDFBF8FCFCF9F4F0F0E8E09F9F80700000030000169E
                203D3DDC5C121292190000060000000000000000000000000000B79787FFFFFF
                FFFFFFFFFFFEFEFEFEFDFDFBF9A7A78270A7A78270A7A7827000000E000016A0
                1F2020B431000039000000000000000000000000000000000000B89888FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFA7A78270B1B18E7E602E241F0000320000077A
                0A00003900000001000000000000000000000000000000000000B89888B8B898
                88B4B49383B0B08E7DACAC8877A7A78270833529240000040000003800000010
                0000000000000000000000000000000000000000000000000000}
            end
            object btnLock: TRzBitBtn
              Left = 612
              Top = 10
              Width = 78
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = 'Lock'
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 3
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000009B7C
                6B9D9D7E6D9C9C7E6D9C9C7E6D9C9C7E6DD0D0C1B89494B6BE2C2C9ABA101092
                B8101087B2111182AF12127FAB0000090D000000000000000000000000009B77
                66FFFFFFFFFAFAF4E9FAFAF4E9FAFAF4E9FAFAF3E8222294BB8282FFFF0000FF
                FF0000E1FF0000C9FD0000B7EA111180AA00000000000000000000000000A27F
                6FFFFFFFFFDDDDC2B5DDDDC2B5DCDCC2B5E9E9D6CD202093BB7C7CFFFF0000FB
                FF0000DDFF0000C5F90000B3E6101081AC00000000000000000000000000A380
                70FFFFFFFFDBDBC3BBDBDBC3BADBDBC2B8E8E8D6CE212194BB7D7DFFFF0000FF
                FF0000DFFF0000C6FA0000B4E7101081AD00000000000000000000000000A987
                78FFFFFFFFDBDBC7C2DBDBC6C1DBDBC4BCE8E8D7D1181894BD3F3FE8FD1616D9
                F31818CFF60A0ABDED0000A9DD101082AE00000000000000000000000000AB89
                7AFFFFFFFFDBDBC7C3DBDBC7C2DBDBC5BEE8E8D8D22626BADD6F6F63695555DA
                F05B5BECFF3737E6FF5E5E6F7200006D9800000000000000000000000000AF8E
                7FFFFFFFFFDCDCC5C0DCDCC5BFDBDBC4BDE2E2CEC7D7D7D1CC9494766F6767E2
                DC6464DDE35E5EE6F984846C640F0A141900000000000000000000000000AF8F
                80FFFFFFFFFEFEFEFEFEFEFEFEFEFEFDFDFEFEFCFBF7F7F4F298988A85F3F3EF
                EAFCFCF7F0FCFCF6ED86867169130B0A0A00000000000000000000000000AF8F
                80FFFFFFFFDFDFCECCDFDFCDCBDEDECAC6DEDEC6C0E9E9D8D2BDBDB1AE939384
                7FC2C2B3ABA9A99E9781816F690604040400000000000000000000000000B190
                80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBF8F8F7F5B7B7AD
                A89F9F959197978D88B1B0A39C0000000000000000000000000000000000B797
                87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9C7C7AF
                A4D2D2BFB6D2D2BFB6C7C7AFA40000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
                70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
                70B1B18E7E622F2420000000000000000000000000000000000000000000B898
                88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
                7083352924000000000000000000000000000000000000000000}
            end
            object btnApprove: TRzBitBtn
              Left = 504
              Top = 10
              Width = 108
              Height = 29
              Anchors = [akRight, akBottom]
              Caption = #3629#3609#3640#3617#3633#3605#3636#3621#3591#3619#3633#3610
              Color = clSilver
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 4
              OnClick = btnApproveClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000009B7C
                6B9D9D7E6D9C9C7E6D9C9C7E6D9F9F8271C7C7BAB070709F642B2B811E1E1E71
                083131781D6C6C9661C6C6BBAF00000000000000000000000000000000009B77
                66FFFFFFFFFAFAF4E9FAFAF4E9F6F6F5EE4141A43E00009A000000A207000097
                000E0E89002E2E71003C3C7C2D0000020000000000000000000000000000A27F
                6FFFFFFFFFDDDDC2B5E6E6D2C88282B7790D0DA71A2C2CB53FFDFDFBFF6F6FD4
                880000980000009500303070000000200000000000000000000000000000A380
                70FFFFFFFFDBDBC3BBECECDFDA4343AA472E2EB33CF5F5ECF4FFFFF6FFFFFFFF
                FF6F6FD58800009A0012128800110F530000000000000000000000000000A987
                78FFFFFFFFDBDBC7C2EEEEE4E23A3AAE445D5DB964C0C0D6BC0303AD219D9DDB
                A7FFFFFFFF6D6DD487000095001515690000000000000000000000000000AB89
                7AFFFFFFFFDBDBC7C3ECECE1DE4E4EB5574343CD6D1919BB422525C04F0B0BB2
                2E9D9DD9A5FFFFFFFF6767CF7C0908560000000000000000000000000000AF8E
                7FFFFFFFFFDCDCC5C0E5E5D4CF8585C07E7272DD963535CE6A2E2EC75E2525BE
                4B0909AF278B8BD0944E4EBB590000260000000000000000000000000000AF8F
                80FFFFFFFFFEFEFEFEFEFEFEFEF9F9FBF95A5AC0607171DD964A4AD37A2929C2
                521C1CB73B0D0DAA22363695300000020000000000000000000000000000AF8F
                80FFFFFFFFDFDFCECCDFDFCDCBDFDFCBC7E9E9DFDA8686C07E5252B85B3C3CB1
                484444AC488989C486C7C7BAAF0000000000000000000000000000000000B190
                80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFCFEFEFDFBFEFEFC
                FAFCFCF9F6F4F4EEE89F9E7F720000000000000000000000000000000000B797
                87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFBFDFDFBF9A7A782
                70A7A78270A7A78270A7A782700000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFEFEFCFAFDFDFBF9A7A782
                70F5F5E2D9B1B18E7E602E241F0000000000000000000000000000000000B898
                88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A782
                70B1B18E7E622F2420000000000000000000000000000000000000000000B898
                88B8B89888B4B49383B4B49383B0B08E7DB0B08E7DACAC8877ACAC8877A7A782
                7083352924000000000000000000000000000000000000000000}
            end
          end
        end
      end
    end
  end
  object dsPOList: TDataSource
    DataSet = cdsPOList
    Left = 78
    Top = 223
  end
  object cdsPOList: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsPOListAfterScroll
    Left = 38
    Top = 191
  end
  object dsPOHeader: TDataSource
    DataSet = cdsPOHeader
    Left = 150
    Top = 215
  end
  object cdsPOHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 150
    Top = 263
  end
  object cdsReceiveHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 110
    Top = 336
  end
  object dsReceiveHeader: TDataSource
    DataSet = cdsReceiveHeader
    Left = 102
    Top = 384
  end
  object cdsPOReceives: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 214
    Top = 336
  end
  object dsPOReceives: TDataSource
    DataSet = cdsPOReceives
    Left = 214
    Top = 384
  end
  object cdsReceiveDetails: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsReceiveDetailsBeforeEdit
    BeforePost = cdsReceiveDetailsBeforePost
    Left = 358
    Top = 336
  end
  object dsReceiveDetails: TDataSource
    DataSet = cdsReceiveDetails
    Left = 358
    Top = 384
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 22544886
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00080000001F0000002700000027000000270000002700000027000000270000
          00270000002700000027000000270000001F0000000800000000000000000000
          001F000000730000009000000092000000920000009200000092000000920000
          0092000000920000009200000090000000730000001F00000000000000009B7C
          6BFF9D7E6DFF9C7E6DFF9C7E6DFF9C7E6DFF9C7D6DFF9C7D6CFF9B7C6BFF9B7C
          6BFF9A7C6AFF997B68FF9B7C6BFF000000900000002700000000000000019B77
          66FFFFFFFFFFFAF4E9FFFAF4E9FFFAF4E9FFFAF3E8FFFAF3E7FFFAF2E6FFFAF1
          E4FFF9EFE0FFF8EDDAFF977967FF00000092000000270000000100000001A27F
          6FFFFFFFFFFFFCF6EDFFFCF6EDFFFBF6EDFFFBF5ECFFFBF5EBFFFBF4EAFFFBF3
          E8FFFAF2E6FFFAF1E2FF987968FF00000092000000270000000100000001A380
          70FFFFFFFFFFFCF8F1FFFCF8F1FFFCF7F0FFFCF7EFFFFCF6EEFFFBF6ECFFFBF5
          EBFFFBF4E9FFFAF3E6FF997A6AFF00000092000000270000000100000001A987
          78FFFFFFFFFFFDF9F4FFFDF9F4FFFCF9F3FFFCF8F2FFFCF8F1FFFCF7EFFFFBF6
          EDFFFBF5EBFFFBF4E8FF997B6BFF00000092000000270000000100000001AB89
          7AFFFFFFFFFFFDFBF7FFFDFBF7FFFDFAF6FFFDFAF5FFFCF9F4FFFCF8F2FFFCF7
          EFFFFBF6EDFFFBF5EAFF9A7C6BFF00000092000000270000000100000001AF8E
          7FFFFFFFFFFFFEFCFBFFFEFCFAFFFDFCFAFFFDFBF8FFFDFAF6FFFDF9F4FFFCF8
          F1FFFCF7EFFFFBF5ECFF9B7C6BFF00000091000000270000000100000001AF8F
          80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFDFFFEFCFBFFFDFBF8FFFDFAF6FFFCF9
          F3FFFCF7F0FFFCF6EDFF9B7C6CFF00000091000000270000000100000001AF8F
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFDFFFEFCFAFFFDFBF7FFFDF9
          F4FFFCF8F1FFFCF6EEFF9C7C6DFF00000090000000270000000000000001B190
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFBF8FFFCF9
          F4FFF9F4EEFFF0E8E0FF9D7F70FE00000082000000220000000000000001B797
          87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFBF9FFA782
          70FFA78270FFA78270FFA78270FF0000004D000000110000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFBF9FFA782
          70FFF5E2D9FFB18E7EFF2E241F7A00000019000000030000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA782
          70FFB18E7EFF2F241F790000001900000003000000000000000000000000B898
          88FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC8877FFA782
          70FF342923660000001100000003000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00080000001F0000002700000027000000270000002700000027000000270000
          00270000002700000027000000270000001F0000000800000000000000000000
          001F000000730000009000000092000000920000009200000092000000920000
          0092000000920000009200000090000000730000001F00000000000000009B7C
          6BFF9D7E6DFF9C7E6DFF9C7E6DFF9C7E6DFFCDBEB6FFA09E9DFF7B7B7AFF9B5A
          35FF7A7370FF949291FFCCBCB3FF000000900000002700000000000000019B77
          66FFFFFFFFFFFAF4E9FFFAF4E9FFFAF4E9FFFDFAF6FF868686FFF1DCCFFFA843
          05FFC3703DFF818181FFD4C7C0FF00000092000000270000000100000001A27F
          6FFFFFFFFFFFDDC2B5FFDDC2B5FFDCC2B5FFF1E5DFFF93908FFFB6652EFFA944
          03FFAC4601FFAA6B42FFD5C8C1FF000000930000002B0000000200000001A380
          70FFFFFFFFFFDBC3BBFFDBC3BAFFDBC2B8FFF0E5E0FFB0754AFFAB4600FFB96E
          3BFFB66124FFC05C04FFD5AF97FF0000009D000000470000000C00000001A987
          78FFFFFFFFFFDBC7C2FFDBC6C1FFDBC4BCFFF0E5E1FFB56730FFB27238FFC6C5
          C5FFBE9067FFC2610AFFC96804FF0C0500A70000007D0000002000000001AB89
          7AFFFFFFFFFFDBC7C3FFDBC7C2FFDBC5BEFFEADBD5FFE9C19DFFF0E4DFFFF0E2
          DBFFF1E4DDFFE1AE82FFD06A01FFD97C07FF000000880000002400000001AF8E
          7FFFFFFFFFFFDCC5C0FFDCC5BFFFDBC4BDFFDBC2B9FFEAD9D2FFDBBDAFFFDBBA
          AAFFDDBBA9FFFDFBF7FFD69760FFD87603FF000000660000001700000001AF8F
          80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFDFFFEFCFBFFFDFBF8FFFDFAF6FFFCF9
          F3FFFCF7F0FFFCF6EDFFD2C4BDFF6A3301BA000000370000000600000001AF8F
          80FFFFFFFFFFDFCECCFFDFCDCBFFDECAC6FFDEC6C0FFDEC4BAFFDEC1B4FFDEBE
          ADFFDEBEABFFFCF6EEFF9C7C6DFF00000090000000270000000100000001B190
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFBF8FFFCF9
          F4FFF9F4EEFFF0E8E0FF9D7F70FE00000082000000220000000000000001B797
          87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFBF9FFA782
          70FFA78270FFA78270FFA78270FF0000004D000000110000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFBF9FFA782
          70FFF5E2D9FFB18E7EFF2E241F7A00000019000000030000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA782
          70FFB18E7EFF2F241F790000001900000003000000000000000000000000B898
          88FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC8877FFA782
          70FF342923660000001100000003000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00080000001F0000002700000027000000270000002700000027000000270000
          00270000002700000027000000270000001F0000000800000000000000000000
          001F000000730000009000000092000000920000009200000092000000920000
          0092000000920000009200000090000000730000001F00000001000000009B7C
          6BFF9D7E6DFF9C7E6DFF9C7E6DFF9F8271FFC7BAB0FF709F64FF2B811EFF1E71
          08FF31781DFF6C9661FFC6BBAFFF000000950000003400000005000000019B77
          66FFFFFFFFFFFAF4E9FFFAF4E9FFF6F5EEFF41A43EFF009A00FF00A207FF0097
          00FF0E8900FF2E7100FF3C7C2DFF000100A2000000590000001200000001A27F
          6FFFFFFFFFFFDDC2B5FFE6D2C8FF82B779FF0DA71AFF2CB53FFFFDFBFFFF6FD4
          88FF009800FF009500FF307000FF002000AA0000007B0000001F00000001A380
          70FFFFFFFFFFDBC3BBFFECDFDAFF43AA47FF2EB33CFFF5ECF4FFFFF6FFFFFFFF
          FFFF6FD588FF009A00FF128800FF0F5200DD000000880000002400000001A987
          78FFFFFFFFFFDBC7C2FFEEE4E2FF3AAE44FF5DB964FFC0D6BCFF03AD21FF9DDB
          A7FFFFFFFFFF6DD487FF009500FF146900F50000007B0000001F00000001AB89
          7AFFFFFFFFFFDBC7C3FFECE1DEFF4EB557FF43CD6DFF19BB42FF25C04FFF0BB2
          2EFF9DD9A5FFFFFFFFFF67CF7CFF085600DB000000580000001200000001AF8E
          7FFFFFFFFFFFDCC5C0FFE5D4CFFF85C07EFF72DD96FF35CE6AFF2EC75EFF25BE
          4BFF09AF27FF8BD094FF4EBB59FF002600A3000000340000000500000001AF8F
          80FFFFFFFFFFFEFEFEFFFEFEFEFFF9FBF9FF5AC060FF71DD96FF4AD37AFF29C2
          52FF1CB73BFF0DAA22FF369530FF00020092000000280000000100000001AF8F
          80FFFFFFFFFFDFCECCFFDFCDCBFFDFCBC7FFE9DFDAFF86C07EFF52B85BFF3CB1
          48FF44AC48FF89C486FFC7BAAFFF00000090000000270000000100000001B190
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFCFFFEFDFBFFFEFC
          FAFFFCF9F6FFF4EEE8FF9E7F72FE00000082000000220000000000000001B797
          87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFBF9FFA782
          70FFA78270FFA78270FFA78270FF0000004D000000110000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFBF9FFA782
          70FFF5E2D9FFB18E7EFF2E241F7A00000019000000030000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA782
          70FFB18E7EFF2F241F790000001900000003000000000000000000000000B898
          88FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC8877FFA782
          70FF342923660000001100000003000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000008000000180000001D00000010000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000090000002E00000065000000750000004B000000190000
          0003000000000000000000000000000000000000000000000000000000000000
          00010000000900070038005100BF037405E9001B00A200000090000000500000
          0019000000030000000000000000000000000000000000000000000000000000
          000900070038006300CB13AC27FF15B32BFF06900EFB001C00A4000000900000
          0050000000180000000300000000000000000000000000000000000000070007
          0034006400C816AE2EFF17B231FF14AD2AFF13B129FF068E0BFB001C00A40000
          00900000004D00000017000000030000000000000000000000000006001F0069
          00C619B233FF1CB63AFF18B334FF34BC4DFF17B030FF13B02AFF068C0BFA0019
          00A30000008E0000004D00000017000000030000000000000000086E0FB51FB7
          3EFF20BA42FF1FB840FF11A824FF017E01EA62C771FF19B232FF13B12BFF068C
          0BF9001800A30000008E0000004B00000016000000030000000025A333E942C8
          65FF1FBB46FF15B32CFF005400A900080030007100C861C871FF19B131FF13B2
          2CFF06890BF8001600A30000008D0000004A000000150000000206480E6642C2
          55FC36BC4EFF006205A50000001F00000006000B0011007400CC63CA72FF17B1
          31FF14B12CFF068909F7001600A20000008C000000450000000E000000000326
          062F04390A510001000B000000030000000000000000000C0013007701D063CA
          72FF17B131FF14B32DFF068709F6001300A1000000760000001E000000000000
          0000000000000000000000000000000000000000000000000000000E0016007A
          00D464CB75FF15B131FF16B330FF027504E9000000700000001C000000000000
          000000000000000000000000000000000000000000000000000000000000000F
          0018017F03D866CD78FF2ABC46FF006A02D6000000390000000B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000010001C007501CB037705D2001600410000000C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000001000000090000001A0000001C0000000C000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000E000000370000006B000000700000003F000000120000
          0002000000000000000000000000000000000000000000000000000000000000
          00010000000E000E004C005C00CD026403DC000E009F00000086000000440000
          0013000000020000000000000000000000000000000000000000000000010000
          000F0011004D027704E116AF2BFF14B02AFF047C06F0000F00A2000000880000
          00450000001300000002000000000000000000000000000000000000000B0013
          004D027D03E218B234FF16B12FFF13AD2AFF12B028FF037F06F1000F00A20000
          0088000000450000001300000002000000000000000000000000001600380285
          04E31DB73DFF1CB639FF19B435FF3DBF53FF18B231FF12B029FF037F07F2000F
          00A3000000880000004500000014000000020000000000000000179120DD20BA
          45FF1FB942FF1CBB3EFF009A03FF1C8610FF55C767FF18B331FF13B12AFF0480
          07F2001000A30000008800000046000000140000000200000000209E31E350CC
          70FF1DBD44FF00A102FF9E866EFFCF8395FF168B0EFF53C866FF18B232FF13B1
          2BFF048108F2001100A2000000890000004500000013000000010028063F13A1
          2BE112B227FFA18F75FFCE8E97FFCB9195FFD08B97FF168C0DFF52C765FF18B4
          34FF14B22CFF048308F2001100A20000008500000039000000090A06071B7F44
          50D1CE8894FFD2969CFFD39FA0FFAF7F80FFDCB1B5FFD995A0FF178C0EFF51C7
          65FF1AB335FF14B32DFF04840AF3000F009800000051000000103E29296DCA9F
          9FFFD09C9CFFD9A6A6FFA37272F82C1B1B7C784F4FD1E4BABEFFDD98A3FF178D
          0DFF50C665FF1DB638FF14B12EFF003400AB000000420000000B1A111127AD82
          82F2E1BABAFFAF7B7BF92C1D1D6B000000150D0808187E5455D2E5BCC0FFDD98
          A3FF158F0CFF3AC04EFF009105F700100093000000440000000C000000002217
          172C6142428E3120204C0000000B00000002000000000E090916835656D4E4BA
          BEFFD3939BFF6E8E4EFF6B5045E5090405A00000006D0000001A000000000000
          00000000000000000000000000000000000000000000000000000F0A0A18865A
          5BD5DDB6B8FFCA8F94FFBD8488FF684445D40000006D0000001B000000000000
          000000000000000000000000000000000000000000000000000000000000120C
          0C198A5F5FD7D6B3B3FFC09090FF724C4CD40000003A0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000110C0C1B835A5ACE8A6161DB1D1313460000000C00000001}
      end>
  end
  object cdsAllReceives: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 278
    Top = 240
  end
  object dsAllReceives: TDataSource
    DataSet = cdsAllReceives
    Left = 278
    Top = 288
  end
end
