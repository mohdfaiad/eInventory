unit EditRatePriceFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls,CommonLIB, RzPanel;

type
  TfrmEditRatePrice = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    cdsRatePrice: TClientDataSet;
    dsRatePrice: TDataSource;
    RzLabel4: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FAppParameter: TDLLParameter;
    FRatePriceCode: integer;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetRatePriceCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
    property RatePriceCode:integer read FRatePriceCode write SetRatePriceCode;
  end;

var
  frmEditRatePrice: TfrmEditRatePrice;

implementation

uses STDLIB, STK_LIB, CdeLIB;

{$R *.dfm}

procedure TfrmEditRatePrice.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditRatePrice.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditRatePrice.SetRatePriceCode(const Value: integer);
begin
  FRatePriceCode := Value;
  cdsRatePrice.Data:=GetDataSet('select * from ICMTTRA1 where RA1COD='+IntToStr(FRatePriceCode));
end;

procedure TfrmEditRatePrice.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsRatePrice.State in [dsinsert] then
  begin
    IsNew := true;
    cdsRatePrice.FieldByName('RA1COD').AsInteger :=getCdeRun('SETTING','RUNNING','RA1COD','CDENM1');
    if cdsRatePrice.FieldByName('RA1ACT').IsNull then
        cdsRatePrice.FieldByName('RA1ACT').AsString:='A';

    setEntryUSRDT(cdsRatePrice,FAppParameter.UserID);
    setSystemCMP(cdsRatePrice,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsRatePrice.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsRatePrice,FAppParameter.UserID);



  if cdsRatePrice.State in [dsedit,dsinsert] then cdsRatePrice.Post;
  if cdsRatePrice.ChangeCount>0 then
  begin
    UpdateDataset(cdsRatePrice,'select * from ICMTTRA1 where RA1COD='+IntToStr(FRatePriceCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','RA1COD','CDENM1');

  end;

   FRatePriceCode:= cdsRatePrice.FieldByName('RA1COD').AsInteger;
   Close;
end;


end.
