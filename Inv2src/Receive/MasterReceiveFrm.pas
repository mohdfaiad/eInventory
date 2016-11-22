unit MasterReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CommonLIB, StdCtrls, RzLabel, ExtCtrls, RzPanel, RzEdit,
  RzButton, Mask, RzDBEdit, Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ComCtrls, RzTabs, RzCmboBx, DBClient,
  cxCurrencyEdit, cxCalendar, cxImageComboBox, ImgList, RzDTP, RzDBDTP;

type
  TfrmMasterReceive = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    TabReceiveList: TTabSheet;
    Splitter1: TSplitter;
    pnMiddle: TRzPanel;
    pnTop: TRzPanel;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    btnNewPO: TRzBitBtn;
    btnDeletePO: TRzBitBtn;
    btnHoldPO: TRzBitBtn;
    TabReceiveData: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    btnSearchDep: TSpeedButton;
    btnSearchWh: TSpeedButton;
    btnSearchPOType: TSpeedButton;
    btnSearchKind: TSpeedButton;
    btnSearchSupp: TSpeedButton;
    btnSearchVAT: TSpeedButton;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    btnAddItem: TRzBitBtn;
    btnEditItem: TRzBitBtn;
    btnReceiveFromPO: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzDBEdit9: TRzDBEdit;
    btnNew: TRzBitBtn;
    btnDeleteItem: TRzBitBtn;
    RzDBEdit10: TRzDBEdit;
    edDepCode: TRzEdit;
    edDepName: TRzEdit;
    edWhCode: TRzEdit;
    edWhName: TRzEdit;
    edPOTypeCode: TRzEdit;
    edPOTypeName: TRzEdit;
    edPOKndCode: TRzEdit;
    edPOKndName: TRzEdit;
    edSuppCode: TRzEdit;
    edSuppName: TRzEdit;
    edVATCode: TRzEdit;
    edVATName: TRzEdit;
    RzPanel4: TRzPanel;
    grdPoItems: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColRCDPRD: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColRCDUNI: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColRCDPAC: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel5: TRzPanel;
    lbAmount: TRzLabel;
    lbVat: TRzLabel;
    lbNetAmount: TRzLabel;
    lbStatus: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnRevise: TRzBitBtn;
    btnLock: TRzBitBtn;
    btnApprove: TRzBitBtn;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    pgWarehouseProduct: TRzPageControl;
    TabWarehouseProducts: TRzTabSheet;
    grdAllReceives: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabWarehouseProductLots: TRzTabSheet;
    Splitter2: TSplitter;
    grdPOReceives: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    btnNewPOReceive: TRzBitBtn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    grdPOLIST: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    grdPOListColF13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    dsPOList: TDataSource;
    cdsPOList: TClientDataSet;
    dsPOHeader: TDataSource;
    cdsPOHeader: TClientDataSet;
    cdsReceiveHeader: TClientDataSet;
    dsReceiveHeader: TDataSource;
    cdsPOReceives: TClientDataSet;
    dsPOReceives: TDataSource;
    cdsReceiveDetails: TClientDataSet;
    dsReceiveDetails: TDataSource;
    btnRefresh: TRzBitBtn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    cxGridDBTableView2Column5: TcxGridDBColumn;
    ckShowUnitCod: TCheckBox;
    btnCancelReceive: TRzBitBtn;
    grdPOListColFLR: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    btnPrint: TRzBitBtn;
    RzLabel17: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    cmbWarehouse: TRzComboBox;
    cmbDepartments: TRzComboBox;
    cmbSuppliers: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    edSearch: TRzEdit;
    cmbPOType: TRzComboBox;
    cdsAllReceives: TClientDataSet;
    dsAllReceives: TDataSource;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    grdPOReceiveListFLG: TcxGridDBColumn;
    grdAllReceivesFLG: TcxGridDBColumn;
    procedure btnReceiveFromPOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdPOListColF13CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grdPOListColF13GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cdsPOListAfterScroll(DataSet: TDataSet);
    procedure cxGridDBColumn9GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBColumn10GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cdsReceiveDetailsBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cdsReceiveDetailsBeforeEdit(DataSet: TDataSet);
    procedure btnNewPOReceiveClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxGridDBTableView4CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure btnApproveClick(Sender: TObject);
    procedure btnReviseClick(Sender: TObject);
    procedure ckShowUnitCodClick(Sender: TObject);
    procedure btnCancelReceiveClick(Sender: TObject);
    procedure grdPOListColFLRCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdPOListColFLRGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnPrintClick(Sender: TObject);
    procedure cxGridDBColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure pgAllClientsChange(Sender: TObject);
    procedure grdPOReceiveListFLGCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdAllReceivesFLGCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
  private
    FDLLParameter: TDLLParameter;
    FPOAmount: currency;
    FPONetAmount: currency;
    FPOVat: currency;
    FPOKindCode: integer;
    FDepCode: integer;
    FWarehouseCode: integer;
    FPOTypeCode: integer;
    FSuppCode: integer;
    FVATCode: integer;
    FPOCode: integer;

    FReviseNum:integer;
    FRCCode : integer;
    FFL1 : string;

    FVATRate : Currency;

    procedure SetDLLParameter(const Value: TDLLParameter);
    procedure getPoList();
    procedure getPoData(POCode: integer);
    procedure getPOReceives(POCode:integer);
    procedure getReceiveData(RCCode:integer);
    procedure getReceiveDetail(RCCode:integer);


    procedure SetDepCode(const Value: integer);
    procedure SetPOAmount(const Value: currency);
    procedure SetPOKindCode(const Value: integer);
    procedure SetPONetAmount(const Value: currency);
    procedure SetPOTypeCode(const Value: integer);
    procedure SetPOVat(const Value: currency);
    procedure SetSuppCode(const Value: integer);
    procedure SetVATCode(const Value: integer);
    procedure SetWarehouseCode(const Value: integer);
    procedure SetPOCode(const Value: integer);


    procedure setbtnEdit(addItem,editItem,deleteItem,receiveFromPO,cancelReceive,new,approve,save,cancel:boolean);
    procedure initCmb;

    procedure getAllReceives;


    procedure PostStkTransaction(STKTYPE:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);
    procedure PostStk(STKTYPE:string;STKMVC,STKPRD:integer;STKPCD:string;STKWH0,STKUNI,STKPAC,STKQTY,STKLOC:integer;STKLOT:string;STKEXP:tdatetime;STKFLG:string;STKCAL:integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);



    { Private declarations }
  public
    { Public declarations }
    property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
    property POAmount : currency read FPOAmount write SetPOAmount;
    property POVat : currency  read FPOVat write SetPOVat;
    property PONetAmount : currency  read FPONetAmount write SetPONetAmount;
    property DepCode : integer  read FDepCode write SetDepCode;
    property WarehouseCode : integer  read FWarehouseCode write SetWarehouseCode;
    property SuppCode : integer read FSuppCode write SetSuppCode;
    property POKindCode : integer  read FPOKindCode write SetPOKindCode;
    property POTypeCode  : integer  read FPOTypeCode write SetPOTypeCode;
    property VATCode : integer  read FVATCode write SetVATCode;
    property POCode : integer read FPOCode write SetPOCode;


  end;

var
  frmMasterReceive: TfrmMasterReceive;


implementation

uses  STDLIB, CdeLIB, SearchPOforReceiveFrm, STK_LIB, Math, CommonUtils;

{$R *.dfm}

{ TfrmMasterReceive }



procedure TfrmMasterReceive.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterReceive.btnReceiveFromPOClick(Sender: TObject);
//var frmSearchPoforReceive : TfrmSearchPOforReceive;
var cdsPoItems , cdsCurrReceiveItems : TClientDataSet;
    irow ,receiveQty: integer;
begin
  try
    irow :=0;

    if cdsReceiveDetails.RecordCount>0 then
      if Application.MessageBox(pchar('�׹�ѹ �������¡������ ? '),pchar('Warning'),MB_OKCANCEL or MB_ICONWARNING)=mrCancel then
        Exit;
    POAmount :=0;

    // clear records
    if cdsReceiveDetails.RecordCount>0 then
    begin
      cdsPOReceives.First;
      while not cdsReceiveDetails.Eof do
        cdsReceiveDetails.Delete;
    end;

//    cdsReceiveDetails.EmptyDataSet;


    cdsPoItems := TClientDataSet.Create(nil);
    cdsCurrReceiveItems := TClientDataSet.Create(nil);





    cdsPoItems.Data := GetDataSet('select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString+' order by PODSEQ');
    if cdsPoItems.Active then
      if cdsPoItems.RecordCount>0 then
      begin

        cdsCurrReceiveItems.Data := GetDataSet(
        '  select             ' +
        '    h.RCHWH0,d.RCDPRD,d.RCDUNI,d.RCDPAC,sum(d.RCDQTY) RCDQTY  ' +
        '  from ICTRNRCH  h , ICTRNRCD d   '  +
        '  where d.RCDCOD=h.RCHCOD      '    +
        '  and h.RCHFLG=''A'' and h.RCHFL1=''Y'' and h.RCHPOC='+cdsPOHeader.fieldbyname('POHCOD').AsString+'  ' +
        '  group by                         '    +
        '  h.RCHWH0,d.RCDPRD,d.RCDUNI,d.RCDPAC '
        );

        receiveQty :=0;
        cdsPoItems.first;
        while not cdsPoItems.Eof do
        begin
          inc(irow);
          if cdsReceiveDetails.State in [dsinsert,dsedit] then cdsReceiveDetails.Post;
          cdsReceiveDetails.Append;
          cdsReceiveDetails.FieldByName('RCDCOD').AsInteger := cdsReceiveHeader.fieldbyname('RCHCOD').AsInteger;
          cdsReceiveDetails.FieldByName('RCDCDE').AsString := cdsReceiveHeader.fieldbyname('RCHCDE').AsString;

          cdsReceiveDetails.FieldByName('RCDSEQ').AsInteger := irow;
          cdsReceiveDetails.FieldByName('RCDPRD').AsInteger := cdsPoItems.fieldbyname('PODPRD').AsInteger;
          cdsReceiveDetails.FieldByName('RCDWH0').AsInteger := FWarehouseCode;//cdsPoItems.fieldbyname('PODWH0').AsInteger;
          cdsReceiveDetails.FieldByName('RCDUNI').AsInteger := cdsPoItems.fieldbyname('PODUNI').AsInteger;
          cdsReceiveDetails.FieldByName('RCDPAC').AsInteger := cdsPoItems.fieldbyname('PODPAC').AsInteger;

          cdsReceiveDetails.FieldByName('RCDPNA').AsString := cdsPoItems.fieldbyname('PODPNA').AsString;
          cdsReceiveDetails.FieldByName('RCDUNA').AsString := cdsPoItems.fieldbyname('PODUNA').AsString;
          cdsReceiveDetails.FieldByName('RCDPCN').AsString := cdsPoItems.fieldbyname('PODPCN').AsString;

          cdsReceiveDetails.FieldByName('RCDPOC').AsInteger := cdsPOHeader.fieldbyname('POHCOD').AsInteger;
          cdsReceiveDetails.FieldByName('RCDPOQ').AsInteger := cdsPoItems.fieldbyname('PODQTY').AsInteger;

          if cdsCurrReceiveItems.Active then
            if cdsCurrReceiveItems.RecordCount>0 then
              if cdsCurrReceiveItems.Locate('RCHWH0;RCDPRD;RCDUNI;RCDPAC',VarArrayOf([FWarehouseCode,cdsPoItems.fieldbyname('PODPRD').AsInteger,cdsPoItems.fieldbyname('PODUNI').AsInteger,cdsPoItems.fieldbyname('PODPAC').AsInteger]),[]) then
                receiveQty:= cdsCurrReceiveItems.fieldbyname('RCDQTY').AsInteger
              else
                receiveQty:=0;

                //h.RCHWH0,d.RCDPRD,d.RCDUNI,d.RCDPAC

          cdsReceiveDetails.FieldByName('RCDRMQ').AsInteger := cdsPoItems.fieldbyname('PODQTY').AsInteger-receiveQty;


          cdsReceiveDetails.FieldByName('RCDQTY').AsInteger := cdsPoItems.fieldbyname('PODQTY').AsInteger-receiveQty;//cdsPoItems.fieldbyname('PODQTY').AsInteger;
          cdsReceiveDetails.FieldByName('RCDCOS').AsCurrency := cdsPoItems.fieldbyname('PODCOS').AsCurrency;
          cdsReceiveDetails.FieldByName('RCDAMT').AsCurrency := cdsPoItems.fieldbyname('PODAMT').AsCurrency;
          cdsReceiveDetails.FieldByName('RCDCAL').AsInteger := 1;
          cdsReceiveDetails.Post;
          cdsPoItems.next;
        end;

      end;
  finally
    cdsPoItems.Free;
  end;


{  try
   frmSearchPoforReceive :=TfrmSearchPOforReceive.Create(Application);
   frmSearchPoforReceive.ShowModal;
  finally
    frmSearchPoforReceive.free;
  end;
  }
end;

procedure TfrmMasterReceive.getPoList;
var strSQL,WHOCDE,WH1CDe,SUPCDE,POTCDE:string;
begin

WHOCDE := TString(cmbWarehouse.Items.Objects[cmbWarehouse.ItemIndex]).Str;
WH1CDE := TString(cmbDepartments.Items.Objects[cmbDepartments.ItemIndex]).Str;
SUPCDE := TString(cmbSuppliers.Items.Objects[cmbSuppliers.ItemIndex]).Str;
POTCDE := TString(cmbPOType.Items.Objects[cmbPOType.ItemIndex]).Str;


 strSQL :=
'  select       '+
'  wh.WH0CDE,wh.WH0NAM,dep.WH1CDE,dep.WH1NAM,sup.SUPCDE,sup.SUPNAM,typ.POTCDE,typ.POTNAM,knd.POKCOD,knd.POKNAM   '+
'  ,a.*                                           '+
'  from ICMTTPOH a                               '+
'  left join ICMTTWH0 wh on a.POHWH0=wh.WH0COD    '+
'  left join ICMTTWH1 dep on a.POHDEP=dep.WH1COD '+
'  left join ICMTTSUP sup on a.POHSUP = sup.SUPCOD '+
'  left join ICMTTPOT typ on a.POHTYP = typ.POTCOD '+
'  left join ICMTTPOK knd on a.POHPTY = knd.POKCOD '+

' where a.POHFLG=''A'' and (  ( wh.WH0CDE='''+WHOCDE+'''  and '''+WHOCDE+'''<>''00'' ) or  ( wh.WH0CDE<>'''+WHOCDE+''' and '''+WHOCDE+'''=''00'') )  '+
'   and   ( ( dep.WH1CDE='''+WH1CDE+''' and  '''+WH1CDE+'''<>''00'' ) or ( dep.WH1CDE<>'''+WH1CDE+''' and  '''+WH1CDE+'''=''00'' )  ) '+
'	and  ( ( sup.SUPCDE='''+SUPCDE+''' and '''+SUPCDE+'''<>''00'' ) or ( sup.SUPCDE<>'''+SUPCDE+''' and '''+SUPCDE+'''=''00'' ) ) '+
'	and  ( ( typ.POTCDE='''+POTCDE+''' and '''+POTCDE+'''<>''00'' ) or ( typ.POTCDE<>'''+POTCDE+''' and '''+POTCDE+'''=''00'' ) ) ';


  try
   cdsPOList.DisableControls;
   cdsPOList.Data := GetDataSet(strsql); //select * from ICMTTPOH

   TCurrencyField(cdsPOList.FieldByName('POHAMT')).DisplayFormat:='#,##0.00';
   TCurrencyField(cdsPOList.FieldByName('POHVAM')).DisplayFormat:='#,##0.00';
   TCurrencyField(cdsPOList.FieldByName('POHNET')).DisplayFormat:='#,##0.00';
  finally
       cdsPOList.EnableControls;
  end;

end;
procedure TfrmMasterReceive.FormShow(Sender: TObject);
begin
  initCmb;
  getPoList;
  getAllReceives;
  pgAllClients.ActivePage:=TabReceiveList;
  TabReceiveData.Enabled := false;
  FVATRate:=7;
end;

procedure TfrmMasterReceive.grdPOListColF13CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if not AViewInfo.Selected then
    begin
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'F' then
      begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := $0000005E ;
      end;
    end else
    begin
      ACanvas.Font.Style := [fsBold];
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'F' then
        ACanvas.Font.Color := clYellow
      else
      if  AViewInfo.GridRecord.Values[grdPOListColF13.Index] = 'N' then
        ACanvas.Font.Color := $0093FF93 ; // green
    end;
end;

procedure TfrmMasterReceive.grdPOListColF13GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  if  ARecord.Values[grdPOListColF13.Index] = 'N' then
      AText:= 'Normal'
  else if  ARecord.Values[grdPOListColF13.Index] = 'F' then
    AText :='Fixed';
end;

procedure TfrmMasterReceive.getPoData(POCode: integer);
begin
 cdsPOHeader.Data := GetDataSet('select * from ICMTTPOH where POHCOD='+IntToStr(POCode));

// POAmount := cdsPOHeader.FieldByName('POHAMT').AsCurrency;
 DepCode :=  cdsPOHeader.FieldByName('POHDEP').AsInteger;
 WarehouseCode :=cdsPOHeader.FieldByName('POHWH0').AsInteger;
 POKindCode := cdsPOHeader.FieldByName('POHPTY').AsInteger;
 POTypeCode := cdsPOHeader.FieldByName('POHTYP').AsInteger;
 VATCode := cdsPOHeader.FieldByName('POHVAC').AsInteger;
 SuppCode := cdsPOHeader.FieldByName('POHSUP').AsInteger;

 //



 // FL1 Flag
 if  cdsPOHeader.FieldByName('POHFL1').AsString='Y' then
 begin
   btnApprove.Enabled := false;
   btnSave.Enabled    := false;
   btnRevise.Enabled  := false;
   lbStatus.caption:=' �͡���������� ';
   //lbStatus.Color :=$00804000;
   lbStatus.Color :=$0000006C;
 end else
 begin
  lbStatus.Color :=$00804000;
  lbStatus.caption:=' �͡������� ';
 end;
end;

procedure TfrmMasterReceive.SetDepCode(const Value: integer);
begin
  FDepCode := Value;
  edDepCode.Text := getMTTCDE('WH1',IntToStr(FDepCode));
  edDepName.Text := getDepartmentName(IntToStr(FDepCode));
end;

procedure TfrmMasterReceive.SetPOAmount(const Value: currency);
begin
  FPOAmount := Value;
  POVat:= (FPOAmount*FVATRate)/100;

  PONetAmount := FPOAmount+POVat;

  lbAmount.Caption :=' �ʹ���  '+FormatCurr('#,##0.00',FPOAmount)+' �ҷ';
end;

procedure TfrmMasterReceive.SetPOKindCode(const Value: integer);
begin
  FPOKindCode := Value;
  edPOKndCode.Text := getMTTCDE('POK',IntToStr(FPOKindCode));
  edPOKndName.Text := getPOKindName(IntToStr(FPOKindCode));
end;

procedure TfrmMasterReceive.SetPONetAmount(const Value: currency);
begin
  FPONetAmount := Value;
  lbNetAmount.Caption:=' ���������  '+FormatCurr('#,##0.00',FPONetAmount)+' �ҷ';
end;

procedure TfrmMasterReceive.SetPOTypeCode(const Value: integer);
begin
  FPOTypeCode := Value;
  edPOTypeCode.Text := getMTTCDE('POT',IntToStr(FPOTypeCode));
  edPOTypeName.Text := getPOTypeName(IntToStr(FPOTypeCode));
end;

procedure TfrmMasterReceive.SetPOVat(const Value: currency);
begin
  FPOVat := Value;
  lbVat.Caption:=' ����  '+FormatCurr('#,##0.00',FPOVat)+' �ҷ';
end;

procedure TfrmMasterReceive.SetSuppCode(const Value: integer);
begin
  FSuppCode := Value;
  edSuppCode.Text := getMTTCDE('SUP',inttostr(FSuppCode));
  edSuppName.Text := getMTTName('SUP',inttostr(FSuppCode));
end;

procedure TfrmMasterReceive.SetVATCode(const Value: integer);
begin
  FVATCode := Value;
  edVATCode.Text := getMTTCDE('VAT',IntToStr(FVATCode));
  edVATName.Text := getMTTName('VAT',IntToStr(FVATCode));
end;

procedure TfrmMasterReceive.SetWarehouseCode(const Value: integer);
begin
  FWarehouseCode := Value;
  edWhCode.Text := getMTTCDE('WH0',IntToStr(FWarehouseCode));
  edWhName.Text := getWareHouseName(FWarehouseCode);
end;

procedure TfrmMasterReceive.SetPOCode(const Value: integer);
begin
  FPOCode := Value;
end;

procedure TfrmMasterReceive.FormCreate(Sender: TObject);
begin
 SetChildTaborders(pnAllClients);
end;

procedure TfrmMasterReceive.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ActiveControl.Tag<>99 then
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton)  then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End
end;

procedure TfrmMasterReceive.btnSaveClick(Sender: TObject);
var IsNew : boolean;
  irow : integer;
  lotNo : string;
begin
  IsNew := false;
  lotNo:='';

  if cdsReceiveDetails.State in [dsedit,dsinsert] then cdsReceiveDetails.Post;
  if not (cdsReceiveHeader.State in [dsedit,dsinsert]) then cdsReceiveHeader.Edit;

  cdsReceiveHeader.FieldByName('RCHPOC').AsInteger := cdsPOList.fieldbyname('POHCOD').AsInteger;
  cdsReceiveHeader.FieldByName('RCHWH0').AsInteger := cdsPOList.fieldbyname('POHWH0').AsInteger;

  if cdsReceiveHeader.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsReceiveHeader.FieldByName('RCHACT').IsNull then
      cdsReceiveHeader.FieldByName('RCHACT').AsString:='A';

    cdsReceiveHeader.FieldByName('RCHFLG').AsString:='N';

    if cdsReceiveHeader.FieldByName('RCHDTE').IsNull then
    cdsReceiveHeader.FieldByName('RCHDTE').AsDateTime := getServerDate;


    cdsReceiveHeader.FieldByName('RCHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','TRN_RCHCOD','CDENM1');
    cdsReceiveHeader.FieldByName('RCHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','TRN_RCHCOD','CDEPRE')
                                                        ,cdsReceiveHeader.FieldByName('RCHCOD').AsInteger,getCde('SETTING','RUNNING','TRN_RCHCOD_LEN','CDENM1'));
    cdsReceiveHeader.FieldByName('RCHREV').AsInteger := 1;

  end;

    if cdsReceiveDetails.RecordCount>0 then
      begin
        // Fill COD
        cdsReceiveDetails.First;
        while not cdsReceiveDetails.Eof do
        begin



          if not (cdsReceiveDetails.State in [dsedit,dsinsert]) then cdsReceiveDetails.Edit;
          cdsReceiveDetails.FieldByName('RCDCOD').AsInteger := cdsReceiveHeader.FieldByName('RCHCOD').AsInteger;


          if  cdsReceiveDetails.FieldByName('RCDQTY').AsInteger>0 then  // generate lot if qty > 0
            if (cdsReceiveDetails.FieldByName('RCDLOT').IsNull) or (trim(cdsReceiveDetails.FieldByName('RCDLOT').AsString)='') then
            begin
              if trim(lotNo)='' then
                if Application.MessageBox(pchar('�׹�ѹ����к� ���ҧ�Ţ Lot Number ����ѵ��ѵ�?'),pchar('Information'),MB_ICONWARNING or MB_YESNO) = mrYes then
                begin
                  lotNo:=getLotNoRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','LOTNO','CDEPRE')
                         ,getCdeRun('SETTING','RUNNING','LOTNO','CDENM1'),getCde('SETTING','RUNNING','LOTNO_LEN','CDENM1'));

                end else Exit;

              if trim(lotNo)<>'' then
               cdsReceiveDetails.FieldByName('RCDLOT').AsString:=lotNo;


            end;


          setEntryUSRDT(cdsReceiveDetails,DLLParameter.UserID);
          setSystemCMP(cdsReceiveDetails,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);

          cdsReceiveDetails.Post;
          cdsReceiveDetails.Next;
        end;
          {
          if cdsReceiveDetails.FieldByName('RCDEXP').IsNull then
          begin
            Application.MessageBox(pchar('��س��к��ѹ������ء�͹�ӡ�úѹ�֡!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
            Exit;
          end;
          }

        {
        // Fill check Expire Date
        cdsReceiveDetails.First;
        while not cdsReceiveDetails.Eof do
        begin


          if not (cdsReceiveDetails.State in [dsedit,dsinsert]) then cdsReceiveDetails.Edit;
          cdsReceiveDetails.FieldByName('RCDCOD').AsInteger := cdsReceiveHeader.FieldByName('RCHCOD').AsInteger;
          cdsReceiveDetails.Post;

          cdsReceiveDetails.Next;
        end;
        }




      end;




    setEntryUSRDT(cdsReceiveHeader,DLLParameter.UserID);
    setSystemCMP(cdsReceiveHeader,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);


  {
  if not (cdsPOHeader.State in [dsinsert,dsedit]) then
    cdsPOHeader.Edit;

    // AMOUNT ,VAT , NET
    cdsPOHeader.FieldByName('POHAMT').AsCurrency  :=  POAmount;
    cdsPOHeader.FieldByName('POHVAM').AsCurrency  :=  POVat;
    cdsPOHeader.FieldByName('POHVAC').AsCurrency  :=  FVATCode;
    cdsPOHeader.FieldByName('POHVAT').AsCurrency  :=  FVATRate;
    cdsPOHeader.FieldByName('POHNET').AsCurrency  :=  FPONetAmount;

    // lookup
    cdsPOHeader.FieldByName('POHTYP').AsInteger := FPOTypeCode;
    cdsPOHeader.FieldByName('POHPTY').AsInteger := FPOKindCode;
    cdsPOHeader.FieldByName('POHSUP').AsInteger := FSuppCode;
    cdsPOHeader.FieldByName('POHDEP').AsInteger := FDepCode;
    cdsPOHeader.FieldByName('POHWH0').AsInteger := FWarehouseCode;


        }

  if not ( cdsReceiveHeader.State in [dsinsert,dsedit]) then cdsReceiveHeader.Edit;

    cdsReceiveHeader.FieldByName('RCHAMT').AsCurrency := FPOAmount;
    cdsReceiveHeader.FieldByName('RCHVAM').AsCurrency := FPOVat;
    cdsReceiveHeader.FieldByName('RCHNET').AsCurrency := FPONetAmount;
    setModifyUSRDT(cdsReceiveHeader,DLLParameter.UserID);
   cdsReceiveHeader.Post;



  if cdsReceiveDetails.State in [dsEdit,dsInsert] then cdsReceiveDetails.Post;
  if cdsReceiveDetails.ChangeCount>0 then
  begin
    //UpdateDataset(cdsReceiveDetails,'select * from ICTRNRCD limit 0');
    UpdateDataset(cdsReceiveDetails,'select * from ICTRNRCD where RCDCOD='+IntToStr(FRCCode)+' order by RCDSEQ');
  end;


  if cdsReceiveHeader.State in [dsEdit,dsInsert] then cdsReceiveHeader.Post;
  if cdsReceiveHeader.ChangeCount>0 then
  begin
    UpdateDataset(cdsReceiveHeader,'select * from ICTRNRCH limit 0');
    FRCCode := cdsReceiveHeader.FieldByName('RCHCOD').AsInteger;

    if IsNew then
    begin
      setCdeRun('SETTING','RUNNING','TRN_RCHCOD','CDENM1');

    end;

    if lotNo<>'' then
      setCdeRun('SETTING','RUNNING','LOTNO','CDENM1');


  end;

  ShowMessage('Successfull.');
  getReceiveData(FRCCode);
end;

procedure TfrmMasterReceive.btnNewClick(Sender: TObject);
begin
  getReceiveData(0);
end;

procedure TfrmMasterReceive.getReceiveData(RCCode: integer);
begin
  //InputBox('','','select * from ICTRNRCH where RCHCOD='+IntToStr(RCCode));
  cdsReceiveHeader.Data := GetDataSet('select * from ICTRNRCH where RCHCOD='+IntToStr(RCCode));
  TabReceiveData.Enabled := true;

  {
  if cdsReceiveHeader.FieldByName('RCHDTE').isnull then
  begin
    cdsReceiveHeader.Edit;
    cdsReceiveHeader.FieldByName('RCHDTE').AsDateTime := getServerDate;
    cdsReceiveHeader.Post;
  end;
  }




  if cdsReceiveHeader.Active then
    if cdsReceiveHeader.RecordCount>0 then
    begin
      getPoData(cdsReceiveHeader.fieldbyname('RCHPOC').AsInteger);
      getReceiveDetail(cdsReceiveHeader.fieldbyname('RCHCOD').AsInteger);
      FRCCode := cdsReceiveHeader.fieldbyname('RCHCOD').AsInteger;
      FFL1 := trim(cdsReceiveHeader.fieldbyname('RCHFL1').AsString);

      POAmount := cdsReceiveHeader.fieldbyname('RCHAMT').AsCurrency;
      FReviseNum :=cdsReceiveHeader.fieldbyname('RCHREV').AsInteger;

      //if ( (trim(cdsReceiveHeader.FieldByName('RCHFLG').AsString)='A') or (trim(cdsPOHeader.FieldByName('POHFLR').AsString)<>'R')) then
      if trim(cdsReceiveHeader.FieldByName('RCHFLG').AsString)='A' then
      begin
        btnReceiveFromPO.Enabled :=false;
        btnApprove.Enabled := false;
        btnSave.Enabled := false;
      end
      else
      begin
        btnReceiveFromPO.Enabled :=true;
        btnApprove.Enabled:=true;
        btnSave.Enabled:=true;
      end;

      FReviseNum := cdsReceiveHeader.FieldByName('RCHREV').AsInteger;

    end else
    begin   // for new doc
      getPoData(cdsPOList.fieldbyname('POHCOD').AsInteger);
      getReceiveDetail(0);
      FRCCode :=0;
      FFL1:='';
      POAmount := 0;
      btnReceiveFromPO.Enabled :=true;
    end;

 //cdsReceiveHeader.FieldByName('RCHCOD').AsInteger :=0;
end;

procedure TfrmMasterReceive.getPOReceives(POCode: integer);
begin
  cdsPOReceives.Data:=GetDataSet('select * from ICTRNRCH where RCHPOC='+IntToStr(POCode));
  TCurrencyField(cdsPOReceives.FieldByName('RCHAMT')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsPOReceives.FieldByName('RCHVAM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsPOReceives.FieldByName('RCHNET')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsPOReceives.FieldByName('RCHDTE')).DisplayFormat:='dd-mm-yyyy';


end;

procedure TfrmMasterReceive.cdsPOListAfterScroll(DataSet: TDataSet);
begin
  getPOReceives(cdsPOList.fieldbyname('POHCOD').AsInteger);
  btnNewPOReceive.Enabled := cdsPOList.FieldByName('POHFLR').AsString<>'R';
end;

procedure TfrmMasterReceive.cxGridDBColumn9GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 AText := IntToStr(ARecord.Index+1);
end;

procedure TfrmMasterReceive.cxGridDBTableView3DblClick(Sender: TObject);
begin
  getReceiveData(cdsPOReceives.fieldbyname('RCHCOD').AsInteger);
  pgAllClients.ActivePage :=TabReceiveData;
end;

procedure TfrmMasterReceive.getReceiveDetail(RCCode: integer);
begin
 cdsReceiveDetails.Data := GetDataSet('select * from ICTRNRCD where RCDCOD='+IntToStr(RCCode)+' order by RCDSEQ');
 TCurrencyField(cdsReceiveDetails.FieldByName('RCDPOQ')).DisplayFormat:='#,##0';
 TCurrencyField(cdsReceiveDetails.FieldByName('RCDRMQ')).DisplayFormat:='#,##0';
 TCurrencyField(cdsReceiveDetails.FieldByName('RCDQTY')).DisplayFormat:='#,##0';
 TCurrencyField(cdsReceiveDetails.FieldByName('RCDCOS')).DisplayFormat:='#,##0.00';
 TCurrencyField(cdsReceiveDetails.FieldByName('RCDAMT')).DisplayFormat:='#,##0.00';
 TDateField(cdsReceiveDetails.FieldByName('RCDEXP')).DisplayFormat:='dd-MM-yyyy';
end;

procedure TfrmMasterReceive.cxGridDBColumn10GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  AText := IntToStr(ARecord.Index +1);
end;

procedure TfrmMasterReceive.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='RCDQTY' then
  begin
    if AViewInfo.Selected then
    begin
      ACanvas.Brush.Color:= clBackground;
      ACanvas.Font.Color := $00C6D9FF;
      ACanvas.Font.Style:=[fsBold]

    end else begin
      ACanvas.Brush.Color:=$00F7F0EE;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style:=[fsBold]

    end;
  end;
  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='RCDCOS' then
  begin
    if AViewInfo.Selected then
    begin
      ACanvas.Brush.Color:= clBackground;
      ACanvas.Font.Color := $00C6D9FF;
      ACanvas.Font.Style:=[fsBold]

    end else begin
      ACanvas.Brush.Color:=$00F7F0EE;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style:=[fsBold]

    end;
  end;

  if TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName='RCDAMT' then
  begin
    if AViewInfo.Selected then
    begin
      ACanvas.Brush.Color:= clBackground;
      ACanvas.Font.Color := $00CEFFCE;
      ACanvas.Font.Style:=[fsBold]
    end else begin
      ACanvas.Font.Color := clBlack;
    end;
  end;
end;

procedure TfrmMasterReceive.cdsReceiveDetailsBeforePost(DataSet: TDataSet);
begin
 if DataSet.FieldByName('RCDQTY').AsInteger> DataSet.FieldByName('RCDRMQ').AsInteger
  then  DataSet.FieldByName('RCDQTY').AsInteger := DataSet.FieldByName('RCDRMQ').AsInteger;


 DataSet.FieldByName('RCDAMT').AsCurrency := DataSet.FieldByName('RCDQTY').AsCurrency*DataSet.FieldByName('RCDCOS').AsCurrency;
 POAmount := POAmount + DataSet.fieldbyname('RCDAMT').AsCurrency;  
end;

procedure TfrmMasterReceive.cxGridDBTableView2EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
    if cdsReceiveDetails.State in [dsinsert,dsedit] then cdsReceiveDetails.Post;
end;

procedure TfrmMasterReceive.cdsReceiveDetailsBeforeEdit(DataSet: TDataSet);
begin
 POAmount := POAmount - DataSet.fieldbyname('RCDAMT').AsCurrency;
end;

procedure TfrmMasterReceive.btnNewPOReceiveClick(Sender: TObject);
begin

  if not btnNewPOReceive.Enabled then exit;

  getReceiveData(0);
  pgAllClients.ActivePage :=TabReceiveData;
  btnSave.Enabled:=true;
  btnApprove.Enabled := true;


  btnReceiveFromPOClick(nil);
end;

procedure TfrmMasterReceive.btnRefreshClick(Sender: TObject);
begin
  getPoList;
end;

procedure TfrmMasterReceive.cxGridDBTableView4CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterReceive.cxGridDBTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterReceive.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterReceive.btnApproveClick(Sender: TObject);
var icount,receiveQty,POQty,ItemBalanceQty:integer;
    cdsCurrReceiveItems,cdsPoItems,cdsTemp : TClientDataSet;
    poItemFinishCount:integer;
begin
  if not cdsReceiveHeader.Active then Exit;

  if ((cdsReceiveHeader.State in [dsedit,dsinsert]) or ( cdsReceiveDetails.State in [dsedit,dsinsert] )) then
  begin
    Application.MessageBox(pchar('��سҷӡ�úѹ�֡��͹ !!!'),pchar('Confirm'),MB_OK or MB_ICONWARNING);
    Exit;
  end;

    receiveQty:=0;
    ItemBalanceQty := 0;
    poItemFinishCount :=0;
    POQty := 0;
    if cdsReceiveDetails.RecordCount>0 then
      begin

        cdsCurrReceiveItems :=TClientDataSet.Create(nil);
        cdsPoItems := TClientDataSet.Create(nil);

        cdsCurrReceiveItems.Data := GetDataSet(
            '  select             ' +
            '    h.RCHWH0,d.RCDPRD,d.RCDUNI,d.RCDPAC,sum(d.RCDQTY) RCDQTY  ' +
            '  from ICTRNRCH  h , ICTRNRCD d   '  +
            '  where d.RCDCOD=h.RCHCOD      '    +
            '  and h.RCHFLG=''A'' and h.RCHFL1=''Y'' and h.RCHPOC='+cdsPOHeader.fieldbyname('POHCOD').AsString+'  ' +
            '  group by                         '    +
            '  h.RCHWH0,d.RCDPRD,d.RCDUNI,d.RCDPAC '
            );

        cdsPoItems.data := GetDataSet('select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString);
        //InputBox('','','select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString);


        cdsReceiveDetails.First;
        while not cdsReceiveDetails.Eof do
        begin

          // ####000
          if cdsPoItems.Active then
            if cdsPoItems.RecordCount>0 then
              if cdsPoItems.Locate('PODWH0;PODPRD;PODUNI;PODPAC'
                            ,VarArrayOf([cdsReceiveHeader.fieldbyname('RCHWH0').AsInteger
                            ,cdsReceiveDetails.fieldbyname('RCDPRD').AsInteger
                            ,cdsReceiveDetails.fieldbyname('RCDUNI').AsInteger
                            ,cdsReceiveDetails.fieldbyname('RCDPAC').AsInteger]),[]) then
                  POQty := cdsPoItems.fieldbyname('PODQTY').AsInteger
              else
                POQty := 0;



          if cdsCurrReceiveItems.Active then
            if cdsCurrReceiveItems.RecordCount>0 then
              if cdsCurrReceiveItems.Locate('RCHWH0;RCDPRD;RCDUNI;RCDPAC'
              ,VarArrayOf([cdsReceiveHeader.fieldbyname('RCHWH0').AsInteger
              ,cdsReceiveDetails.fieldbyname('RCDPRD').AsInteger
              ,cdsReceiveDetails.fieldbyname('RCDUNI').AsInteger
              ,cdsReceiveDetails.fieldbyname('RCDPAC').AsInteger]),[]) then
                receiveQty:= cdsCurrReceiveItems.fieldbyname('RCDQTY').AsInteger
              else
                receiveQty:=0;

          ItemBalanceQty := POQty - receiveQty;
          // ####0000



          if  cdsReceiveDetails.FieldByName('RCDQTY').AsInteger>0 then
          begin

            //ShowMessage(IntToStr(receiveQty+cdsReceiveDetails.FieldByName('RCDQTY').AsInteger)+'>'+IntToStr(POQty));
            //if receiveQty>cdsReceiveDetails.FieldByName('RCDQTY').AsInteger then
            if (receiveQty+cdsReceiveDetails.FieldByName('RCDQTY').AsInteger )>POQty then
            begin
              Application.MessageBox(pchar('�кبӹǹŧ�Ѻ�Թ�ӹǹ��觫����������ö ͹��ѵ���¡����!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;


            if cdsReceiveDetails.FieldByName('RCDEXP').IsNull then
            begin
              Application.MessageBox(pchar('��س��к��ѹ������ء�͹�ӡ��͹��ѵ���¡��!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;


            if cdsReceiveDetails.FieldByName('RCDEXP').AsDateTime<getServerDate then
            begin
              Application.MessageBox(pchar('�������ö��˹��ѹ������ع��¡����ѹ���Ѩ�غѹ�� ��سҷӡ�����'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;


            if cdsReceiveDetails.FieldByName('RCDLOT').IsNull  then
            begin
              Application.MessageBox(pchar('��س��к� Lot Number ��͹�ӡ��͹��ѵ���¡��!!!'),pchar('Warning'),MB_ICONWARNING or MB_OK);
              Exit;
            end;
          end;

          cdsReceiveDetails.Next;
        end;



        {
        // Fill check Expire Date
        cdsReceiveDetails.First;
        while not cdsReceiveDetails.Eof do
        begin


          if not (cdsReceiveDetails.State in [dsedit,dsinsert]) then cdsReceiveDetails.Edit;
          cdsReceiveDetails.FieldByName('RCDCOD').AsInteger := cdsReceiveHeader.FieldByName('RCHCOD').AsInteger;
          cdsReceiveDetails.Post;

          cdsReceiveDetails.Next;
        end;
        }




      end;



  if not (cdsReceiveHeader.State in [dsedit,dsinsert]) then cdsReceiveHeader.Edit;

  if Application.MessageBox(pchar('�׹�ѹ͹��ѵ��ŧ�Ѻ�Թ��� !!!'),pchar('Confirm'),MB_OKCANCEL or MB_ICONQUESTION) = mrOk then
  begin
    cdsReceiveHeader.FieldByName('RCHFLG').AsString:='A';
    cdsReceiveHeader.FieldByName('RCHFL1').AsString:='Y'; // read only flag

    cdsReceiveHeader.FieldByName('RCHREV').AsInteger := FReviseNum+1;
    //if (FReviseNum+1)>0 then
    //  cdsReceiveHeader.FieldByName('POHCDE').AsString := cdsReceiveHeader.FieldByName('POHCDE').AsString;

    cdsReceiveHeader.Post;


    if cdsReceiveHeader.ChangeCount>0 then
    begin
      //ShowMessage('error No :'+IntToStr(UpdateDataset(cdsReceiveHeader,'select * from ICTRNRCH where RCHCOD='+IntToStr(FPOCode))));
      UpdateDataset(cdsReceiveHeader,'select * from ICTRNRCH where RCHCOD='+IntToStr(FPOCode));
      btnApprove.Enabled := false;

      //
      if cdsReceiveDetails.RecordCount>0 then
      begin
        cdsReceiveDetails.First;
        icount :=0;
        while not cdsReceiveDetails.Eof do
        begin
//          PostStkTransaction();
          if cdsReceiveDetails.FieldByName('RCDQTY').AsInteger>0 then
          begin
            inc(icount);
            PostStkTransaction(
              '00',1,cdsReceiveDetails.fieldbyname('RCDPRD').asinteger,cdsReceiveDetails.fieldbyname('RCDPCD').asstring
              ,cdsReceiveDetails.fieldbyname('RCDWH0').asinteger,cdsReceiveDetails.fieldbyname('RCDUNI').asinteger
              ,cdsReceiveDetails.fieldbyname('RCDPAC').asinteger,cdsReceiveDetails.fieldbyname('RCDQTY').asinteger
              ,0,cdsReceiveDetails.fieldbyname('RCDLOT').AsString
              ,cdsReceiveDetails.fieldbyname('RCDEXP').asdatetime,'A',1,cdsReceiveDetails.fieldbyname('RCDCOS').ascurrency
              ,cdsReceiveDetails.fieldbyname('RCDCOD').AsInteger
              ,cdsReceiveDetails.fieldbyname('RCDCDE').AsString
              ,icount
            );
            PostStk(
              '00',1,cdsReceiveDetails.fieldbyname('RCDPRD').asinteger,cdsReceiveDetails.fieldbyname('RCDPCD').asstring
              ,cdsReceiveDetails.fieldbyname('RCDWH0').asinteger,cdsReceiveDetails.fieldbyname('RCDUNI').asinteger
              ,cdsReceiveDetails.fieldbyname('RCDPAC').asinteger,cdsReceiveDetails.fieldbyname('RCDQTY').asinteger
              ,0,cdsReceiveDetails.fieldbyname('RCDLOT').AsString
              ,cdsReceiveDetails.fieldbyname('RCDEXP').asdatetime,'A',1,cdsReceiveDetails.fieldbyname('RCDCOS').ascurrency
              ,cdsReceiveDetails.fieldbyname('RCDCOD').AsInteger
              ,cdsReceiveDetails.fieldbyname('RCDCDE').AsString
              ,icount
            );


            // update po item to finish receive status

            // ####000
            if cdsPoItems.Active then
              if cdsPoItems.RecordCount>0 then
                if cdsPoItems.Locate('PODWH0;PODPRD;PODUNI;PODPAC'
                              ,VarArrayOf([cdsReceiveHeader.fieldbyname('RCHWH0').AsInteger
                              ,cdsReceiveDetails.fieldbyname('RCDPRD').AsInteger
                              ,cdsReceiveDetails.fieldbyname('RCDUNI').AsInteger
                              ,cdsReceiveDetails.fieldbyname('RCDPAC').AsInteger]),[]) then
                    POQty := cdsPoItems.fieldbyname('PODQTY').AsInteger
                else
                  POQty := 0;



            if cdsCurrReceiveItems.Active then
              if cdsCurrReceiveItems.RecordCount>0 then
                if cdsCurrReceiveItems.Locate('RCHWH0;RCDPRD;RCDUNI;RCDPAC'
                ,VarArrayOf([cdsReceiveHeader.fieldbyname('RCHWH0').AsInteger
                ,cdsReceiveDetails.fieldbyname('RCDPRD').AsInteger
                ,cdsReceiveDetails.fieldbyname('RCDUNI').AsInteger
                ,cdsReceiveDetails.fieldbyname('RCDPAC').AsInteger]),[]) then
                  receiveQty:= cdsCurrReceiveItems.fieldbyname('RCDQTY').AsInteger
                else
                  receiveQty:=0;

             ItemBalanceQty := POQty -  ( receiveQty + cdsReceiveDetails.fieldbyname('RCDQTY').asinteger);
            // ####0000


            //if ItemBalanceQty<=0 then
            //begin
              {cdsPoItems.data := GetDataSet('select * from ICMTTPOD where PODCOD='+inttostr(FPOCode)+' and PODPRD='
              +cdsReceiveDetails.fieldbyname('RCDPCD').asstring+' and PODWH0='+cdsReceiveDetails.fieldbyname('RCDUNI').AsString+' and PODUNI='
              +cdsReceiveDetails.fieldbyname('RCDUNI').AsString+' and PODPAC='+cdsReceiveDetails.fieldbyname('RCDPAC').AsString+'');
              }

              

              if cdsPoItems.Active then
                if cdsPoItems.RecordCount>0 then
                  if cdsPoItems.Locate('PODCOD;PODWH0;PODPRD;PODUNI;PODPAC'
                                ,VarArrayOf([cdsPOHeader.fieldbyname('POHCOD').AsInteger,cdsReceiveHeader.fieldbyname('RCHWH0').AsInteger
                                ,cdsReceiveDetails.fieldbyname('RCDPRD').AsInteger
                                ,cdsReceiveDetails.fieldbyname('RCDUNI').AsInteger
                                ,cdsReceiveDetails.fieldbyname('RCDPAC').AsInteger]),[])
                then
                begin
                  cdsPoItems.edit;
                  if ItemBalanceQty=0 then begin
                    cdsPoItems.FieldByName('PODFLG').AsString:='R';  // receive
                  end
                  else if ItemBalanceQty<0 then
                    cdsPoItems.FieldByName('PODFLG').AsString:='O'  // over amount
                  else
                    cdsPoItems.FieldByName('PODFLG').AsString:='A'; // avilable receive

                  cdsPoItems.Post;
                end;

                  if cdsPoItems.ChangeCount>0 then
                    UpdateDataset(cdsPoItems,'select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString);




                    // update po complete status ********************************************************************************
                    cdsTemp := TClientDataSet.Create(nil);
                    cdsTemp.Data:=GetDataSet('select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString+' and PODFLG=''R''');
                    if cdsTemp.Active then
                    begin
                      cdsTemp.First;
                      while not cdsTemp.Eof do
                      begin
                        Inc(poItemFinishCount);
                        cdsTemp.Next;
                      end;
                    end;


                   if not (cdsPOHeader.State in [dsinsert,dsedit]) then
                      cdsPOHeader.Edit;
                    if poItemFinishCount>0 then
                      if poItemFinishCount=cdsPoItems.RecordCount then // receive all items complete
                      begin
                        cdsPOHeader.FieldByName('POHFLR').AsString:='R';
                      end else
                      if poItemFinishCount<cdsPoItems.RecordCount then
                      begin
                        cdsPOHeader.FieldByName('POHFLR').AsString:='P';
                      end;

                    cdsPOHeader.post;

                    // update po no complete status ******************************************************************************
                    if poItemFinishCount<=0 then
                    begin
                      cdsTemp := TClientDataSet.Create(nil);
                      cdsTemp.Data:=GetDataSet('select * from ICMTTPOD where PODCOD='+cdsPOHeader.fieldbyname('POHCOD').AsString+'');
                      if cdsTemp.Active then
                        if cdsTemp.RecordCount>0 then
                        begin

                         if not (cdsPOHeader.State in [dsinsert,dsedit]) then
                            cdsPOHeader.Edit;
                              cdsPOHeader.FieldByName('POHFLR').AsString:='P';

                          cdsPOHeader.post;
                        end;
                    end;



                    if cdsPOHeader.ChangeCount>0 then
                      UpdateDataset(cdsPOHeader,'select * from ICMTTPOH limit 0');
            //end;
          end;


          cdsReceiveDetails.Next;
        end;
      end;


      Application.MessageBox(pchar('͹��ѵ����º����'),pchar('Infomation'),MB_OK or MB_ICONINFORMATION);

      pgAllClients.ActivePage:=TabReceiveList;
      TabReceiveData.Enabled:=false;

    end;
  end;
end;

procedure TfrmMasterReceive.btnReviseClick(Sender: TObject);
begin
  btnApprove.Enabled:=true;
  btnSave.Enabled:=true;
end;

procedure TfrmMasterReceive.PostStkTransaction(STKTYPE: string; STKMVC,
  STKPRD: integer; STKPCD: string; STKWH0, STKUNI, STKPAC, STKQTY, STKLOC:integer;
  STKLOT: string; STKEXP: tdatetime; STKFLG: string; STKCAL: integer;STKCOS:currency;STKRF0:integer;STKRF1:string;STKSEQ:integer);
var cdsTrnStock : TClientDataSet;
  STKCOD : integer;
begin
  try
    cdsTrnStock := TClientDataSet.Create(nil);




    cdsTrnStock.Data := GetDataSet('select * from ICTRNSTK where STKCOD='+IntToStr(STKCOD));
    if cdsTrnStock.Active then
    begin
      if not (cdsTrnStock.State in [dsedit,dsinsert]) then cdsTrnStock.Edit;
      STKCOD :=  getCdeRun('SETTING','RUNNING','STKCOD','CDENM1');
      cdsTrnStock.FieldByName('STKTYP').AsString := STKTYPE;
      cdsTrnStock.FieldByName('STKCOD').AsInteger := STKCOD;

      cdsTrnStock.FieldByName('STKMVC').AsInteger := STKMVC;
      cdsTrnStock.FieldByName('STKPRD').AsInteger := STKPRD;
      cdsTrnStock.FieldByName('STKPCD').AsString := STKPCD;
      cdsTrnStock.FieldByName('STKWH0').AsInteger := STKWH0;
      cdsTrnStock.FieldByName('STKWH1').AsInteger := 0;
      cdsTrnStock.FieldByName('STKUNI').AsInteger := STKUNI;
      cdsTrnStock.FieldByName('STKPAC').AsInteger := STKPAC;
      cdsTrnStock.FieldByName('STKQTY').AsInteger := STKQTY;
      cdsTrnStock.FieldByName('STKLOC').AsInteger := STKLOC;
      cdsTrnStock.FieldByName('STKLOT').AsString := STKLOT;
      cdsTrnStock.FieldByName('STKEXP').AsDateTime := STKEXP;
      cdsTrnStock.FieldByName('STKFLG').AsString := STKFLG;
      cdsTrnStock.FieldByName('STKCAL').AsInteger := STKCAL;
      cdsTrnStock.FieldByName('STKCOS').AsCurrency := STKCOS;

      cdsTrnStock.FieldByName('STKRF0').AsInteger := STKRF0;
      cdsTrnStock.FieldByName('STKRF1').AsString := STKRF1;
      cdsTrnStock.FieldByName('STKSEQ').AsInteger := STKSEQ;


      setEntryUSRDT(cdsTrnStock,DLLParameter.UserID);
      setSystemCMP(cdsTrnStock,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);



      cdsTrnStock.Post;
      setCdeRun('SETTING','RUNNING','STKCOD','CDENM1');

      if cdsTrnStock.ChangeCount>0 then
      begin
          UpdateDataset(cdsTrnStock,'select * from ICTRNSTK where STKCOD='+IntToStr(STKCOD));
      end;

    end;

  finally
    cdsTrnStock.free;
  end;

end;

procedure TfrmMasterReceive.ckShowUnitCodClick(Sender: TObject);
begin
cxGridDBColRCDPRD.Visible:= ckShowUnitCod.Checked;
cxGridDBColRCDUNI.Visible:= ckShowUnitCod.Checked;
cxGridDBColRCDPAC.Visible:= ckShowUnitCod.Checked;

end;

procedure TfrmMasterReceive.PostStk(STKTYPE: string; STKMVC,
  STKPRD: integer; STKPCD: string; STKWH0, STKUNI, STKPAC, STKQTY, STKLOC:integer;
  STKLOT: string; STKEXP: tdatetime; STKFLG: string; STKCAL: integer;
  STKCOS: currency; STKRF0: integer; STKRF1: string; STKSEQ: integer);
var cdsStockLOT,cdsMasterStock : TClientDataSet;
    ExpireCode : string;
    STLCOD,STKCOD,mQty: integer;
    mCos,mAmount : currency;
    IsNew : boolean;
begin
    try

      IsNew := false;
      ExpireCode := FormatDateTime('ddMMyyyy',STKEXP);

      cdsStockLOT:=TClientDataSet.Create(nil);
      cdsMasterStock := TClientDataSet.Create(nil);
      cdsStockLOT.data := GetDataSet('select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');



      if cdsStockLOT.Active then
      begin
        cdsStockLOT.Edit;


        if cdsStockLOT.RecordCount>0 then
        begin
          // edit
          cdsStockLOT.FieldByName('STLQTY').AsInteger:=STKQTY;
          cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*STKQTY;          

          setModifyUSRDT(cdsStockLOT,DLLParameter.UserID);
        end else
        begin

          // append
          IsNew := true;
          STLCOD := getCdeRun('SETTING','RUNNING','STLCOD','CDENM1');
          cdsStockLOT.FieldByName('STLCOD').AsInteger:=STLCOD;

          cdsStockLOT.FieldByName('STLLOT').AsString:=STKLOT;
          cdsStockLOT.FieldByName('STLPRD').AsInteger:=STKPRD;
          cdsStockLOT.FieldByName('STLWH0').AsInteger:=STKWH0;
          cdsStockLOT.FieldByName('STLWH1').AsInteger:=0;

          cdsStockLOT.FieldByName('STLUNI').AsInteger:=STKUNI;
          cdsStockLOT.FieldByName('STLPAC').AsInteger:=STKPAC;
          cdsStockLOT.FieldByName('STLEXC').AsString:=ExpireCode;


          cdsStockLOT.FieldByName('STLQTY').AsInteger:=STKQTY;
          cdsStockLOT.FieldByName('STLLOC').AsInteger:=STKLOC;
          //cdsStockLOT.FieldByName('STLLCD').AsString:='';
          cdsStockLOT.FieldByName('STLEXP').AsDateTime:=STKEXP;
          cdsStockLOT.FieldByName('STLCOS').AsCurrency:=STKCOS;
          cdsStockLOT.FieldByName('STLAMT').AsCurrency:=STKCOS*STKQTY;

          setEntryUSRDT(cdsStockLOT,DLLParameter.UserID);
          setSystemCMP(cdsStockLOT,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
        end;





        cdsStockLOT.Post;
        if cdsStockLOT.ChangeCount>0 then
        begin
          UpdateDataset(cdsStockLOT,'select * from ICMTTSTL where STLLOT='''+STKLOT+''' and STLPRD='+IntToStr(STKPRD)+' and STLWH0='+IntToStr(STKWH0)+'  and STLUNI='+IntToStr(STKUNI)+' and STLPAC='+IntToStr(STKPAC)+' and STLEXC='''+ExpireCode+'''');
          if IsNew then setCdeRun('SETTING','RUNNING','STLCOD','CDENM1');



          IsNew := false;
          // update master stock
          cdsMasterStock.data := GetDataSet('select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
          if cdsMasterStock.Active then
          begin
            if cdsMasterStock.fieldbyname('STKQTY').IsNull then mQty:=0 else
            mQty := cdsMasterStock.fieldbyname('STKQTY').AsInteger;   // old qty
            if cdsMasterStock.fieldbyname('STKCOS').IsNull then mCos:=0 else
            mCos := cdsMasterStock.fieldbyname('STKCOS').AsCurrency;  // need average proc

            cdsMasterStock.Edit;
            if cdsMasterStock.RecordCount>0 then
            begin
              // edit
              cdsMasterStock.FieldByName('STKQTY').AsInteger :=mQty + (STKQTY*STKCAL);
              cdsMasterStock.FieldByName('STKCOS').AsCurrency :=mCos;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency :=mCos*(mQty + (STKQTY*STKCAL));

              setModifyUSRDT(cdsMasterStock,DLLParameter.UserID);
            end else
            begin
              // append
              IsNew := true;
              STKCOD :=   getCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
              cdsMasterStock.FieldByName('STKCOD').AsInteger:=STKCOD;

              cdsMasterStock.FieldByName('STKPRD').AsInteger:=STKPRD;
              cdsMasterStock.FieldByName('STKWH0').AsInteger:=STKWH0;
              cdsMasterStock.FieldByName('STKWH1').AsInteger:=0;
              cdsMasterStock.FieldByName('STKUNI').AsInteger:=STKUNI;
              cdsMasterStock.FieldByName('STKPAC').AsInteger:=STKPAC;

              cdsMasterStock.FieldByName('STKQTY').AsInteger :=mQty + (STKQTY*STKCAL);//STKQTY;
              cdsMasterStock.FieldByName('STKCOS').AsCurrency :=mCos;//STKCOS;
              cdsMasterStock.FieldByName('STKAMT').AsCurrency :=mCos*(mQty + (STKQTY*STKCAL));//STKQTY*STKCOS;


              setEntryUSRDT(cdsMasterStock,DLLParameter.UserID);
              setSystemCMP(cdsMasterStock,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);

            end;
            cdsMasterStock.Post;
            if cdsMasterStock.ChangeCount>0 then
            begin
               UpdateDataset(cdsMasterStock,'select * from ICMTTSTK where STKPRD='+IntToStr(STKPRD)+' and STKWH0='+IntToStr(STKWH0)+' and STKUNI='+IntToStr(STKUNI)+' and STKPAC='+IntToStr(STKPAC)+'');
               if IsNew then setCdeRun('SETTING','RUNNING','MTT_STKCOD','CDENM1');
            end;

          end;


        end;



      end;




    finally
      cdsStockLOT.Free;
      cdsMasterStock.Free;

    end;
end;

procedure TfrmMasterReceive.btnCancelReceiveClick(Sender: TObject);
var
  reasonText : string;
  cdsReason : TClientDataSet;
  reacode : integer;
begin
  reasonText := InputBox('¡��ԡ��¡��','��س��к��˵ؼ� ���¡��ԡ','');
  if reasonText='' then Exit;

  reacode:=getCdeRun('SETTING','RUNNING','REACOD','CDENM1');

  if cdsReceiveHeader.Active then
  begin
    if cdsReceiveHeader.FieldByName('RCHFL1').AsString='Y' then
    begin
      Application.MessageBox(pchar('�������ö¡��ԡ��¡����'),pchar('Warning'),MB_ICONWARNING or MB_OK);
      Exit;
    end;


    if not ( cdsReceiveHeader.State in [dsedit,dsinsert]) then cdsReceiveHeader.Edit;
    cdsReceiveHeader.FieldByName('RCHFLG').AsString:='C';
    cdsReceiveHeader.FieldByName('RCHF10').AsInteger:=reacode;

    cdsReceiveHeader.Post;
  end else
    Exit;


  try

    cdsReason :=TClientDataSet.Create(nil);
    cdsReason.Data := GetDataSet('select * from ICMTTREA where REACOD='+IntToStr(reacode));




    if cdsReason.Active then
    begin
      cdsReason.Edit;
      cdsReason.FieldByName('REACOD').AsInteger := reacode;
      cdsReason.FieldByName('REANAM').AsString := reasonText;
      cdsReason.Post;
    end;
    //cdsReason.Data := get

    if cdsReceiveHeader.ChangeCount>0 then
      UpdateDataset(cdsReceiveHeader,'select * from ICTRNRCH limit 0');


    if cdsReason.ChangeCount>0 then
    begin
      UpdateDataset(cdsReason,'select * from ICMTTREA where REACOD='+IntToStr(reacode));
      setCdeRun('SETTING','RUNNING','REACOD','CDENM1');
    end;

  finally
    cdsReason.Free;
  end;


end;

procedure TfrmMasterReceive.grdPOListColFLRCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Left := RectText.Left + 15;
  //ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
  //ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

  RectColor.Right := RectColor.Left + 10;
  ACanvas.Pen.Color := clWindowText;
  if  AViewInfo.GridRecord.Values[grdPOListColFLR.Index] = 'R' then
  begin
    ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clBlue;
  end
  else if  AViewInfo.GridRecord.Values[grdPOListColFLR.Index] = 'N' then
  begin
    ACanvas.DrawText('New', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOListColFLR.Index] = 'P' then
  begin
    ACanvas.DrawText('Pending', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $009DCEFF;
  end
  else if  AViewInfo.GridRecord.Values[grdPOListColFLR.Index] = 'E' then
  begin
    ACanvas.DrawText('Holded', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := clGray;
  end
  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;


(*
begin
    if not AViewInfo.Selected then
    begin
      if  AViewInfo.GridRecord.Values[grdPOListColFLG.Index] = 'F' then
      begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := $0000005E ;
      end;
    end else
    begin
      ACanvas.Font.Style := [fsBold];
      if  AViewInfo.GridRecord.Values[grdPOListColFLG.Index] = 'F' then
        ACanvas.Font.Color := clYellow
      else
      if  AViewInfo.GridRecord.Values[grdPOListColFLG.Index] = 'V' then
        ACanvas.Font.Color := $0093FF93 ; // green
    end;

end;  *)

procedure TfrmMasterReceive.grdPOListColFLRGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  if  ARecord.Values[grdPOListColFLR.Index] = 'R' then
      AText:= 'Finish'
  else //if  ARecord.Values[grdPOListColFLG.Index] = 'F' then
    AText :='Avilable';
    
end;

procedure TfrmMasterReceive.setbtnEdit(addItem, editItem, deleteItem,
  receiveFromPO, cancelReceive, new, approve, save, cancel: boolean);
begin
  btnAddItem.Enabled:=addItem;
  btnEditItem.Enabled := editItem;
  btnDeleteItem.Enabled:=deleteItem;
  btnReceiveFromPO.Enabled:=receiveFromPO;
  btnCancelReceive.Enabled:=cancelReceive;
  btnNew.Enabled:=new;
  btnSave.Enabled:=save;
  btnCancel.Enabled:=cancel;
end;

procedure TfrmMasterReceive.btnPrintClick(Sender: TObject);
var dllParams : TDLLParameter;
  DefaltValue:TList;
begin

    DefaltValue:=TList.Create;
    DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FRCCode)));
    //DefaltValue.Add(TStringValue.Create('RCHCOD',IntToStr(FPOCode)));
    dllParams.ReportCode:='RV00-001';
    ShowReportGenerator(Application,nil,swModal,dllParams,DefaltValue,true,GetReportGroup);

end;

procedure TfrmMasterReceive.initCmb;
var cdsTemp : TClientDataSet;
begin

  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet('select ''00'' as WH0CDE,''-- All --'' as WH0NAM union select WH0CDE,WH0NAM from ICMTTWH0 where WH0ACT=''A''');
  loadCmbItems(cmbWarehouse.Items,cdsTemp,'WH0CDE','WH0NAM','');
  cdsTemp.data := GetDataSet('select ''00'' as SUPCDE,''-- All --'' as SUPNAM union select SUPCDE,SUPNAM from ICMTTSUP where SUPACT=''A''');
  loadCmbItems(cmbSuppliers.Items,cdsTemp,'SUPCDE','SUPNAM','');
  cdsTemp.data := GetDataSet('select ''00'' as WH1CDE,''-- All --'' as WH1NAM union select WH1CDE,WH1NAM from ICMTTWH1 where WH1ACT=''A''');
  loadCmbItems(cmbDepartments.Items,cdsTemp,'WH1CDE','WH1NAM','');

  cdsTemp.data := GetDataSet('select ''00'' as POTCDE,''-- All --'' as POTNAM union select POTCDE,POTNAM from ICMTTPOT where POTACT=''A''');
  loadCmbItems(cmbPOType.Items,cdsTemp,'POTCDE','POTNAM','');

  cmbWarehouse.ItemIndex:=0;
  cmbSuppliers.ItemIndex:=0;
  cmbDepartments.ItemIndex:=0;
  cmbPOType.ItemIndex:=0;



  //cmbProdType.ItemIndex:= loadCmbItems(cmbProdType.Items,cdsProdTypes,'PTYCOD','PTYNAM',cdsProducts.fieldbyname('PRDTYP').AsString);
end;
procedure TfrmMasterReceive.getAllReceives;
var strsql:string;
begin

  strsql :=''+
' select b.WH0NAM,c.POHCDE,d.SUPNAM,a.*    '+
' from ICTRNRCH  a , ICMTTWH0 b , ICMTTPOH c , ICMTTSUP d  '+
' where a.RCHACT=''A''   '+
' and a.RCHWH0 = b.WH0COD  '+
' and a.RCHPOC = c.POHCOD   '+
' and d.SUPCOD = c.POHSUP';


  cdsAllReceives.Data := GetDataSet(strsql);
  TCurrencyField(cdsAllReceives.FieldByName('RCHAMT')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsAllReceives.FieldByName('RCHVAM')).DisplayFormat:='#,##0.00';
  TCurrencyField(cdsAllReceives.FieldByName('RCHNET')).DisplayFormat:='#,##0.00';
end;

procedure TfrmMasterReceive.cxGridDBColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure TfrmMasterReceive.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterReceive.cxGridDBTableView1DblClick(Sender: TObject);
begin
  getReceiveData(cdsAllReceives.fieldbyname('RCHCOD').AsInteger);
  pgAllClients.ActivePage :=TabReceiveData;
end;

procedure TfrmMasterReceive.btnCancelClick(Sender: TObject);
begin
  TabReceiveData.Enabled:=false;
  pgAllClients.ActivePage :=TabReceiveList;
end;

procedure TfrmMasterReceive.pgAllClientsChange(Sender: TObject);
begin
   if not TabReceiveData.Enabled then pgAllClients.ActivePage:=TabReceiveList;
end;

procedure TfrmMasterReceive.grdPOReceiveListFLGCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Left := RectText.Left + 15;
  //ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
  //ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

  RectColor.Right := RectColor.Left + 10;
  ACanvas.Pen.Color := clWindowText;
  if  AViewInfo.GridRecord.Values[grdPOReceiveListFLG.Index] = 'A' then
  begin
    ACanvas.DrawText(' ͹��ѵ�', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00DDFFBB;//clBlue;
  end
  else if  AViewInfo.GridRecord.Values[grdPOReceiveListFLG.Index] = 'N' then
  begin
    ACanvas.DrawText(' �͡�������', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;;
  end
  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;

procedure TfrmMasterReceive.grdAllReceivesFLGCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Left := RectText.Left + 15;
  //ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
  //ACanvas.DrawText('Received', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

  RectColor.Right := RectColor.Left + 10;
  ACanvas.Pen.Color := clWindowText;
  if  AViewInfo.GridRecord.Values[grdAllReceivesFLG.Index] = 'A' then
  begin
    ACanvas.DrawText(' ͹��ѵ�', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00DDFFBB;
  end
  else if  AViewInfo.GridRecord.Values[grdAllReceivesFLG.Index] = 'N' then
  begin
    ACanvas.DrawText(' �͡�������', RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
    ACanvas.Brush.Color := $00D2FFFF;;
  end
  else
    ACanvas.Brush.Color := clGray ;

  ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;

procedure TfrmMasterReceive.cxGridDBTableView4DblClick(Sender: TObject);
begin
  btnNewPOReceiveClick(sender);
end;

end.

{
  IsNew := false;

  if not (cdsReceiveHeader.State in [dsedit,dsinsert]) then cdsReceiveHeader.Edit;
  cdsReceiveHeader.FieldByName('RCHPOC').AsInteger := cdsPOList.fieldbyname('POHCOD').AsInteger;
  cdsReceiveHeader.FieldByName('RCHWH0').AsInteger := cdsPOList.fieldbyname('POHWH0').AsInteger;
  cdsReceiveHeader.FieldByName('RCHDTE').AsDateTime := getServerDate;




  if cdsReceiveHeader.State in [dsinsert] then
  begin
    IsNew :=true;
    if cdsReceiveHeader.FieldByName('RCHACT').IsNull then
      cdsReceiveHeader.FieldByName('RCHACT').AsString:='A';

    cdsReceiveHeader.FieldByName('RCHCOD').AsInteger   :=  getCdeRun('SETTING','RUNNING','TRN_RCHCOD','CDENM1');
    cdsReceiveHeader.FieldByName('RCHCDE').AsString    :=  getPrefixRunning(DLLParameter.Branch,getCdeStr('SETTING','RUNNING','TRN_RCHCOD','CDEPRE')
                                                        ,cdsReceiveHeader.FieldByName('RCHCOD').AsInteger,getCde('SETTING','RUNNING','TRN_RCHCOD_LEN','CDENM1'));
    cdsReceiveHeader.FieldByName('RCHREV').AsInteger := 1;


    if cdsReceiveDetails.RecordCount>0 then
      begin
        cdsReceiveDetails.First;
        while not cdsReceiveDetails.Eof do
        begin
          if not (cdsReceiveDetails.State in [dsedit,dsinsert]) then cdsReceiveDetails.Edit;
          cdsReceiveDetails.FieldByName('RCDCOD').AsInteger := cdsReceiveHeader.FieldByName('RCHCOD').AsInteger;
          cdsReceiveDetails.Post;

          cdsReceiveDetails.Next;
        end;
      end;

    setEntryUSRDT(cdsReceiveHeader,DLLParameter.UserID);
    setSystemCMP(cdsReceiveHeader,DLLParameter.Company,DLLParameter.Branch,DLLParameter.Department,DLLParameter.Section);
  end;

}
