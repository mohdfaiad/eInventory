unit uDbPatcher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,//SiAuto,SmartInspect,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, MyAccess, DBClient,JvVersionInfo,
  ExtCtrls;

type

  TDbPatch = class(TObject)
  private
    FSql: string;
    FVersionNo: string;
    FBuildNo: integer;
    FActive: string;
  public
    constructor Create(const VersionNo: string; const BuildNo: integer; Active:
      string; const SqlScript: string);
    property VersionNo: string read FVersionNo write FVersionNo;
    property BuildNo: integer read FBuildNo write FBuildNo;
    property Sql: string read FSql write FSql;
    property Active: string read FActive write FActive;
  end;



  TfrmDbPatcher = class(TForm)
    MemoInfo: TMemo;
    btnExecutePath: TButton;
    MyConnection1: TMyConnection;
    MyQuery: TMyQuery;
    ClientDataSet1: TClientDataSet;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure btnExecutePathClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FAllowPatch , FAllowClose : boolean;
    FIsNewVersion: boolean;
    procedure SetIsNewVersion(const Value: boolean);
    function NewVersion : boolean;
    { Private declarations }
  public
    { Public declarations }
    PatchList : Tstringlist;

    procedure initPatchList();
    procedure initialVersion();
    property IsNewVersion : boolean read NewVersion ;

  end;

const patch_len=9;
      maxTimer=10;

var
  frmDbPatcher: TfrmDbPatcher;
  SQLPatchList : array of TDbPatch;
  ContinueCount:integer;

implementation

uses STDLIB, CommonLIB;



{$R *.dfm}

{ TStockDbPatcherForm }

function CheckNewVersion(CurrVersion,
  NewVersion: string): boolean;
var i,k:integer;
    ss:string;
    isNewVersion:boolean;
    _V1,_V2:array[1..4] of Integer;


const     _maxVClass=4;
begin
    result:=false;

     NewVersion:=trim(NewVersion);
     k:=1;
     ss:='';
     for i:=1 to length(NewVersion) do begin
        if (NewVersion[i]<>'.') then begin
            ss:=ss+NewVersion[i];
        end else begin
            _V2[k]:=StrToInt(ss);
            ss:='';
            inc(k);
        end;

        if i=length(NewVersion) then
          _V2[4]:=StrToInt(ss);

     end;

    // version 1 self
     CurrVersion:=trim(CurrVersion);
     k:=1;
     ss:='';
     for i:=1 to length(CurrVersion) do begin
        if (CurrVersion[i]<>'.') then begin
            ss:=ss+CurrVersion[i];
        end else begin
            _V1[k]:=StrToInt(ss);
            ss:='';
            inc(k);
        end;

        if i=length(CurrVersion) then
          _V1[4]:=StrToInt(ss);

     end;

     for k:=1 to _maxVClass do begin
        if _V2[k]>_V1[k] then
        begin
            isNewVersion:=true;
             result:=isNewVersion;
            Exit;
        end;
     end;


     result:=isNewVersion;
end;


procedure TfrmDbPatcher.btnExecutePathClick(Sender: TObject);
begin
   //initialVersion;

  if FAllowClose then close
  else begin
   Timer1.Enabled:=false;
  // initPatchList;
   initialVersion;
  end;

end;

function TfrmDbPatcher.NewVersion: boolean;
var
  currentDbName : string;
  TempCds,cdsGetDBName : TClientDataSet;
  tfv : TJvVersionInfo;
  i:integer;
  rep : boolean;
begin
  try
    // check for allow pather;
    //Si.Enabled := true;

    rep := true;


    tfv := TJvVersionInfo.Create(application.exename);
    TempCds := TClientDataSet.Create(nil);
    cdsGetDBName :=TClientDataSet.Create(nil);

      ExecuteSQL(
        ' CREATE TABLE IF NOT EXISTS ICSTTVER (    '+
        '  VERVNO VARCHAR(100)   NOT NULL,   '+
        '  VERBNO INT,   '+
        '  VERCDE VARCHAR(100)  NULL,VERNAM VARCHAR(100)  NULL,VERLICENSE TEXT NULL DEFAULT NULL,PRIMARY KEY (VERVNO)    '+
        ' )       '+
        ' COLLATE=''tis620_thai_ci'' '+
        ' ENGINE=InnoDB ');


    cdsGetDBName.data :=GetDataSet('select DATABASE() as DBNAME');
    currentDbName := cdsGetDBName.fieldbyname('DBNAME').AsString;

    TempCds.data := GetDataSet('select count(*)  as n from information_schema.`TABLES` where table_name=''ICMTTVER'' and table_schema='''+currentDbName+'''');

    rep :=TempCds.RecordCount<=0;

    if TempCds.RecordCount>0 then
      if TempCds.FieldByName('n').IsNull then   rep := true;

    //SiMain.LogMessage('DBPATCHER: Check Current System Version ###');
    TempCds.Data := GetDataSet('select * from ICSTTVER');
    if TempCds.Active then
      if TempCds.RecordCount>0 then
      begin
        // check version
        if not (TempCds.FieldByName('VERVNO').IsNull) then
          if trim(TempCds.FieldByName('VERVNO').AsString)<>'' then
          begin
            //SiMain.LogMessage('DBPATCHER: Check Is NewVersion');
            rep := CheckNewVersion(TempCds.FieldByName('VERVNO').AsString,tfv.FileVersion)   ;
          end
          else rep :=true;
      end else rep := true;

      {if rep then
        SiMain.LogMessage('DBPATCHER: Found NewVersion!!!')
      else
        SiMain.LogMessage('DBPATCHER: Not A NewVersion!!!');
        }

      result := rep;
  finally
    TempCds.free;
    tfv.free;
  end;
end;

procedure TfrmDbPatcher.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
      for I := 0 to patch_len-1 do
       freeandnil(SQLPatchList[i]);
end;

procedure TfrmDbPatcher.FormCreate(Sender: TObject);
begin
 {
  MyConnection1.Server    := getzconnection.HostName;
  MyConnection1.database  := getzconnection.database;
  MyConnection1.username  := getzconnection.user;
  MyConnection1.password  := getzconnection.password;
 }
  initPatchList;
end;

procedure TfrmDbPatcher.FormShow(Sender: TObject);
begin

  FAllowPatch := false;
  MemoInfo.Lines.Clear;
  ContinueCount:=maxTimer;
  FAllowClose:=false;

//  initPatchList;
  Timer1.Enabled := true;

  
end;

procedure TfrmDbPatcher.initialVersion;
var
  currentDbName : string;
  TempCds,cdsGetDBName : TClientDataSet;
  tv : TJvVersionInfo;
  i:integer;
  currVersion : string;
  rep : boolean;
begin
  try
    // check for allow pather;
    //Si.Enabled := true;

    btnExecutePath.Enabled:=false;
    tv := TJvVersionInfo.Create(application.exename);
    TempCds := TClientDataSet.Create(nil);
    cdsGetDBName :=TClientDataSet.Create(nil);

      ExecuteSQL(
        ' CREATE TABLE IF NOT EXISTS ICSTTVER (    '+
        '  VERVNO VARCHAR(100)   NOT NULL,   '+
        '  VERBNO INT,   '+
        '  VERCDE VARCHAR(100)  NULL,VERNAM VARCHAR(100)  NULL,VERLICENSE TEXT NULL DEFAULT NULL,PRIMARY KEY (VERVNO)    '+
        ' )       '+
        ' COLLATE=''tis620_thai_ci'' '+
        ' ENGINE=InnoDB ');


    cdsGetDBName.data :=GetDataSet('select DATABASE() as DBNAME');
    currentDbName := cdsGetDBName.fieldbyname('DBNAME').AsString;

    TempCds.data := GetDataSet('select count(*)  as n from information_schema.`TABLES` where table_name=''ICMTTVER'' and table_schema='''+currentDbName+'''');

    rep :=TempCds.RecordCount<=0;

    if TempCds.RecordCount>0 then
      if TempCds.FieldByName('n').IsNull then   rep := true;



    //SiMain.LogMessage('DBPATCHER: Check Current System Version');
    TempCds.Data := GetDataSet('select * from ICSTTVER limit 1');
    if TempCds.Active then
      if TempCds.RecordCount>0 then
      begin
        // check version
        if not TempCds.FieldByName('VERVNO').IsNull then
        begin
          if CheckNewVersion(TempCds.FieldByName('VERVNO').AsString,tv.FileVersion) then
          begin
              currVersion :=  TempCds.FieldByName('VERVNO').AsString;
              // update db version
              if not (TempCds.State in [dsEdit,dsInsert]) then TempCds.Edit;
              TempCds.FieldByName('VERVNO').AsString:=tv.FileVersion;
              TempCds.FieldByName('VERBNO').AsInteger:=0;
              TempCds.Post;

          end;
        end;

      end else
      begin
        // post new version
        //SiMain.LogMessage('DBPATCHER: Post New System Version');
        if not (TempCds.State in [dsEdit,dsInsert]) then TempCds.Append;
        TempCds.FieldByName('VERVNO').AsString:=tv.FileVersion;
        TempCds.FieldByName('VERBNO').AsInteger:=0;
        TempCds.Post;

        currVersion:='';
      end;


      if TempCds.ChangeCount>0 then
        UpdateDataset(TempCds,'select * from ICSTTVER');


      if trim(currVersion)='' then currVersion:='0.0.0.0';

      // do patch here
      //SiMain.LogMessage('DBPATCHER: Starting Patch...');
      for I := 0 to patch_len-1 do
      if SQLPatchList[i].Active='A' then
      begin
        if CheckNewVersion(currVersion,SQLPatchList[i].VersionNo) then
        begin

          try

            // update build no
            TempCds.Data := GetDataSet('select * from ICSTTVER');
            if TempCds.Active then
            begin
              if TempCds.RecordCount>0 then
              begin
                if not (TempCds.State in [dsEdit,dsInsert]) then TempCds.Edit;
                TempCds.FieldByName('VERBNO').AsInteger:=SQLPatchList[i].BuildNo;
                TempCds.FieldByName('VERCDE').asstring:=_VersionCode;
                TempCds.FieldByName('VERNAM').asstring:=_VersionName;
                TempCds.Post;
                if TempCds.ChangeCount>0 then
                  UpdateDataset(TempCds,'select * from ICSTTVER');
              end

            end;

            // execute sql path
            ExecuteSQL(SQLPatchList[i].Sql);
            MemoInfo.Lines.Add(SQLPatchList[i].Sql);

          except
            on ee:Exception do
              MemoInfo.Lines.Add(trim(ee.Message));
          end;
        end;
      end;



      FAllowClose := true;
      btnExecutePath.Caption:='Close';

      

  finally
    btnExecutePath.Enabled:=true;
    TempCds.free;
    tv.free;
  end;
end;

procedure TfrmDbPatcher.initPatchList;
begin
  SetLength(SQLPatchList,patch_len);
  SQLPatchList[0] := TDbPatch.Create('0.57.1.4',1,'A',
  ' ALTER TABLE `ICMTTCSH`  '+
	' ADD COLUMN `CSHFAX` VARCHAR(100) NULL DEFAULT NULL COMMENT ''Fax'' AFTER `CSHPHO`, '+
	' ADD COLUMN `CSHMAI` VARCHAR(100) NULL DEFAULT NULL COMMENT ''Mail'' AFTER `CSHFAX` '
  );
  SQLPatchList[1] := TDbPatch.Create('0.57.1.5',2,'A',
 ' CREATE TABLE IF NOT EXISTS `ICMTTROL` ( '+
 ' 	`ROLACT` VARCHAR(1) NULL DEFAULT ''A'' COMMENT ''A=Active , I = In Active'', '+
 ' 	`ROLCOD` INT(11) NOT NULL COMMENT ''Role Code'', '+
 ' 	`ROLNAM` VARCHAR(200) NULL DEFAULT NULL COMMENT ''Role Name'', '+
 ' 	`ROLDES` TEXT NULL, '+
 ' 	`CMPCOD` VARCHAR(5) NULL DEFAULT NULL, '+
 ' 	`CMPBRN` VARCHAR(5) NULL DEFAULT NULL, '+
 ' 	`CMPDEP` VARCHAR(5) NULL DEFAULT NULL, '+
 ' 	`CMPSEC` VARCHAR(5) NULL DEFAULT NULL, '+
 ' 	`ENTUSR` VARCHAR(30) NULL DEFAULT NULL, '+
 ' 	`ENTDTE` DATETIME NULL DEFAULT NULL, '+
 ' 	`EDTUSR` VARCHAR(30) NULL DEFAULT NULL, '+
 ' 	`EDTDTE` DATETIME NULL DEFAULT NULL, '+
 ' 	PRIMARY KEY (`ROLCOD`) '+
 ' ) '+
 ' COMMENT=''User Role'' '+
 ' COLLATE=''tis620_thai_ci'' '+
 ' ENGINE=InnoDB '
  );
  SQLPatchList[2] := TDbPatch.Create('0.57.1.5',2,'A',
 ' CREATE TABLE IF NOT EXISTS `ICMTTRPM` ( '+
 ' 	`PERCOD` INT(10) NOT NULL, '+
 ' 	`PERRCO` INT(10) NOT NULL, '+
 ' 	`PERMNU` INT(10) NOT NULL, '+
 ' 	`PERENT` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PEREDI` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERDEL` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERCAN` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERAPP` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO01` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO02` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO03` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO04` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO05` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO06` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO07` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO08` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO09` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	`PERO10` VARCHAR(1) NULL DEFAULT NULL, '+
 ' 	PRIMARY KEY (`PERCOD`, `PERRCO`, `PERMNU`) '+
 ' ) '+
 ' COMMENT=''Role Permission'' '+
 ' COLLATE=''tis620_thai_ci'' '+
 ' ENGINE=InnoDB '
  );


  SQLPatchList[3] := TDbPatch.Create('0.57.1.6',3,'A',
    'ALTER TABLE `ICMTTPRD` ADD COLUMN `PRDSER` VARCHAR(100) NULL DEFAULT NULL AFTER `PRDCDE`'
  );


  SQLPatchList[4] := TDbPatch.Create('0.57.3.29',4,'A',
    'ALTER TABLE `ICMTTPOH` CHANGE COLUMN `POHRMK` `POHRMK` TEXT NULL COMMENT ''Remark'' AFTER `POHREV`'
  );

  SQLPatchList[5] := TDbPatch.Create('0.57.6.1',5,'A',
   'ALTER TABLE `AppReport` ADD COLUMN `RPTGROUP` VARCHAR(10) NULL DEFAULT NULL AFTER `UNID`'
  );

  SQLPatchList[6] := TDbPatch.Create('0.57.6.1',6,'A',
   'UPDATE `AppReport` set RPTGROUP=''00'' '
  );


  SQLPatchList[7] := TDbPatch.Create('0.57.6.21',7,'A',
  '  CREATE TABLE IF NOT EXISTS `ICMTTUSR` (    '+
  '    `USRACT` VARCHAR(1) NULL DEFAULT ''A'' COMMENT ''A=Active , I = In Active'', '+
  '    `USRCOD` INT(11) NOT NULL COMMENT ''User ID (UID)'', '+
  '    `USRCDE` VARCHAR(30) NULL DEFAULT NULL COMMENT ''UserName'', '+
  '    `USRSEQ` INT(11) NULL DEFAULT NULL COMMENT ''Sequence'','+
  '    `USRNAM` VARCHAR(200) NULL DEFAULT NULL COMMENT ''Fullname'','+
  '    `USRPWD` VARCHAR(255) NULL DEFAULT NULL COMMENT ''Password'',  '+
  '    `USRRHA` VARCHAR(255) NULL DEFAULT NULL COMMENT ''Record Hash USRCOD+USRCDE+USRPWD(decrypted)'',     '+
  '    `CMPCOD` VARCHAR(5) NULL DEFAULT NULL,  '+
  '    `CMPBRN` VARCHAR(5) NULL DEFAULT NULL,  '+
  '    `CMPDEP` VARCHAR(5) NULL DEFAULT NULL, '+
  '    `CMPSEC` VARCHAR(5) NULL DEFAULT NULL,  '+
  '    `ENTUSR` VARCHAR(30) NULL DEFAULT NULL, '+
  '    `ENTDTE` DATETIME NULL DEFAULT NULL,    '+
  '    `EDTUSR` VARCHAR(30) NULL DEFAULT NULL,  '+
  '    `EDTDTE` DATETIME NULL DEFAULT NULL,   '+
  '    PRIMARY KEY (`USRCOD`)   '+
  '  )  '+
  '  COLLATE=''tis620_thai_ci'' '+
  '  ENGINE=InnoDB '
  );

  SQLPatchList[8] := TDbPatch.Create('0.57.6.22',8,'A',
    'ALTER TABLE `ICMTTPOH` ADD COLUMN `POHAM0` DECIMAL(18,4) NULL DEFAULT NULL AFTER `POHQTY`'
  );




  {
  SQLPatchList[1] := TDbPatch.Create('3.6.9.13',13,'A',
        ' CREATE TABLE if not exists `stock_permission` (    '
      +' `stock_permission_id` INT(11) NOT NULL,    '
      +' `stock_permission_role_id` INT(11) NOT NULL,   '
      +' `stock_right_id` INT(11) NOT NULL,   '
      +' `stock_permission_type_id` INT(11) NOT NULL, '
      +' `stock_permission_entry` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_edit` VARCHAR(1) NULL DEFAULT NULL, '
      +' `stock_permission_delete` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_cancel` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_approve` VARCHAR(1) NULL DEFAULT NULL,   '
      +' `stock_permission_option_1` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_2` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_3` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_4` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_5` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_6` VARCHAR(1) NULL DEFAULT NULL,   '
      +' `stock_permission_option_7` VARCHAR(1) NULL DEFAULT NULL,   '
      +' `stock_permission_option_8` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_9` VARCHAR(1) NULL DEFAULT NULL,  '
      +' `stock_permission_option_10` VARCHAR(1) NULL DEFAULT NULL  '
    +' )          '
    +' COLLATE=tis620_thai_ci '
    +' ENGINE=InnoDB; ');




  SQLPatchList[2] := TDbPatch.Create('3.6.9.13',13,'A','DROP TABLE IF EXISTS `stock_right`;');
  SQLPatchList[3] := TDbPatch.Create('3.6.9.13',13,'A',
   '  CREATE TABLE IF NOT EXISTS `stock_right` (   '
   +'    `stock_right_id` int(11) NOT NULL, '
   +'    `stock_right_group` int(11) DEFAULT NULL, '
   +'    `stock_right_name` varchar(250) NOT NULL,  '
   +'    `hos_guid` varchar(38) DEFAULT NULL,    '
   +'    PRIMARY KEY (`stock_right_id`),   '
   +'    KEY `ix_hos_guid` (`hos_guid`)  '
   +'  ) COLLATE=tis620_thai_ci ENGINE=InnoDB; ');


  SQLPatchList[4] := TDbPatch.Create('3.6.9.13',13,'A',
   '   INSERT INTO `stock_right` (`stock_right_id`, `stock_right_group`, `stock_right_name`, `hos_guid`) VALUES      '
   +'     (1, 1, ''��Ἱ�Ѵ����'', NULL),  '
   +'     (2, 1, ''㺢ͫ��� (PR)'', NULL),   '
   +'     (3, 1, ''�Ѵ���� - �Ѻ�Թ���'', NULL), '
   +'     (4, 1, ''��Ǩ�ͺ - ���觫���'', NULL),  '
   +'     (5, 1, ''��è�����'', NULL),   '
   +'     (6, 2, ''�Թ���㹤�ѧ'', NULL), '
   +'     (7, 2, ''�͹�Թ���'', NULL),   '
   +'     (8, 2, ''��Ѻ�ʹ��ѧ'', NULL), '
   +'     (9, 2, ''��Ǩ�Ѻ�Թ���㹤�ѧ'', NULL),   '
   +'     (10, 2, ''�Ѵ��ҧ�����Թ���'', NULL),  '
   +'     (11, 2, ''���ԡ�����ҧ��ѧ�˭�'', NULL),  '
   +'     (12, 3, ''�Թ���㹤�ѧ����'', NULL),  '
   +'     (13, 3, ''�Ѵ�����Թ���'', NULL),    '
   +'     (14, 3, ''��Ѻ�ʹ˹��¨���'', NULL),   '
   +'     (15, 3, ''�͹�Թ���㹤�ѧ����'', NULL), '
   +'     (16, 3, ''���ԡ�Թ��Ҩҡ��ѧ����'', NULL),  '
   +'     (17, 3, ''�ԡ�Թ��Ҩҡ��ѧ�˭�'', NULL),  '
   +'     (18, 4, ''�ѹ�Թ�����Ҥ�ѧ(�����)'', NULL), '
   +'     (19, 4, ''�Ѻ�Թ�����Ҥ�ѧ / �Ѵ��Ҥ�ѧ����(�����)'', NULL),   '
   +'     (20, 4, ''�Ѵ���������Ҥ�ѧ'', NULL),    '
   +'     (21, 5, ''��ѧ'', NULL),              '
   +'     (22, 5, ''��¡�ä�ѧ����'', NULL),    '
   +'     (23, 5, ''��¡��˹����Թ���'', NULL),  '
   +'     (24, 5, ''��������¡�ä�ѧ'', NULL),  '
   +'     (25, 5, ''�������¡��'', NULL),      '
   +'     (26, 5, ''��¡���Թ���'', NULL),      '
   +'     (27, 5, ''����ѷ����Ե'', NULL),      '
   +'    (28, 5, ''����ѷ���᷹��˹���'', NULL),   '
   +'     (29, 5, ''�������Թ�Ѵ����'', NULL),   '
   +'     (30, 5, ''��Դ��èѴ����'', NULL),     '
   +'     (31, 5, ''��èѴ��������'', NULL),     '
   +'     (32, 5, ''�����ç���'', NULL),        '
   +'     (33, 5, ''���͡�����õ�Ǩ�ͺ'', NULL),  '
   +'     (34, 5, ''���˹觡������'', NULL),    '
   +'     (35, 5, ''��¡�á������'', NULL),    '
   +'     (36, 5, ''��駧�����ҳ'', NULL),      '
   +'     (37, 5, ''��˹��Ţ����͡���'', NULL),   '
   +'     (38, 5, ''��˹���� ABC'', NULL),   '
   +'     (39, 6, ''��§ҹ'', NULL),            '
   +'     (40, 6, ''Inventory Summary'', NULL),  '
   +'     (41, 6, ''��ػ�ʹ����ѧ'', NULL),     '
   +'     (42, 6, ''��§ҹ�����觫����Թ���'', NULL), '
   +'     (43, 6, ''�ͺ�������ѵԡ�ë���'', NULL),   '
   +'     (44, 6, ''��§ҹ����ԡ�Թ���'', NULL),    '
   +'     (45, 6, ''�ͺ����Թ��ҷ���������'', NULL),  '
   +'     (46, 6, ''��§ҹʶԵԡ���Ѻ/�����Թ��� ��ѧ�˭�'', NULL),  '
   +'     (47, 6, ''��§ҹʶԵԡ���Ѻ/�����Թ��� ��ѧ����'', NULL),   '
   +'     (48, 7, ''Custom Report'', NULL),     '
   +'     (49, 7, ''Report Designer'', NULL), '
   +'     (50, 7, ''GPO-VMI Report'', NULL),   '
   +'     (51, 8, ''SQL Query'', NULL),        '
   +'     (52, 8, ''Show SQL Trace'', NULL),    '
   +'     (53, 8, ''Stock Uitl'', NULL),        '
   +'     (54, 9, ''MySQL Monitor'', NULL),      '
   +'     (55, 9, ''Query Builder'', NULL),      '
   +'     (56, 10, ''Check New Version'', NULL),  '
   +'     (57, 10, ''Upgrade stucture'', NULL),   '
   +'     (58, 10, ''Store Procedure Manager'', NULL), '
   +'     (59, 10, ''Backup'', NULL),       '
   +'     (60, 10, ''Restore'', NULL),     '
   +'     (61, 10, ''��駤�ҡ����ҹ�к�'', NULL),  '
   +'     (62, 11, ''User Manager'', NULL),     '
   +'     (63, 11, ''User Permission'', NULL); '
      );



  SQLPatchList[5] := TDbPatch.Create('3.6.9.13',13,'A','ALTER TABLE stock_request ADD COLUMN `budget_runno` INT NULL ;');
  SQLPatchList[6] := TDbPatch.Create('3.6.9.13',13,'A','ALTER TABLE stock_budget ADD COLUMN `stock_budget_yrrun` INT(11) NULL DEFAULT NULL;');
  SQLPatchList[7] := TDbPatch.Create('3.6.9.13',13,'A','ALTER TABLE stock_budget ADD COLUMN `stock_budget_runno` INT(11) NULL DEFAULT NULL;');
  SQLPatchList[8] := TDbPatch.Create('3.6.9.13',13,'A','alter table stock_user add column `stock_user_role_id` INT(11) NOT NULL;');
  SQLPatchList[9] := TDbPatch.Create('3.6.9.13',13,'A','alter table stock_request add column `request_all_complete` CHAR(1) NULL DEFAULT NULL;');
  SQLPatchList[10] := TDbPatch.Create('3.6.9.13',13,'A','alter table stock_po add `significant_number` VARCHAR(50) NULL DEFAULT NULL;');
  SQLPatchList[11] := TDbPatch.Create('3.6.9.13',13,'A',
    'ALTER TABLE `stock_manual_head` ADD COLUMN `transaction_datetime` DATETIME NULL ;'
    +'update stock_manual_head set transaction_datetime = ADDDATE(curdate(),-1);');
  SQLPatchList[12] := TDbPatch.Create('3.6.9.19',19,'A','ALTER TABLE `stock_subcard` ADD COLUMN	`totalqty` INT(11) NULL DEFAULT NULL;');
  SQLPatchList[13] := TDbPatch.Create('3.6.9.19',19,'A','ALTER TABLE `stock_subcard` ADD COLUMN	`left_price` DOUBLE(22,3) NULL DEFAULT NULL;');
  SQLPatchList[14] := TDbPatch.Create('3.6.9.19',19,'A','ALTER TABLE `stock_request` ADD COLUMN	`approve` VARCHAR(1) NULL DEFAULT NULL;');
  SQLPatchList[15] := TDbPatch.Create('3.6.9.27',27,'A',
     ' CREATE TABLE IF NOT EXISTS `stock_po_creditor` (          '+
     '   `stock_po_creditor_id` int(11) NOT NULL,  '+
     '   `stock_po_id` int(11) NOT NULL,            '+
     '   `creditor_date` date DEFAULT NULL,         '+
     '   `creditor_document_no` varchar(100) DEFAULT NULL,'+
     '   `creditor_amount` double(15,3) DEFAULT NULL,    '+
     '   `payment_date` date DEFAULT NULL,           '+
     '   `stock_po_payment_status_id` int(11) DEFAULT NULL,  '+
     '   `payment_document_no` varchar(100) DEFAULT NULL,   '+
     '   PRIMARY KEY (`stock_po_creditor_id`),        '+
     '   KEY `ix_stock_po_id` (`stock_po_id`)       '+
     ' ) ;                                      '
  );

  SQLPatchList[16] := TDbPatch.Create('3.6.9.27',27,'A',
   ' CREATE TABLE IF NOT EXISTS `stock_po_payment_status` (          '+
   '   `stock_po_payment_status_id` int(11) NOT NULL,    '+
   '   `stock_po_payment_status_name` varchar(200) NOT NULL,   '+
   '   PRIMARY KEY (`stock_po_payment_status_id`),   '+
   '   UNIQUE KEY `stock_po_payment_status_name` (`stock_po_payment_status_name`)  '+
   ' ) ;           '
  );

  }

  {
  SQLPatchList[15] := TDbPatch.Create('3.6.9.21',21,'I',
    'CREATE  TABLE if not exists `stock_config` ( `stock_config_vno` VARCHAR(100) NOT NULL '
    +',`stock_config_bno` INT NULL ,PRIMARY KEY (`stock_config_vno`) )'
    +' DEFAULT CHARACTER SET = tis620 COLLATE = tis620_thai_ci;');
    }
end;

procedure TfrmDbPatcher.SetIsNewVersion(const Value: boolean);
begin
  FIsNewVersion := Value;
end;

procedure TfrmDbPatcher.Timer1Timer(Sender: TObject);
begin
  if not NewVersion then close;
  if ContinueCount>0 then
    Dec(ContinueCount,1);

  btnExecutePath.Caption:='Execute...('+inttostr(ContinueCount)+')';
  if ContinueCount<=0 then
  begin
    btnExecutePath.Caption:='Execute...';
    btnExecutePathClick(sender);
  end;
end;

{ TDbPatch }

constructor TDbPatch.Create(const VersionNo: string;
  const BuildNo: integer; Active: string; const SqlScript: string);
begin
  FVersionNo := VersionNo;
  FBuildNo := BuildNo;
  FSql := SqlScript;
  FActive := Active;
end;

end.
