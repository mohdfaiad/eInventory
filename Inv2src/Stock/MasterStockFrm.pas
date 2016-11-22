unit MasterStockFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CommonLIB, StdCtrls, RzLabel, ExtCtrls, RzPanel, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, DBClient, RzTabs,
  cxTextEdit;

type
  TfrmMasterStock = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    pgAllClients: TPageControl;
    tabWarehouseData: TTabSheet;
    tabDepartmentData: TTabSheet;
    grdWarehouses: TcxGrid;
    grdWarehousesDBTableView1: TcxGridDBTableView;
    grdWarehousesDBTableView1Column1: TcxGridDBColumn;
    grdWarehousesDBTableView1Column5: TcxGridDBColumn;
    grdWarehousesDBTableView1Column2: TcxGridDBColumn;
    grdWarehousesDBTableView1Column3: TcxGridDBColumn;
    grdWarehousesDBTableView1Column4: TcxGridDBColumn;
    grdWarehousesDBTableView1Column6: TcxGridDBColumn;
    grdWarehousesDBTableView1Column7: TcxGridDBColumn;
    grdWarehousesLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    RzPanel1: TRzPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Splitter2: TSplitter;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    btnNewProd: TRzBitBtn;
    btnDeleteProd: TRzBitBtn;
    btnEditProd: TRzBitBtn;
    btnSaveProd: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzPanel4: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    cdsWarehouses: TClientDataSet;
    dsWarehouses: TDataSource;
    cdsSubStocks: TClientDataSet;
    dsSubStocks: TDataSource;
    cdsWarehouseProds: TClientDataSet;
    dsWarehouseProds: TDataSource;
    cdsSubStockProds: TClientDataSet;
    dsSubStockProds: TDataSource;
    pgWarehouseProduct: TRzPageControl;
    TabWarehouseProducts: TRzTabSheet;
    TabWarehouseProductLots: TRzTabSheet;
    grdItems: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    grdItemNO: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    grdItemsOnhandQTY: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsWarehouseLots: TClientDataSet;
    dsWarehouseLots: TDataSource;
    grdItemLots: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    grdItemLotsNo: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    grdItemLotsQTY: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pgDepartmentProducts: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    TabDepartmentProductLots: TRzTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    btnShowStockCard: TRzBitBtn;
    cdsSubStockLots: TClientDataSet;
    dsSubStockLots: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnNewProdClick(Sender: TObject);
    procedure btnEditProdClick(Sender: TObject);
    procedure cdsWarehousesAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure grdWarehousesDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView4CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure grdItemNOGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: String);
    procedure grdItemLotsNoGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: String);
    procedure grdWarehousesDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView4CustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cdsSubStocksAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBColumn8GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
  private
    FDLLParameter: TDLLParameter;

    procedure SetDLLParameter(const Value: TDLLParameter);
    { Private declarations }

    procedure getWarehouses();
    procedure getSubStocks();
    procedure getWarehouseProds(wh0code:integer);
    procedure getDepartmentProds(wh1code:integer);
    procedure getWarehouseLots(wh0code,prodCode:integer);
    procedure getDepartmentLots(wh1code,prodCode:integer);

  public
    { Public declarations }
     property DLLParameter : TDLLParameter read FDLLParameter write SetDLLParameter;
  end;

var
  frmMasterStock: TfrmMasterStock;

implementation

uses  STDLIB, CdeLIB, EditWarehouseProdFrm;

{$R *.dfm}

{ TfrmMasterStock }

procedure TfrmMasterStock.getWarehouses;
begin
 // InputBox('','','select * from ICMTTWH0 where WH0ACT=''A'' and '+getSqlCompanyCondition(FDLLParameter.Company,FDLLParameter.Branch,FDLLParameter.Department,FDLLParameter.Section));
  cdsWarehouses.Data := GetDataSet('select * from ICMTTWH0 where WH0ACT=''A'' and '+getSqlCompanyCondition('',DLLParameter));
end;

procedure TfrmMasterStock.SetDLLParameter(const Value: TDLLParameter);
begin
  FDLLParameter := Value;
end;

procedure TfrmMasterStock.FormShow(Sender: TObject);
begin
  getWarehouses;
  getSubStocks;

  pgAllClients.ActivePage :=tabWarehouseData;
  //ShowMessage(FDLLParameter.Company);
end;

procedure TfrmMasterStock.btnNewProdClick(Sender: TObject);
var frmEditWarehouseProd : TfrmEditWarehouseProd;
begin
  try
    frmEditWarehouseProd := TfrmEditWarehouseProd.Create(Application);
    frmEditWarehouseProd.AppParameter := DLLParameter;

    frmEditWarehouseProd.WarehouseCode := cdsWarehouses.fieldbyname('WH0COD').AsInteger;
    frmEditWarehouseProd.UnitCode := 0;
    frmEditWarehouseProd.PacCode  := 0;
    frmEditWarehouseProd.StockCode  := 0;
    frmEditWarehouseProd.ProdCode := 0;

    frmEditWarehouseProd.ShowModal;

    getWarehouseProds(frmEditWarehouseProd.WarehouseCode);
    cdsWarehouseProds.Locate('STKCOD',frmEditWarehouseProd.StockCode,[]);


  finally
    frmEditWarehouseProd.Free;
  end;
end;

procedure TfrmMasterStock.getSubStocks;
begin
  cdsSubStocks.Data := GetDataSet('select * from ICMTTWH1 where WH1ACT=''A'' and  '+getSqlCompanyCondition('',DLLParameter));
end;

procedure TfrmMasterStock.getWarehouseProds(wh0code:integer);
var strsql:string;
begin
  strsql :=
 ' select '+
 '   b.WH0CDE,b.WH0NAM,c.PACCDE,c.PACNAM,c.PACRAT,d.UNINAM,e.PRDCDE,e.PRDNAE,e.PRDNAT,a.* '+
 ' from ICMTTSTK a '+
 ' left join ICMTTWH0 b on a.STKWH0=b.WH0COD '+
 ' left join ICMTTPAC c on a.STKPAC=c.PACCOD '+
 ' left join ICMTTUNI d on a.STKUNI=d.UNICOD '+
 ' left join ICMTTPRD e on a.STKPRD=e.PRDCOD '+
 ' where a.STKWH0='+IntToStr(wh0code)+' and '+getSqlCompanyCondition('a.',DLLParameter)+' order by STKCOD ';

//  cdsWarehouseProds.Data := GetDataSet('select * from ICMTTSTK where STKWH0='+IntToStr(wh0code)+' and '+getSqlCompanyCondition(DLLParameter)+' order by STKCOD');
  cdsWarehouseProds.Data := GetDataSet(strsql);
  TCurrencyField(cdsWarehouseProds.FieldByName('STKQTY')).DisplayFormat:='#,##0';
end;

procedure TfrmMasterStock.btnEditProdClick(Sender: TObject);
var frmEditWarehouseProd : TfrmEditWarehouseProd;
begin

  if cdsWarehouseProds.RecordCount<= 0 then Exit;

  try
    frmEditWarehouseProd := TfrmEditWarehouseProd.Create(Application);
    frmEditWarehouseProd.AppParameter := DLLParameter;

    frmEditWarehouseProd.WarehouseCode := cdsWarehouseProds.fieldbyname('STKWH0').AsInteger;
    frmEditWarehouseProd.UnitCode := cdsWarehouseProds.fieldbyname('STKUNI').AsInteger;
    frmEditWarehouseProd.PacCode := cdsWarehouseProds.fieldbyname('STKPAC').AsInteger;
    frmEditWarehouseProd.StockCode := cdsWarehouseProds.fieldbyname('STKCOD').AsInteger;
    frmEditWarehouseProd.ProdCode := cdsWarehouseProds.fieldbyname('STKPRD').AsInteger;


    frmEditWarehouseProd.ShowModal;

    getWarehouseProds(frmEditWarehouseProd.WarehouseCode);
    cdsWarehouseProds.Locate('STKCOD',frmEditWarehouseProd.StockCode,[]);
  finally
    frmEditWarehouseProd.Free;
  end;
end;

procedure TfrmMasterStock.cdsWarehousesAfterScroll(DataSet: TDataSet);
begin
    getWarehouseProds(DataSet.fieldbyname('WH0COD').AsInteger);
end;

procedure TfrmMasterStock.cxGridDBTableView1DblClick(Sender: TObject);
begin
  //btnEditProdClick(sender);
  getWarehouseLots(cdsWarehouseProds.fieldbyname('STKWH0').AsInteger,cdsWarehouseProds.fieldbyname('STKPRD').AsInteger);
  pgWarehouseProduct.ActivePage := TabWarehouseProductLots;
end;

procedure TfrmMasterStock.getWarehouseLots(wh0code,prodCode: integer);
var strsql:string;
begin
  strsql :=
 ' select '+
 '   b.WH0CDE,b.WH0NAM,c.PACCDE,c.PACNAM,c.PACRAT,d.UNINAM,e.PRDCDE,e.PRDNAE,e.PRDNAT,a.* '+
 ' from ICMTTSTL a '+
 ' left join ICMTTWH0 b on a.STLWH0=b.WH0COD '+
 ' left join ICMTTPAC c on a.STLPAC=c.PACCOD '+
 ' left join ICMTTUNI d on a.STLUNI=d.UNICOD '+
 ' left join ICMTTPRD e on a.STLPRD=e.PRDCOD '+
 ' where a.STLWH0='+IntToStr(wh0code)+' and a.STLPRD='+IntToStr(prodCode)+' and '+getSqlCompanyCondition('a.',DLLParameter)+' order by STLCOD ';

  //InputBox('','',strsql);


  cdsWarehouseLots.Data := GetDataSet(strsql);
  TDateField(cdsWarehouseLots.FieldByName('STLEXP')).DisplayFormat:='dd-MM-yyyy';
  TCurrencyField(cdsWarehouseLots.FieldByName('STLQTY')).DisplayFormat:='#,##0';
end;

procedure TfrmMasterStock.grdWarehousesDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterStock.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterStock.cxGridDBTableView4CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=$00004DEC;//GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterStock.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterStock.cxGridDBTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMasterStock.grdItemNOGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
  AText := IntToStr(ARecordIndex+1);
end;

procedure TfrmMasterStock.grdItemLotsNoGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
AText := IntToStr(ARecordIndex+1);
end;

procedure TfrmMasterStock.grdWarehousesDBTableView1DblClick(
  Sender: TObject);
begin
  pgWarehouseProduct.ActivePage := TabWarehouseProducts;
end;

procedure TfrmMasterStock.cxGridDBTableView1CustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
      ACanvas.Font.Style:=[fsBold];
end;

procedure TfrmMasterStock.cxGridDBTableView4CustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
      ACanvas.Font.Style:=[fsBold];
end;

procedure TfrmMasterStock.getDepartmentProds(wh1code: integer);
var strsql:string;
begin
  strsql :=
 ' select '+
 '   b.WH1CDE,b.WH1NAM,c.PACCDE,c.PACNAM,c.PACRAT,d.UNINAM,e.PRDCDE,e.PRDNAE,e.PRDNAT,a.* '+
 ' from ICMTTSTK a '+
 ' left join ICMTTWH1 b on a.STKWH1=b.WH1COD '+
 ' left join ICMTTPAC c on a.STKPAC=c.PACCOD '+
 ' left join ICMTTUNI d on a.STKUNI=d.UNICOD '+
 ' left join ICMTTPRD e on a.STKPRD=e.PRDCOD '+
 ' where a.STKWH1='+IntToStr(wh1code)+' and '+getSqlCompanyCondition('a.',DLLParameter)+' order by STKCOD ';

//  cdsWarehouseProds.Data := GetDataSet('select * from ICMTTSTK where STKWH0='+IntToStr(wh0code)+' and '+getSqlCompanyCondition(DLLParameter)+' order by STKCOD');
  cdsSubStockProds.Data := GetDataSet(strsql);
  TCurrencyField(cdsSubStockProds.FieldByName('STKQTY')).DisplayFormat:='#,##0';
end;

procedure TfrmMasterStock.cdsSubStocksAfterScroll(DataSet: TDataSet);
begin
  getDepartmentProds(DataSet.fieldbyname('WH1COD').AsInteger);
end;

procedure TfrmMasterStock.cxGridDBTableView3DblClick(Sender: TObject);
begin
  getDepartmentLots(cdsSubStockProds.fieldbyname('STKWH1').AsInteger,cdsSubStockProds.fieldbyname('STKPRD').AsInteger);
  pgDepartmentProducts.ActivePage := TabDepartmentProductLots;
end;

procedure TfrmMasterStock.getDepartmentLots(wh1code, prodCode: integer);
var strsql:string;
begin
  strsql :=
 ' select '+
 '   b.WH0CDE,b.WH0NAM,c.PACCDE,c.PACNAM,c.PACRAT,d.UNINAM,e.PRDCDE,e.PRDNAE,e.PRDNAT,a.* '+
 ' from ICMTTSTL a '+
 ' left join ICMTTWH0 b on a.STLWH0=b.WH0COD '+
 ' left join ICMTTPAC c on a.STLPAC=c.PACCOD '+
 ' left join ICMTTUNI d on a.STLUNI=d.UNICOD '+
 ' left join ICMTTPRD e on a.STLPRD=e.PRDCOD '+
 ' where a.STLWH1='+IntToStr(wh1code)+' and a.STLPRD='+IntToStr(prodCode)+' and '+getSqlCompanyCondition('a.',DLLParameter)+' order by STLCOD ';

  //InputBox('','',strsql);


  cdsSubStockLots.Data := GetDataSet(strsql);
  TDateField(cdsSubStockLots.FieldByName('STLEXP')).DisplayFormat:='dd-MM-yyyy';
  TCurrencyField(cdsSubStockLots.FieldByName('STLQTY')).DisplayFormat:='#,##0';
end;

procedure TfrmMasterStock.cxGridDBColumn8GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 atext := inttostr(ARecord.Index+1);
end;

end.
