unit EditPositionFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel,CommonLIB;

type
  TfrmEditPosition = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsPosition: TClientDataSet;
    dsPosition: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPositionCode: integer;
    FAppParameter: TDLLParameter;
    procedure SetPositionCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property PositionCode : integer read FPositionCode write SetPositionCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditPosition: TfrmEditPosition;

implementation

uses CdeLIB, STDLIB;

{$R *.dfm}

{ TfrmEditPosition }

procedure TfrmEditPosition.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

procedure TfrmEditPosition.SetPositionCode(const Value: integer);
begin
  FPositionCode := Value;
  cdsPosition.Data :=GetDataSet('select * from ICMTTPOS where POSCOD='+IntToStr(FPositionCode));
end;

procedure TfrmEditPosition.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditPosition.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin

  if cdsPosition.State in [dsinsert] then
  begin
    IsNew := true;
    cdsPosition.FieldByName('POSCOD').AsInteger :=getCdeRun('SETTING','RUNNING','POSCOD','CDENM1');
    cdsPosition.FieldByName('POSCDE').AsString :=FormatCurr('000',cdsPosition.FieldByName('POSCOD').AsInteger);
    if cdsPosition.FieldByName('POSACT').IsNull then
        cdsPosition.FieldByName('POSACT').AsString:='A';

    setEntryUSRDT(cdsPosition,FAppParameter.UserID);
    setSystemCMP(cdsPosition,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if cdsPosition.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsPosition,FAppParameter.UserID);



  if cdsPosition.State in [dsedit,dsinsert] then cdsPosition.Post;
  if cdsPosition.ChangeCount>0 then
  begin
    UpdateDataset(cdsPosition,'select * from ICMTTPOS where POSCOD='+IntToStr(FPositionCode)) ;
    if IsNew then
      setCdeRun('SETTING','RUNNING','POSCOD','CDENM1');

  end;

   FPositionCode:= cdsPosition.FieldByName('POSCOD').AsInteger;
   Close;
end;


procedure TfrmEditPosition.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;

end.
