unit EditSupplierFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditSupplier = class(TForm)
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
    cdsSupplier: TClientDataSet;
    dsSupplier: TDataSource;
    RzLabel4: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel7: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
  private
    FSupplierCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetAppParameter(const Value: TDLLParameter);
    procedure SetSupplierCode(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property SupplierCode : integer  read FSupplierCode write SetSupplierCode;
    property AppParameter : TDLLParameter  read FAppParameter write SetAppParameter;
  end;

var
  frmEditSupplier: TfrmEditSupplier;

implementation

{$R *.dfm}

uses CdeLIB, STDLIB;

{ TfrmEditSupplier }

procedure TfrmEditSupplier.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditSupplier.SetSupplierCode(const Value: integer);
begin
  FSupplierCode := Value;
  cdsSupplier.Data :=GetDataSet('select * from ICMTTSUP where SUPCOD='+IntToStr(FSupplierCode));  
end;

procedure TfrmEditSupplier.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin
  IsNew := false;


  if cdsSupplier.State in [dsinsert] then
  begin
    IsNew := true;
    cdsSupplier.FieldByName('SUPCOD').AsInteger :=getCdeRun('SETTING','RUNNING','SUPCOD','CDENM1');
    if cdsSupplier.FieldByName('SUPACT').IsNull then
        cdsSupplier.FieldByName('SUPACT').AsString:='A';

    setEntryUSRDT(cdsSupplier,FAppParameter.UserID);
    setSystemCMP(cdsSupplier,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsSupplier.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsSupplier,FAppParameter.UserID);



  if cdsSupplier.State in [dsedit,dsinsert] then cdsSupplier.Post;
  if cdsSupplier.ChangeCount>0 then
  begin
    UpdateDataset(cdsSupplier,'select * from ICMTTSUP where SUPCOD='+IntToStr(FSupplierCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','SUPCOD','CDENM1');

  end;

   FSupplierCode:= cdsSupplier.FieldByName('SUPCOD').AsInteger;
   Close;
end;

procedure TfrmEditSupplier.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

procedure TfrmEditSupplier.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
