unit uEditProductUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit,
  RzButton, RzLabel, ExtCtrls, RzPanel, Buttons,CommonLIB;

type
  TfrmEditProductUnit = class(TForm)
    pnAllClients: TRzPanel;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    DBCheckBox1: TDBCheckBox;
    cdsProdUni: TClientDataSet;
    dsProdUni: TDataSource;
    edPrdCode: TRzEdit;
    btnSearchWh: TSpeedButton;
    edPrdName: TRzEdit;
    RzLabel6: TRzLabel;
    edUnitCode: TRzEdit;
    spdSearchUnit: TSpeedButton;
    edUnitName: TRzEdit;
    RzLabel1: TRzLabel;
    edPackingCode: TRzEdit;
    spdSearchPacking: TSpeedButton;
    edPackingName: TRzEdit;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    edPackingRate: TRzEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure spdSearchUnitClick(Sender: TObject);
    procedure spdSearchPackingClick(Sender: TObject);
    procedure edUnitCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPackingCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FProductUnitCode: integer;
    FProductCode: integer;
    FProductPackingCode: integer;
    FPackingRate : integer;
    FAppParameter: TDLLParameter;
    procedure SetProductCode(const Value: integer);
    procedure SetProductPackingCode(const Value: integer);
    procedure SetProductUnitCode(const Value: integer);
    procedure SetAppParameter(const Value: TDLLParameter);
    { Private declarations }
  public
    { Public declarations }
    property ProductCode:integer read FProductCode write SetProductCode;
    property ProductUnitCode : integer read FProductUnitCode write SetProductUnitCode;
    property ProductPackingCode : integer read FProductPackingCode write SetProductPackingCode;
    property AppParameter : TDLLParameter read FAppParameter write SetAppParameter;
  end;

var
  frmEditProductUnit: TfrmEditProductUnit;


implementation

uses  CommonUtils, CdeLIB, STDLIB, STK_LIB;

{$R *.dfm}

{ TfrmEditProductUnit }

procedure TfrmEditProductUnit.SetProductCode(const Value: integer);
begin
  FProductCode := Value;

  edPrdCode.Text := getMTTCDE('PRD',IntToStr(FProductCode));
  edPrdName.Text := getMTTFValue('PRD','PRDNAT',IntToStr(FProductCode));
  cdsProdUni.Data := GetDataSet('select * from ICMTTPRU where PRUPRD='+IntToStr(FProductCode)+' and PRUUNI='+IntToStr(FProductUnitCode)+' and PRUPAC='+IntToStr(FProductPackingCode));
end;

procedure TfrmEditProductUnit.SetProductPackingCode(const Value: integer);
begin
  FProductPackingCode := Value;
  edPackingCode.Text := getMTTCDE('PAC',IntToStr(FProductPackingCode));
  edPackingName.Text := getMTTFValue('PAC','PACNAM',IntToStr(FProductPackingCode));
  edPackingRate.Text := getMTTFValue('PAC','PACRAT',IntToStr(FProductPackingCode));

  if Trim(edPackingRate.Text)='' then
    FPackingRate := 0
  else
    FPackingRate := StrToInt(edPackingRate.Text);
end;

procedure TfrmEditProductUnit.SetProductUnitCode(const Value: integer);
begin
  FProductUnitCode := Value;
  edUnitCode.Text := getMTTCDE('UNI',IntToStr(FProductUnitCode));
  edUnitName.Text := getMTTFValue('UNI','UNINAM',IntToStr(FProductUnitCode));
end;

procedure TfrmEditProductUnit.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditProductUnit.btnSaveClick(Sender: TObject);
var IsNew : boolean;
begin


  if (FProductUnitCode=0)  then
    begin
      Application.MessageBox(pchar('��س��к�˹����Թ������١��ͧ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;

  if (FProductCode=0)  then
    begin
      Application.MessageBox(pchar('��س��к��Թ������١��ͧ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;

  if (FProductPackingCode=0) then
    begin
      Application.MessageBox(pchar('��سҢ�Ҵ��è����١��ͧ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;

  if (FPackingRate=0) then
    begin
      Application.MessageBox(pchar('Packing Rate ���١��ͧ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;
  {
  if (FProductUnitCode=0) or (FProductCode=0) or (FProductPackingCode=0) or (FPackingRate=0) then
    begin
      Application.MessageBox(pchar('��سҵ�Ǩ�ͺ���������١��ͧ!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      Exit;
    end;
    }


  if cdsProdUni.State in [dsinsert] then
  begin
    IsNew := true;
    //cdsProdUni.FieldByName('PRUCOD').AsInteger :=getCdeRun('SETTING','RUNNING','PRUCOD','CDENM1');
    if cdsProdUni.FieldByName('PRUACT').IsNull then
        cdsProdUni.FieldByName('PRUACT').AsString:='A';

    setEntryUSRDT(cdsProdUni,FAppParameter.UserID);
    setSystemCMP(cdsProdUni,FAppParameter.Company,FAppParameter.Branch,FAppParameter.Department,FAppParameter.Section);

  end;

  if not (cdsProdUni.State in [dsedit,dsinsert]) then cdsProdUni.Edit;
  //begin
  //  IsNew := true;


  if cdsProdUni.State in [dsinsert,dsedit] then
    setModifyUSRDT(cdsProdUni,FAppParameter.UserID);


    cdsProdUni.FieldByName('PRUUNI').AsInteger :=FProductUnitCode;
    cdsProdUni.FieldByName('PRUPRD').AsInteger :=FProductCode;
    cdsProdUni.FieldByName('PRUPAC').AsInteger :=FProductPackingCode;
    cdsProdUni.FieldByName('PRUUNA').AsString :=edUnitName.Text;
    cdsProdUni.FieldByName('PRUPNA').AsString :=edPackingName.Text;
    cdsProdUni.FieldByName('PRURAT').AsInteger :=FPackingRate;




  //end;


  if cdsProdUni.State in [dsedit,dsinsert] then cdsProdUni.Post;
  if cdsProdUni.ChangeCount>0 then
  begin
    UpdateDataset(cdsProdUni,'select * from ICMTTPRU where PRUPRD='+IntToStr(FProductCode)+' and PRUUNI='+IntToStr(FProductUnitCode)+' and PRUPAC='+IntToStr(FProductPackingCode)) ;
    //if IsNew then
    //  setCdeRun('SETTING','RUNNING','LOCCOD','CDENM1');
  end;

   Close;
end;

procedure TfrmEditProductUnit.spdSearchUnitClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('UNICOD','����'));
  _SearchType.Add(TStringValue.Create('UNINAM','������'));


  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('UNICOD','����'));
  _Cols.Add(TStringValue.Create('UNINAM','������'));


  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','150'));

  Parameter.SearchTitle:='��ª���˹����Թ���';
  executilsdxInitialize;


  _SQL :=' select UNICOD,UNINAM from ICMTTUNI  where UNIACT=''A'' order by UNICOD ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'UNICOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    ProductUnitCode := StrToInt(_Parameter.SelectCode);
  end;



end;

procedure TfrmEditProductUnit.spdSearchPackingClick(Sender: TObject);
var
  Parameter,_Parameter:TDLLParameter;
  _SearchType,_Cols,_ColsWidth:TList;
  _SQL:string;
begin

  _SearchType:=TList.Create;
  _SearchType.Add(TStringValue.Create('PACCOD','����'));
  _SearchType.Add(TStringValue.Create('PACNAM','���͢�Ҵ��è�'));
  _SearchType.Add(TStringValue.Create('PACRAT','��Ҵ��è�'));


  _Cols:=TList.Create;
  _Cols.Add(TStringValue.Create('PACCOD','����'));
  _Cols.Add(TStringValue.Create('PACNAM','���͢�Ҵ��è�'));
  _Cols.Add(TStringValue.Create('PACRAT','��Ҵ��è�'));


  _ColsWidth:=TList.Create;
  _ColsWidth.Add(TStringValue.Create('1','80'));
  _ColsWidth.Add(TStringValue.Create('2','150'));
  _ColsWidth.Add(TStringValue.Create('3','50'));

  Parameter.SearchTitle:='��ª���˹����Թ���';
  executilsdxInitialize;


  _SQL :=' select PACCOD,PACNAM,PACRAT from ICMTTPAC where PACACT=''A'' and PACUNI='+IntToStr(FProductUnitCode)+' order by PACCOD ';


  SelSearch(Application,swModal,Parameter,_Parameter,_SearchType,_Cols,_ColsWidth,'PACCOD',_SQL);



  if Trim(_Parameter.SelectCode)<>'' then
  begin
    ProductPackingCode := StrToInt(_Parameter.SelectCode);
  end;



end;

procedure TfrmEditProductUnit.edUnitCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edUnitCode.Text)<>'' then
    begin
      if getExistMTTCode('UNI',trim(edUnitCode.Text)) then
      begin
         ProductUnitCode := getMTTCOD('UNI',trim(edUnitCode.Text));
      end
      else
        Application.MessageBox(pchar('��辺˹����Թ��ҵ�ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      spdSearchUnitClick(sender);
  end;
end;

procedure TfrmEditProductUnit.edPackingCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edPackingCode.Text)<>'' then
    begin
      if getExistMTTCode('PAC',trim(edPackingCode.Text)) then
      begin
        ProductPackingCode := getMTTCOD('PAC',trim(edPackingCode.Text));
      end
      else
        Application.MessageBox(pchar('��辺��Ҵ��èط���ͧ��ä��� !!!'),pchar('Warning'), MB_OK or MB_ICONWARNING);
    end else
      spdSearchPackingClick(sender);
  end;
end;

procedure TfrmEditProductUnit.FormCreate(Sender: TObject);
begin
SetChildTaborders(pnAllClients);
end;

procedure TfrmEditProductUnit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton) then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmEditProductUnit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then  btnCancelClick(nil);
  if Key=VK_F11 then  btnSaveClick(nil);
end;


procedure TfrmEditProductUnit.SetAppParameter(const Value: TDLLParameter);
begin
  FAppParameter := Value;
end;

end.
