unit ContractFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, StdCtrls, RzLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, RzPanel, RzButton, ComCtrls, Mask,
  RzEdit, RzDBEdit, DBCtrls, RzDBCmbo;

type
  TfrmContract = class(TForm)
    pnAllClients: TRzPanel;
    rzTopPanel: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    RzLabel23: TRzLabel;
    Button1: TButton;
    cdsAllContracts: TClientDataSet;
    pnRight: TRzPanel;
    pnTop: TRzPanel;
    pnMiddle: TRzPanel;
    btnNew: TRzBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    RzLabel1: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    dsAllContracts: TDataSource;
    cdsContractStatus: TClientDataSet;
    dsContractStatus: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    btnSave: TRzBitBtn;
    btnEdit: TRzBitBtn;
    btnRefresh: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    procedure getContractStatus();
    procedure getContract();
  public
    { Public declarations }

  end;

var
  frmContract: TfrmContract;

implementation

uses STDLIB, CommonLIB, CommonUtils, NewContractFrm, CdeLIB;

{$R *.dfm}

procedure TfrmContract.FormShow(Sender: TObject);
begin
  getContractStatus;
  getContract();
end;

procedure TfrmContract.getContract();
begin
  cdsAllContracts.Data:=GetDataSet('select * from MTTCON00');
end;

procedure TfrmContract.getContractStatus;
begin
  cdsContractStatus.Data := GetDataSet('select * from MTTCDE00 where CDEGRP=''CONTRACT'' and CDEABR=''STATUS'' and CDEACT=''A'' order by CDEITM');
end;

procedure TfrmContract.btnSaveClick(Sender: TObject);
begin
  if cdsAllContracts.State in [dsinsert,dsedit] then cdsAllContracts.Post;


  if cdsAllContracts.ChangeCount>0 then
  begin
    UpdateDataset(cdsAllContracts,'select * from MTTCON00');
    ShowMessage('save successfull.');
  end;
end;

procedure TfrmContract.FormCreate(Sender: TObject);
begin
 SetChildTaborders(pnAllClients);
end;

procedure TfrmContract.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    if not (ActiveControl is TRzButton) then
    begin
      SelectNext(ActiveControl as TWinControl, True, True);
    end;
  End;
end;

procedure TfrmContract.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then btnSaveClick(sender);
  if Key=VK_F3 then btnNewClick(nil);
  if Key=VK_F2 then btnEditClick(sender);

end;

procedure TfrmContract.btnNewClick(Sender: TObject);
var frmNewContract:TfrmNewContract;
begin
  frmNewContract :=TfrmNewContract.Create(Application);
  frmNewContract.ConRun := getCdeFormat(getCdeRun('RUNNO','CONTRACT','RUNNO','CDENM1'));//cdsAllContracts.fieldbyname('CONRUN').AsString;
  frmNewContract.ShowModal;
  if frmNewContract.IsOK then
  begin
    setCdeRun('RUNNO','CONTRACT','RUNNO','CDENM1');
    getContract;
  end;

  frmNewContract.Free;
end;

procedure TfrmContract.btnEditClick(Sender: TObject);
var frmNewContract:TfrmNewContract;
begin
  frmNewContract :=TfrmNewContract.Create(Application);
  frmNewContract.ConRun := cdsAllContracts.fieldbyname('CONRUN').AsString;
  frmNewContract.ShowModal;
  if frmNewContract.IsOK then getContract;
  frmNewContract.Free;
end;

procedure TfrmContract.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  btnEditClick(sender);
end;

procedure TfrmContract.btnRefreshClick(Sender: TObject);
begin
  getContract();
end;

end.
