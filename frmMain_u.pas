unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, iphcore, iphtypes, iphsshell, iphsshclient, iphsftp, AdvEdit,
  WebCopy, Vcl.ExtCtrls, AdvOfficePager, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxDropDownEdit, cxGridCustomTableView, cxGridTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, iniFiles, System.Diagnostics,
  System.TimeSpan, CryptBase, AESObj, Vcl.Menus, ShellApi, WUpdate;

type
  TfrmMain = class(TForm)
    SSHSHELL1: TiphSShell;
    btnShellExec: TButton;
    SSHClient: TiphSSHClient;
    mmo1: TMemo;
    btnCreateScripts: TButton;
    edtZelprivatekey: TAdvEdit;
    edtxid: TAdvEdit;
    edtindex: TAdvEdit;
    edtZelID: TAdvEdit;
    WebCopy1: TWebCopy;
    edtPort: TAdvEdit;
    edtServerIP: TAdvEdit;
    edtroot: TAdvEdit;
    edtrootpw: TAdvEdit;
    edtKDAAdress: TAdvEdit;
    edtKDAChain: TAdvEdit;
    rgtier: TRadioGroup;
    rgAlerts: TRadioGroup;
    edtNodename: TAdvEdit;
    edtUsername: TAdvEdit;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    edtDiscordWebhookURL: TAdvEdit;
    edtDiscordUserID: TAdvEdit;
    edtTelegramBotToken: TAdvEdit;
    edtTelegramChatID: TAdvEdit;
    btnServerLogin: TButton;
    pnl1: TPanel;
    grp1: TGroupBox;
    pnl2: TPanel;
    btnClose: TButton;
    btnreboot: TButton;
    btnSendCommands: TButton;
    edtManualSSH: TAdvEdit;
    btnmanSSH: TButton;
    btnClearLog: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    AdvOfficePager22: TAdvOfficePage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridServerList: TcxGridTableView;
    cxGridServerListColumn1: TcxGridColumn;
    cxGridServerListColumn2: TcxGridColumn;
    cxGridServerListColumn3: TcxGridColumn;
    cxGridServerListColumn4: TcxGridColumn;
    cxGridServerListColumn5: TcxGridColumn;
    cxGridServerListColumn6: TcxGridColumn;
    cxGridServerListColumn7: TcxGridColumn;
    cxGridServerListColumn8: TcxGridColumn;
    cxGridServerListColumn9: TcxGridColumn;
    cxGridServerListColumn10: TcxGridColumn;
    cxGridServerListColumn11: TcxGridColumn;
    btnAccount: TButton;
    btnBenchmark: TButton;
    tmr1: TTimer;
    lblfluxinstallactive: TLabel;
    edtUserpw: TAdvEdit;
    AESEncryption1: TAESEncryption;
    cxGridServerListColumn12: TcxGridColumn;
    cxGridServerListColumn13: TcxGridColumn;
    edtcustombootstrap: TAdvEdit;
    btnrunorgScript: TButton;
    btncancelrun: TButton;
    lblTipAdress: TLabel;
    btnAddToManagement: TButton;
    cxGridServerListColumn14: TcxGridColumn;
    cxGridServerListColumn15: TcxGridColumn;
    cxGridServerListColumn16: TcxGridColumn;
    cxGridServerListColumn17: TcxGridColumn;
    cxGridServerListColumn18: TcxGridColumn;
    pm1: TPopupMenu;
    load1: TMenuItem;
    DashboardOverview1: TMenuItem;
    WebUpdate1: TWebUpdate;
    btnCopyLog: TButton;
    btnClear: TButton;
    OpeninnewApplication1: TMenuItem;
    btnUpdate: TButton;
    saveServerlist1: TMenuItem;
    cxGridServerListColumn19: TcxGridColumn;
    checkstatus1: TMenuItem;
    SFTP1: TiphSFTP;
    procedure btnShellExecClick(Sender: TObject);
    procedure SSHSHELL1Log(Sender: TObject; LogLevel: Integer; const Message,
      LogType: string);
    procedure SSHSHELL1Stdout(Sender: TObject; Text: string; TextB: TArray<System.Byte>);
    procedure SSHSHELL1Error(Sender: TObject; ErrorCode: Integer; const
      Description: string);
    procedure btnCreateScriptsClick(Sender: TObject);
    procedure SSHSFTPLog(Sender: TObject; LogLevel: Integer; const Message,
      LogType: string);
    procedure SSHSFTPError(Sender: TObject; ErrorCode: Integer; const
      Description, LocalFile, RemoteFile: string);
    procedure WebCopy1ConnectError(Sender: TObject);
    procedure WebCopy1Error(Sender: TObject; ErrorCode: Integer);
    procedure WebCopy1ErrorInfo(Sender: TObject; ErrorCode: Integer; ErrorInfo: string);
    procedure rgtierClick(Sender: TObject);
    procedure rgAlertsClick(Sender: TObject);
    procedure btnServerLoginClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnrebootClick(Sender: TObject);
    procedure btnSendCommandsClick(Sender: TObject);
    procedure CreateScript(Nodename: string);
    procedure SendSSHCommands(Nodename: string; SSHSHELL: TiphSShell; mmo: TMemo;
      multiinst: boolean);
    procedure btnmanSSHClick(Sender: TObject);
    procedure btnClearLogClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
    procedure btnBenchmarkClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtZelIDExit(Sender: TObject);
    procedure edtxidExit(Sender: TObject);
    procedure edtZelprivatekeyExit(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btnrunorgScriptClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancelrunClick(Sender: TObject);
    procedure lblTipAdressDblClick(Sender: TObject);
    procedure btnAddToManagementClick(Sender: TObject);
    procedure AdvOfficePager2Change(Sender: TObject);
    procedure cxGridServerListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
      TShiftState; var AHandled: boolean);
    procedure load1Click(Sender: TObject);
    procedure DashboardOverview1Click(Sender: TObject);
    procedure cxGridServerListDataControllerBeforeDelete(ADataController:
      TcxCustomDataController; ARecordIndex: Integer);
    procedure btnCopyLogClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure ShellConnect(Shell: TiphSShell);
    procedure AdvOfficePager1Change(Sender: TObject);
    procedure Compenable(enable: boolean);
    procedure OpeninnewApplication1Click(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure saveServerlist1Click(Sender: TObject);
    procedure checkstatus1Click(Sender: TObject);
    procedure CreateNodeScript(nodename: string);
    procedure CreateDockerScript(nodename: string);
    procedure UploadScript(User, Pw, targetfile, sourcefile: string);
  private { Private declarations }
  public { Public declarations }

    z: Integer;
    loggedin: boolean;
    globalstop: boolean;
    nodat: boolean;
    w1, w2, w3, w4: boolean;
    sourcefiledocker, targetfiledocker, sourcefilenode, targetfilenode: string;
    Username: string;
    Userpw: string;
    root: string;
    rootpw: string;
    ServerIP :string;
    Port : Integer;
  end;

var
  frmMain: TfrmMain;


implementation

{$R *.dfm}

uses
  frmlogin_u, System.Threading, ClipBrd, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, System.JSON,Datamodule_u;

procedure ClearAdvEdits(Owner: TWinControl);
var
  i: Integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[i] is TAdvEdit then
      TAdvEdit(Owner.Components[i]).Clear;
end;

function IfNull(const Value, Default: OleVariant): OleVariant;
begin
  if Value = NULL then
    result := Default
  else
    result := Value;
end;

function GetNodeStatus(IP: string): string;
var
  HttpClient: TNetHTTPClient;
  st, status: string;
  jsonObj: TJsonObject;
begin

  // note - api call seems to return wrong data
  HttpClient := TNetHTTPClient.Create(nil);
  try
    st := HttpClient.Get('https://api.runonflux.io/benchmark/getstatus?http:/' +
      IP).ContentAsString;

    jsonObj := TJsonObject.ParseJSONValue(st) as TJsonObject;
    if (not Assigned(jsonObj)) then
      WriteLn('input is no valid json object')
    else
    try
      status := jsonObj.GetValue<string>('data.status');
    finally
      jsonObj.Destroy();
    end;

    HttpClient.Free;

    result := status;
  except
    result := 'error';
    HttpClient.Free;
  end;

end;

procedure TfrmMain.btnServerLoginClick(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 0 then
    ShellConnect(SSHSHELL1);

  Application.ProcessMessages;
end;

procedure TfrmMain.btnShellExecClick(Sender: TObject);
var
  node: string;
begin

  globalstop := false;
  nodat := false;

  if Trim(edtZelprivatekey.Text) = '' then
  begin
    Application.MessageBox('Node Identity Key is missing. Exit.',
      'Node Identity Key', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Trim(edtxid.Text) = '' then
  begin
    Application.MessageBox('TX ID is missing. Exit.', 'TX ID', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Trim(edtZelID.Text) = '' then
  begin
    Application.MessageBox('ZEL ID is missing. Exit.', 'ZEL ID', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Trim(edtUsername.Text) = '' then
  begin
    Application.MessageBox('Username is missing. Exit.', 'Username', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Trim(edtNodename.Text) = '' then
  begin
    Application.MessageBox('Node name is missing. Exit.', 'Node name', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;

  if Trim(edtindex.Text) = '' then
  begin
    Application.MessageBox('Index is missing. Exit.', 'Index', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if length(edtUserpw.text) < 6 then
  begin
    Application.MessageBox('Your password must exceed 5 chars', 'Password',
      MB_OK + MB_ICONSTOP);
    edtUserpw.SetFocus;
    Exit;
  end;

  node := Trim(edtNodename.Text);
  Username := Trim(edtUsername.Text);
  Userpw := Trim(edtUserpw.Text);
  root := Trim(edtroot.Text);
  rootpw := trim(edtrootpw.Text);
  ServerIP := Trim(edtServerIP.Text);
  Port := edtPort.Value;

  // Create Scripts
  CreateScript(node);

  if nodat = true then
  begin
    MessageBox(Handle, 'There was an error writing or retrieving data.', 'Error',
      MB_OK + MB_ICONSTOP);

    Exit;
  end;

  // Start SSH Session and Installation
  SendSSHCommands(node, SSHSHELL1, mmo1, false);

end;

procedure TfrmMain.btnUpdateClick(Sender: TObject);
begin
  if WebUpdate1.NewVersionAvailable(true) then
  begin
    WebUpdate1.ShowDownloadProgress := true;
    WebUpdate1.DoUpdate;
  end
  else
  begin
    Application.MessageBox(PChar('Latest version installed!'), PChar('Up to Date'),
      MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  end;
end;

procedure TfrmMain.btnCopyLogClick(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 0 then
    Clipboard.AsText := mmo1.Text;

end;

procedure TfrmMain.checkstatus1Click(Sender: TObject);
var
  IP, status: string;
  i: Integer;
begin
  for i := 0 to cxGridServerList.DataController.RecordCount - 1 do
  begin
    IP := cxGridServerList.DataController.Values[i, 1];

    // TTask.Run(
    // procedure
    // begin
    status := GetNodeStatus(IP);

    // TThread.Queue(nil,
    // procedure
    // begin
    cxGridServerList.DataController.Values[i, 18] := status;
    // end);
    // end);

  end;

end;

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
  ClearAdvEdits(Self);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  globalstop := true;
  Sleep(1000);
  if SSHSHELL1.Connected then
    SSHSHELL1.SSHLogoff;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  frmMain.loggedin := false;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  if frmMain.Width < 926 then
    frmMain.Width := 926;
end;

procedure GetBuildInfo(var V1, V2, V3, V4: Word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

// -------------------------------------------------------------------------//

function kfVersionInfo: string;
var
  V1, // Major Version
V2, // Minor Version
V3, // Release
V4: Word; // Build Number
begin
  GetBuildInfo(V1, V2, V3, V4);
  result := IntToStr(V1) + '.' + IntToStr(V2) + '.' + IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  ini: TIniFile;
  filename, User, Pw: string;
  Sectionname: string;
  autostart: string;
begin
  frmMain.Caption := 'F-Toolbox Flux 1 Click Setup - Version ' + kfVersionInfo;
  AdvOfficePager22.TabEnabled := false;
  globalstop := false;

  // Load Settings with User from ini file and read autostart fields, if any
  filename := GetHomePath + '\fluxtoolsettings.ini';

  if FileExists(filename) then
  begin
    ini := TIniFile.Create(filename);
    User := ini.ReadString('settings', 'user', '');
    Pw := AESEncryption1.Decrypt(ini.ReadString('settings', 'password', ''));
    autostart := ini.ReadString('autostart', 'auto', '');
    ini.EraseSection('autostart');
    ini.Free;
  end;

  // Select the first tab
  AdvOfficePager2.ActivePageIndex := 0;

  // User Data is loaded from ini file
  if User <> '' then
  begin
    with frmLogin do
    begin
      edtUser.Text := User;
      edtpassword.Text := Pw;
      fails := 0;
    end;
  end;

  // Check for version updates
  if WebUpdate1.NewVersionAvailable() then
  begin
    WebUpdate1.ShowDownloadProgress := true;
    WebUpdate1.DoUpdate;
  end;

  // Load from Ini if Autostart session
  Sectionname := autostart;
  if Sectionname <> '' then
  begin
    frmLogin.btnLoginClick(Self);
    Sleep(500);
    filename := GetHomePath + '/fluxtoolserver.ini';

    ini := TIniFile.Create(filename);
    if ini.ReadString(Sectionname, 'Tier', '') = 'Cumulus' then
      rgtier.ItemIndex := 0;
    if ini.ReadString(Sectionname, 'Tier', '') = 'Nimbus' then
      rgtier.ItemIndex := 1;
    if ini.ReadString(Sectionname, 'Tier', '') = 'Stratus' then
      rgtier.ItemIndex := 2;

    edtServerIP.Text := ini.ReadString(Sectionname, 'ServerIP', '');
    edtPort.Text := ini.ReadString(Sectionname, 'Port', '');
    edtroot.Text := ini.ReadString(Sectionname, 'root', '');
    if ini.ReadString(Sectionname, 'rootpw', '') <> '' then
      edtrootpw.Text := AESEncryption1.Decrypt(ini.ReadString(Sectionname, 'rootpw', ''))
    else
      edtrootpw.Text := ini.ReadString(Sectionname, 'rootpw', '');
    edtZelprivatekey.Text := ini.ReadString(Sectionname, 'FluxnodeIdentity', '');
    edtxid.Text := ini.ReadString(Sectionname, 'ColTxid', '');
    edtindex.Text := ini.ReadString(Sectionname, 'Index', '');
    edtZelID.Text := ini.ReadString(Sectionname, 'ZelID', '');
    edtNodename.Text := ini.ReadString(Sectionname, 'Nodename', '');
    edtUsername.Text := ini.ReadString(Sectionname, 'Username', '');
    if ini.ReadString(Sectionname, 'Password', '') <> '' then
      edtUserpw.Text := AESEncryption1.Decrypt(ini.ReadString(Sectionname,
        'Password', ''))
    else
      edtUserpw.Text := ini.ReadString(Sectionname, 'Password', '');
    edtKDAAdress.Text := ini.ReadString(Sectionname, 'KdaAdress', '');
    edtKDAChain.Text := ini.ReadString(Sectionname, 'KdaChain', '');
    edtDiscordUserID.Text := ini.ReadString(Sectionname, 'DiscordUserID', '');
    edtDiscordWebhookURL.Text := ini.ReadString(Sectionname, 'DiscordWebhookUrl', '');
    edtTelegramBotToken.Text := ini.ReadString(Sectionname, 'TelegramChatID', '');
    edtTelegramChatID.Text := ini.ReadString(Sectionname, 'TelegramChatID', '');

    ini.Free;
    Application.ProcessMessages;
  end;

end;

procedure TfrmMain.lblTipAdressDblClick(Sender: TObject);
begin
  Clipboard.AsText := 't1aCxqdjjSy8gxbuJHVuhAfZmCP5Twuhy9X';
  if Clipboard.AsText <> '' then
    ShowMessage('Successfully copied to Clipboard');
end;

procedure TfrmMain.load1Click(Sender: TObject);
var
  Tier: string;
begin

  if tmr1.Enabled = true then
  begin
    MessageBox(Handle, 'SSH Process seems to be still running!', 'Warning',
      MB_OK + MB_ICONWARNING);
  end;

  Tier := cxGridServerList.Controller.FocusedRecord.Values[0];

  if Tier = 'Cumulus' then
    rgtier.ItemIndex := 0;
  if Tier = 'Nimbus' then
    rgtier.ItemIndex := 1;
  if Tier = 'Stratus' then
    rgtier.ItemIndex := 2;

  edtServerIP.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[1], '');
  edtPort.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[2], '');
  edtroot.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[3], '');
  edtrootpw.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[4], '');
  edtZelprivatekey.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [5], '');
  edtxid.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[6], '');
  edtindex.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[7], '');
  edtZelID.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[8], '');
  edtNodename.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[9], '');
  edtUsername.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[10], '');
  edtUserpw.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[11], '');
  edtKDAAdress.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[12], '');
  edtKDAChain.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values[13], '');
  edtDiscordUserID.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [14], '');
  edtDiscordWebhookURL.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [15], '');
  edtTelegramChatID.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [16], '');
  edtTelegramBotToken.Text := IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [17], '');
end;

procedure TfrmMain.OpeninnewApplication1Click(Sender: TObject);
var
  Sectionname, exe, filename: string;
  ini: TIniFile;
begin
  Sectionname := Trim(IfNull(cxGridServerList.Controller.FocusedRecord.Values[1],
    '') + IfNull(cxGridServerList.Controller.FocusedRecord.Values[9], ''));
  exe := Application.Exename;

  filename := GetHomePath + '\fluxtoolsettings.ini';
  ini := TIniFile.Create(filename);
  ini.EraseSection('autostart');
  ini.WriteString('autostart', 'auto', Sectionname);
  ini.Free;

  ShellExecute(Handle, 'open', PChar(exe), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.rgAlertsClick(Sender: TObject);
begin
  if rgAlerts.ItemIndex = 0 then
  begin
    edtDiscordUserID.Enabled := false;
    edtDiscordWebhookURL.Enabled := false;
    edtTelegramChatID.Enabled := false;
    edtTelegramBotToken.Enabled := false;
    edtDiscordUserID.Clear;
    edtDiscordWebhookURL.Clear;
    edtTelegramChatID.Clear;
    edtTelegramBotToken.Clear;
  end;

  if rgAlerts.ItemIndex = 1 then
  begin
    edtDiscordUserID.Enabled := true;
    edtDiscordWebhookURL.Enabled := true;
    edtTelegramChatID.Enabled := false;
    edtTelegramBotToken.Enabled := false;
    edtTelegramChatID.Clear;
    edtTelegramBotToken.Clear;
  end;

  if rgAlerts.ItemIndex = 2 then
  begin
    edtDiscordUserID.Enabled := false;
    edtDiscordWebhookURL.Enabled := false;
    edtTelegramChatID.Enabled := true;
    edtTelegramBotToken.Enabled := true;
    edtDiscordUserID.Clear;
    edtDiscordWebhookURL.Clear;
  end;

end;

procedure TfrmMain.rgtierClick(Sender: TObject);
begin
  if rgtier.ItemIndex <> 0 then
  begin
    edtKDAAdress.Enabled := true;
    edtKDAChain.Enabled := true;
  end
  else
  begin
    edtKDAAdress.Enabled := false;
    edtKDAAdress.Text := '';
    edtKDAChain.Enabled := false;
    edtKDAChain.Text := '';
  end;
end;

procedure TfrmMain.saveServerlist1Click(Sender: TObject);
var
  ini: TIniFile;
  filename, Sectionname: string;
  z: Integer;
begin
  with cxGridServerList.DataController do
  begin
    filename := GetHomePath + '\fluxtoolserver.ini';

    // create backup of old file
    if FileExists(filename) then
      Renamefile(filename, filename + '_old');

    ini := TIniFile.Create(filename);
    for z := 0 to RecordCount - 1 do
    begin
      Sectionname := IfNull(Values[z, 1], '') + IfNull(Values[z, 9], '');
      ini.WriteString(Sectionname, 'Tier', IfNull(Values[z, 0], ''));
      ini.WriteString(Sectionname, 'ServerIP', IfNull(Values[z, 1], ''));
      ini.WriteString(Sectionname, 'Port', IfNull(Values[z, 2], ''));
      ini.WriteString(Sectionname, 'root', IfNull(Values[z, 3], ''));
      ini.WriteString(Sectionname, 'rootpw', AESEncryption1.Encrypt(IfNull(Values
        [z, 4], '')));
      ini.WriteString(Sectionname, 'FluxnodeIdentity', IfNull(Values[z, 5], ''));
      ini.WriteString(Sectionname, 'ColTxId', IfNull(Values[z, 6], ''));
      ini.WriteString(Sectionname, 'Index', IfNull(Values[z, 7], ''));
      ini.WriteString(Sectionname, 'ZelID', IfNull(Values[z, 8], ''));
      ini.WriteString(Sectionname, 'Nodename', IfNull(Values[z, 9], ''));
      ini.WriteString(Sectionname, 'Username', IfNull(Values[z, 10], ''));
      ini.WriteString(Sectionname, 'Password', AESEncryption1.Encrypt(IfNull(Values
        [z, 11], '')));
      ini.WriteString(Sectionname, 'KdaAdress', IfNull(Values[z, 12], ''));
      ini.WriteString(Sectionname, 'KdaChain', IfNull(Values[z, 13], ''));
      ini.WriteString(Sectionname, 'DiscordUserID', IfNull(Values[z, 14], ''));
      ini.WriteString(Sectionname, 'DiscordWebhookUrl', IfNull(Values[z, 15], ''));
      ini.WriteString(Sectionname, 'TelegramChatID', IfNull(Values[z, 16], ''));
      ini.WriteString(Sectionname, 'TelegramBotToken', IfNull(Values[z, 17], ''));
    end;
    ini.Free;
  end;
end;

procedure TfrmMain.btnrebootClick(Sender: TObject);
begin
  // Command to reboot the server
  SSHSHELL1.Execute('sudo shutdown -r 0');
  btnServerLoginClick(Self);
end;

procedure TfrmMain.btnrunorgScriptClick(Sender: TObject);
begin
  if tmr1.Enabled = true then
  begin
    Application.MessageBox('Session seems to be still running. Exit.',
      'Still running', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  with SSHSHELL1 do
  begin
    Execute('bash -i <(curl -s https://raw.githubusercontent.com/RunOnFlux/fluxnode-multitool/master/multitoolbox.sh)');
  end;
end;

procedure TfrmMain.btnSendCommandsClick(Sender: TObject);
begin
// outdated
  // SendSSHCommands(Trim(edtNodename.Text), SSHSHELL1, mmo1, false);
end;

procedure TfrmMain.AdvOfficePager1Change(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 0 then
  begin
    // activate/deactivate buttons,... depending on login state
    if SSHSHELL1.Connected then
      Compenable(false)
    else
      Compenable(true);
  end;

end;

procedure TfrmMain.AdvOfficePager2Change(Sender: TObject);
var
  i, z: Integer;
  filename, ServerIP: string;
  slIp, sl: TStringList;
  ini: TIniFile;
  poseq: Integer;
  Nodename, Sectionname: string;
begin

  // coming from Tab 0 to Tab 1 -> Load data - from 1 to 0 -> save data
  if AdvOfficePager2.ActivePageIndex = 1 then
  begin
    filename := GetHomePath + '\fluxtoolserver.ini';
    ini := TIniFile.Create(filename);

    if FileExists(filename) then
    begin
      sl := TStringList.Create();
      slIp := TStringList.Create();
      sl.LoadFromFile(filename);
      z := 0;
      for i := 0 to sl.Count - 1 do
      begin
        if Pos('ServerIP', sl[i]) > 0 then
        begin
          poseq := Pos('=', sl[i]) + 1;
          ServerIP := Trim(Copy(sl[i], poseq, length(sl[i])));
        end;

        if Pos('Nodename', sl[i]) > 0 then
        begin
          poseq := Pos('=', sl[i]) + 1;
          Nodename := Trim(Copy(sl[i], poseq, length(sl[i])));
          slIp.Add(ServerIP + Nodename);
        end;

      end;
      cxGridServerList.DataController.RecordCount := 0;

      // loop thru all ini Sections
      for i := 0 to slIp.Count - 1 do
      begin
        ServerIP := slIp[i];
        with cxGridServerList.DataController do
        begin
          RecordCount := RecordCount + 1;
          Values[z, 0] := ini.ReadString(ServerIP, 'Tier', '');
          Values[z, 1] := ini.ReadString(ServerIP, 'ServerIP', '');
          Values[z, 2] := ini.ReadString(ServerIP, 'Port', '');
          Values[z, 3] := ini.ReadString(ServerIP, 'root', '');
          if ini.ReadString(ServerIP, 'rootpw', '') <> '' then
            Values[z, 4] := AESEncryption1.Decrypt(ini.ReadString(ServerIP, 'rootpw', ''))
          else
            Values[z, 4] := ini.ReadString(ServerIP, 'rootpw', '');
          Values[z, 5] := ini.ReadString(ServerIP, 'FluxnodeIdentity', '');
          Values[z, 6] := ini.ReadString(ServerIP, 'ColTxid', '');
          Values[z, 7] := ini.ReadString(ServerIP, 'Index', '');
          Values[z, 8] := ini.ReadString(ServerIP, 'ZelID', '');
          Values[z, 9] := ini.ReadString(ServerIP, 'Nodename', '');
          Values[z, 10] := ini.ReadString(ServerIP, 'Username', '');
          if ini.ReadString(ServerIP, 'Password', '') <> '' then
            Values[z, 11] := AESEncryption1.Decrypt(ini.ReadString(ServerIP,
              'Password', ''))
          else
            Values[z, 11] := ini.ReadString(ServerIP, 'Password', '');
          Values[z, 12] := ini.ReadString(ServerIP, 'KdaAdress', '');
          Values[z, 13] := ini.ReadString(ServerIP, 'KdaChain', '');
          Values[z, 14] := ini.ReadString(ServerIP, 'DiscordUserID', '');
          Values[z, 15] := ini.ReadString(ServerIP, 'DiscordWebhookUrl', '');
          Values[z, 16] := ini.ReadString(ServerIP, 'TelegramChatID', '');
          Values[z, 17] := ini.ReadString(ServerIP, 'TelegramChatID', '');
        end;

        inc(z);

      end;

    end;

    sl.Free;
    slIp.Free;
    ini.Free;
  end
  else
  begin
    // write the Server Table into ini
    with cxGridServerList.DataController do
    begin
      filename := GetHomePath + '\fluxtoolserver.ini';

      if FileExists(filename) then
        Renamefile(filename, filename + '_old');

      ini := TIniFile.Create(filename);
      for z := 0 to RecordCount - 1 do
      begin
        Sectionname := IfNull(Values[z, 1], '') + IfNull(Values[z, 9], '');
        ini.WriteString(Sectionname, 'Tier', IfNull(Values[z, 0], ''));
        ini.WriteString(Sectionname, 'ServerIP', IfNull(Values[z, 1], ''));
        ini.WriteString(Sectionname, 'Port', IfNull(Values[z, 2], ''));
        ini.WriteString(Sectionname, 'root', IfNull(Values[z, 3], ''));
        ini.WriteString(Sectionname, 'rootpw', AESEncryption1.Encrypt(IfNull(Values
          [z, 4], '')));
        ini.WriteString(Sectionname, 'FluxnodeIdentity', IfNull(Values[z, 5], ''));
        ini.WriteString(Sectionname, 'ColTxId', IfNull(Values[z, 6], ''));
        ini.WriteString(Sectionname, 'Index', IfNull(Values[z, 7], ''));
        ini.WriteString(Sectionname, 'ZelID', IfNull(Values[z, 8], ''));
        ini.WriteString(Sectionname, 'Nodename', IfNull(Values[z, 9], ''));
        ini.WriteString(Sectionname, 'Username', IfNull(Values[z, 10], ''));
        ini.WriteString(Sectionname, 'Password', AESEncryption1.Encrypt(IfNull(Values
          [z, 11], '')));
        ini.WriteString(Sectionname, 'KdaAdress', IfNull(Values[z, 12], ''));
        ini.WriteString(Sectionname, 'KdaChain', IfNull(Values[z, 13], ''));
        ini.WriteString(Sectionname, 'DiscordUserID', IfNull(Values[z, 14], ''));
        ini.WriteString(Sectionname, 'DiscordWebhookUrl', IfNull(Values[z, 15], ''));
        ini.WriteString(Sectionname, 'TelegramChatID', IfNull(Values[z, 16], ''));
        ini.WriteString(Sectionname, 'TelegramBotToken', IfNull(Values[z, 17], ''));
      end;
      ini.Free;
    end;

  end;

end;

procedure TfrmMain.btnAddToManagementClick(Sender: TObject);
var
  filename, res: string;
  ini: TIniFile;
  Sectionname: string;
begin
  // single add to management list of servers
  filename := GetHomePath + '\fluxtoolserver.ini';
  ini := TIniFile.Create(filename);
  Sectionname := Trim(edtServerIP.Text) + Trim(edtNodename.Text);
  res := ini.ReadString(Sectionname, 'ServerIP', '');

  if Sectionname <> '' then
  begin
    // check if its already there
    if res <> '' then
    begin
      if MessageBox(Handle,
        'Node already exists in your management. Do you want to update the data?',
        'Warning', MB_YESNO + MB_ICONSTOP) = IDNO then
      begin
        ini.Free;
        Exit;
      end;

      ini.EraseSection(Sectionname);
    end;

    if rgtier.ItemIndex = 0 then
      ini.WriteString(Sectionname, 'Tier', 'Cumulus');
    if rgtier.ItemIndex = 1 then
      ini.WriteString(Sectionname, 'Tier', 'Nimbus');
    if rgtier.ItemIndex = 2 then
      ini.WriteString(Sectionname, 'Tier', 'Stratus');

    ini.WriteString(Sectionname, 'ServerIP', Trim(edtServerIP.Text));
    ini.WriteString(Sectionname, 'Port', Trim(edtPort.Text));
    ini.WriteString(Sectionname, 'root', Trim(edtroot.Text));
    ini.WriteString(Sectionname, 'rootpw', AESEncryption1.Encrypt(Trim(edtrootpw.Text)));
    ini.WriteString(Sectionname, 'FluxnodeIdentity', Trim(edtZelprivatekey.Text));
    ini.WriteString(Sectionname, 'ColTxId', Trim(edtxid.Text));
    ini.WriteString(Sectionname, 'Index', Trim(edtindex.Text));
    ini.WriteString(Sectionname, 'ZelID', Trim(edtZelID.Text));
    ini.WriteString(Sectionname, 'Nodename', Trim(edtNodename.Text));
    ini.WriteString(Sectionname, 'Username', Trim(edtUsername.Text));
    ini.WriteString(Sectionname, 'Password', AESEncryption1.Encrypt(Trim(edtUserpw.Text)));
    ini.WriteString(Sectionname, 'KdaAdress', Trim(edtKDAAdress.Text));
    ini.WriteString(Sectionname, 'KdaChain', Trim(edtKDAChain.Text));
    ini.WriteString(Sectionname, 'DiscordUserID', Trim(edtDiscordUserID.Text));
    ini.WriteString(Sectionname, 'DiscordWebhookUrl', Trim(edtDiscordWebhookURL.Text));
    ini.WriteString(Sectionname, 'TelegramChatID', Trim(edtTelegramChatID.Text));
    ini.WriteString(Sectionname, 'TelegramBotToken', Trim(edtTelegramBotToken.Text));
  end;

  ini.Free;
end;

procedure TfrmMain.btnAccountClick(Sender: TObject);
begin
  frmLogin.Showmodal;
end;

procedure TfrmMain.btnBenchmarkClick(Sender: TObject);
begin
  // get Benchmark
  SSHSHELL1.Execute('fluxbench-cli getbenchmarks');
end;

procedure TfrmMain.btncancelrunClick(Sender: TObject);
begin
  tmr1.Enabled := false;
  globalstop := true;
  Sleep(500);
  SSHSHELL1.SSHLogoff;
  btnreboot.Enabled := true;
  btnBenchmark.Enabled := true;
  btnShellExec.Enabled := true;
  btnmanSSH.Enabled := true;
  Application.ProcessMessages;
end;

procedure TfrmMain.btnClearLogClick(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 0 then
    mmo1.Clear;
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnCreateScriptsClick(Sender: TObject);
begin
// outdated
//  CreateScript(Trim(edtNodename.Text));
end;

procedure TfrmMain.btnmanSSHClick(Sender: TObject);
begin
  if AdvOfficePager1.ActivePageIndex = 0 then
  begin
    if SSHSHELL1.Connected then
      SSHSHELL1.Execute(Trim(edtManualSSH.Text));
  end;
end;

procedure TfrmMain.SSHSFTPError(Sender: TObject; ErrorCode: Integer; const
  Description, LocalFile, RemoteFile: string);
begin
  mmo1.Lines.Add('ERROR:' + Description);
  Application.ProcessMessages;
end;

procedure TfrmMain.SSHSFTPLog(Sender: TObject; LogLevel: Integer; const Message,
  LogType: string);
begin
  mmo1.Lines.Add(Message);
  Application.ProcessMessages;
end;

procedure TfrmMain.tmr1Timer(Sender: TObject);
begin
  if globalstop = false then
  begin
    if lblfluxinstallactive.Visible = false then
      lblfluxinstallactive.Visible := true
    else
      lblfluxinstallactive.Visible := false;
  end
  else
    lblfluxinstallactive.Visible := false;
end;

procedure TfrmMain.SSHSHELL1Error(Sender: TObject; ErrorCode: Integer; const
  Description: string);
begin
  mmo1.Lines.Add('ERROR:' + Description);
  Application.ProcessMessages;
end;

procedure TfrmMain.SSHSHELL1Log(Sender: TObject; LogLevel: Integer; const
  Message, LogType: string);
begin
  mmo1.Lines.Add(Message);
  Application.ProcessMessages;
end;

procedure TfrmMain.SSHSHELL1Stdout(Sender: TObject; Text: string; TextB: TArray<
  System.Byte>);
begin
  mmo1.Lines.Add(Text);
end;

procedure TfrmMain.WebCopy1ConnectError(Sender: TObject);
begin
  ShowMessage('Connecterror. Check your internet connection');
end;

procedure TfrmMain.WebCopy1Error(Sender: TObject; ErrorCode: Integer);
begin
  ShowMessage('Copy Error');
end;

procedure TfrmMain.WebCopy1ErrorInfo(Sender: TObject; ErrorCode: Integer;
  ErrorInfo: string);
begin
  ShowMessage(ErrorInfo);
end;

procedure TfrmMain.CreateScript(Nodename: string);
begin

  // Download Install Script
  WebCopy1.Items.Clear;
  WebCopy1.FTPPassive := true;
  with WebCopy1.Items.Add do
  begin
    ftpHost := DataModule1.FTPIP;
    ftpuserid := DataModule1.FTPuser;
    ftppassword := DataModule1.FTPPassword;
    protocol := wpFTP;
    targetdir := GetHomePath;
    targetfilename := 'instdocker.sh';
    url := 'fluxapi/instdocker-org.sh'; // local file
  end;
  WebCopy1.Execute;

  WebCopy1.Items.Clear;
  WebCopy1.FTPPassive := true;
  with WebCopy1.Items.Add do
  begin
    ftpHost := DataModule1.FTPIP;
    ftpuserid := DataModule1.FTPuser;
    ftppassword := DataModule1.FTPPassword;
    protocol := wpFTP;
    targetdir := GetHomePath;
    targetfilename := 'install-pro.sh';
    url := 'fluxapi/install-pro-org.sh'; // local file
  end;
  WebCopy1.Execute;

  // Create DOCKER INSTALL SCRIPT
  CreateDockerScript(Nodename);

  // Create NODE INSTALL SCRIPT
  CreateNodeScript(Nodename);

end;

procedure TfrmMain.cxGridServerListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
  TShiftState; var AHandled: boolean);
var
  pnt: TPoint;
begin
  if AButton = mbRight then
  begin
    if GetCursorPos(pnt) then
      pm1.Popup(pnt.x, pnt.Y);
  end;
end;

procedure TfrmMain.cxGridServerListDataControllerBeforeDelete(ADataController:
  TcxCustomDataController; ARecordIndex: Integer);
var
  filename: string;
  ini: TIniFile;
  Sectionname, ServerIP: string;
begin

  filename := GetHomePath + '\fluxtoolserver.ini';
  ini := TIniFile.Create(filename);
  ServerIP := IfNull(cxGridServerList.Controller.FocusedRecord.Values[1], '');
  Sectionname := ServerIP + IfNull(cxGridServerList.Controller.FocusedRecord.Values
    [9], '');

  if Sectionname <> '' then
    ini.EraseSection(Sectionname);
  ini.Free;

end;

procedure TfrmMain.DashboardOverview1Click(Sender: TObject);
var
  Website: string;
begin
  Website := IfNull(cxGridServerList.Controller.FocusedRecord.Values[1], '');

  if Website = '' then
    Exit;

  Website := 'http://' + Website + ':16126/dashboard/overview';
  ShellExecute(Self.WindowHandle, 'open', PWideChar(Website), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.edtxidExit(Sender: TObject);
begin
  if (length(Trim(edtxid.Text)) < 50) and (edtxid.Text <> '') then
  begin
    MessageBox(Handle,
      'Please double check your input as it seems to be an incorrect length',
      'Warning', MB_OK + MB_ICONWARNING);
  end;
end;

procedure TfrmMain.edtZelIDExit(Sender: TObject);
begin
  if (length(Trim(edtZelID.Text)) < 25) and (edtZelID.Text <> '') then
  begin
    MessageBox(Handle,
      'Please double check your input as it seems to be an incorrect length',
      'Warning', MB_OK + MB_ICONWARNING);
  end;
end;

procedure TfrmMain.edtZelprivatekeyExit(Sender: TObject);
begin
  if (length(Trim(edtZelprivatekey.Text)) < 40) and (edtZelprivatekey.Text <> '') then
  begin
    MessageBox(Handle,
      'Please double check your input as it seems to be an incorrect length',
      'Warning', MB_OK + MB_ICONWARNING);
  end;
end;

procedure TfrmMain.SendSSHCommands(Nodename: string; SSHSHELL: TiphSShell; mmo:
  TMemo; multiinst: boolean);
begin
  TTask.Run(
    procedure
    var
      i: Integer;
      e: Integer;
      Seconds: double;
      Stopwatch: TStopwatch;
      Elapsed: TTimeSpan;
    begin
      if tmr1.Enabled = false then
        tmr1.Enabled := true;

      Stopwatch := TStopwatch.StartNew;

      with SSHSHELL do
      begin
        e := 0;
        Command := 'ls';

      // install curl
        Execute('sudo apt-get install curl');

        while z = 0 do
        begin
          if Pos('curl is already the newest version', mmo.Text) > 0 then
            z := 1;

          Sleep(1000);

          if (Pos('Do you want to continue? [Y/n]', mmo.Text) > 0) and (e = 0) then
          begin
            Execute('Y');
            e := 1;
          end;

          if Pos('Processing triggers for libc-bin', mmo.Text) > 0 then
          begin
            z := 1;
            Sleep(2000);
          end;

          if globalstop = true then
            Exit
        end;

        z := 0;
        e := 0;

        // install npm
        Execute('sudo apt-get install npm -y');

        while z = 0 do
        begin
          if (Pos('npm is already the newest version', mmo.Text) > 0) or (Pos('Setting up npm',
            mmo.Text) > 0) then
            z := 1;

          Sleep(1000);

          if globalstop = true then
            Exit;

         // Check if npm is already installed -> shorter wait time
              if (Pos('npm is already the newest version', mmo.Text) > 0) then
          begin
            z := 1;
            e := 1
          end;
        end;

        if e = 1 then
          Sleep(1000)
        else
          for i := 0 to 30 do
          begin
            Sleep(1000);
          end;

        // Upload Docker Script to Server with root user
            UploadScript(root, rootpw, targetfiledocker, sourcefiledocker);

        z := 0;
        Sleep(2000);
        // Install Docker script
//      call local file
        Execute('bash ' + targetfiledocker);
        while z = 0 do
        begin
          if Pos('Docker is installed', mmo.Text) > 0 then
            z := 1;
          Sleep(1000);

          if globalstop = true then
            Exit
        end;

      // Set User Password
        if Userpw = '' then
          Execute('echo -e "' + Username + '\n' + Username + '" | passwd ' + Username)
        else
          Execute('echo -e "' + Userpw + '\n' + Userpw + '" | passwd ' + Username);

        Sleep(1000);

        // Upload Node Script to Server with newly created user
        UploadScript(Username, Userpw, targetfilenode, sourcefilenode);
        Sleep(500);
        z := 0;
        e := 0;

        // Install Node Script
//      call local file
        Execute('bash ' + targetfilenode);

        while z = 0 do
        begin
          if Pos('Flux Node Installation finished', mmo.Text) > 0 then
            z := 1;
          Sleep(2000);

          if (Pos('[sudo] password for', mmo.Lines[mmo.Lines.Count - 1]) > 0)
            and (e = 0) then
          begin
            Execute(Userpw);
            e := 1;
          end;

          if globalstop = true then
            Exit
        end;
      end;

      Elapsed := Stopwatch.Elapsed;
      Seconds := Elapsed.TotalSeconds;
      Seconds := Seconds / 60;

      if Pos('Flux Node Installation finished', mmo.Text) > 0 then
      begin
        TThread.Synchronize(nil,
          procedure
          begin
            MessageBox(Handle, PWideChar('Fluxnode Installation of ' + Nodename
              + ' finished within ' + FormatFloat('0.00', Seconds) +
              ' minutes! You should be able to start your node within Zelcore now!.'),
              'Finished', MB_OK + MB_ICONINFORMATION);
          end);
      end;

      TThread.Queue(nil,
        procedure
        begin
          btnreboot.Enabled := true;
          btnBenchmark.Enabled := true;
          btnShellExec.Enabled := true;
          btnmanSSH.Enabled := true;
          tmr1.Enabled := false;
          lblfluxinstallactive.Visible := false;
          globalstop := false;
        end);
    end);

end;

procedure TfrmMain.ShellConnect(Shell: TiphSShell);
begin
  if Shell.Connected = true then
  begin
    Compenable(true);

    Shell.SSHLogoff;
  end
  else
  begin
    Shell.SSHUser := Trim(edtroot.Text);
    // 'root';
    Shell.SSHPassword := Trim(edtrootpw.Text); // '5MvpL6RcQNKdLhf';
    Shell.Config('SSHAcceptAnyServerHostKey=true');
    Shell.SSHLogon(Trim(edtServerIP.Text), edtPort.Value);

    Compenable(false);
  end;
end;

procedure TfrmMain.Compenable(enable: boolean);
begin
  if enable = true then
  begin
    tmr1.Enabled := false;
    grp1.Enabled := false;
    btnreboot.Enabled := false;
    edtServerIP.Enabled := true;
    edtPort.Enabled := true;
    edtroot.Enabled := true;
    edtrootpw.Enabled := true;
    btnreboot.Enabled := false;
    btnServerLogin.Caption := 'Connect to server';
    btnShellExec.Enabled := false;
    btnBenchmark.Enabled := false;
    btnrunorgScript.Enabled := false;
  end
  else
  begin
    btnServerLogin.Caption := 'Disconnect from server';
    grp1.Enabled := true;
    btnreboot.Enabled := true;
    edtServerIP.Enabled := false;
    edtPort.Enabled := false;
    edtroot.Enabled := false;
    edtrootpw.Enabled := false;
    btnreboot.Enabled := true;
    btnShellExec.Enabled := true;
    btnBenchmark.Enabled := true;
    btnrunorgScript.Enabled := true;
  end;

end;

procedure TfrmMain.CreateNodeScript(nodename: string);
var
  KDAA, discordpingyesno, telegramalert, Choice: string;
  slFile: TStringList;
begin

  // NODE INSTALL SCRIPT ERZEUGEN

  if rgAlerts.ItemIndex = 0 then
    Choice := '0';
  // Telegram
  if rgAlerts.ItemIndex = 1 then
    Choice := '1';
  // Discord
  if rgAlerts.ItemIndex = 2 then
    Choice := '2';

  if Choice = '1' then
    discordpingyesno := 'Y'
  else
    discordpingyesno := '';

  if Choice = '2' then
    telegramalert := '1'
  else
    telegramalert := '0';

  if Trim(edtKDAAdress.Text) <> '' then
    KDAA := Trim(edtKDAAdress.Text)
  else
    KDAA := '';

  targetfilenode := nodename + 'install-pro.sh';
  // if FileExists((ExtractFilePath(Application.ExeName) + 'install-pro.sh')) then
  if FileExists(GetHomePath + '\install-pro.sh') then
    sourcefilenode := (GetHomePath + '\install-pro.sh')
  else
  begin
    nodat := true;
    Exit;
  end;

  slFile := TStringList.Create;
  slFile.LineBreak := #10;

  slFile.LoadFromFile(sourcefilenode);

  slFile.Text := StringReplace(slFile.Text, 'variablesshport', Trim(edtPort.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelnodeprivkey', Trim(edtZelprivatekey.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variabletxid', Trim(edtxid.Text), [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelid', Trim(edtZelID.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelnodeindex', Trim(edtindex.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variableusernew', Trim(edtUsername.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablekdachain', Trim(edtKDAChain.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablekdaadresse', KDAA, [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablediscordurl', Trim(edtDiscordWebhookURL.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablediscordping', Trim(edtDiscordUserID.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablepingyesno',
    discordpingyesno, [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variabletelegramalert',
    telegramalert, [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variabletelegrambottoken', Trim(edtTelegramBotToken.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variabletelegramchatid', Trim(edtTelegramChatID.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablechoice', Trim(edtKDAAdress.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablenodename', Trim(edtNodename.Text),
    [rfReplaceAll]);

  slFile.Text := StringReplace(slFile.Text, #13, #10, [rfReplaceAll]);

  slFile.SaveToFile(sourcefilenode);
  slFile.Free;
end;

procedure TfrmMain.CreateDockerScript(nodename: string);
var
  slFile: TStringList;
begin

  targetfiledocker := nodename + 'instdocker.sh';

  // OriginalDatei abfragen
  // if FileExists(ExtractFilePath(Application.ExeName) + 'instdocker.sh') then
  if FileExists(GetHomePath + '\instdocker.sh') then
    sourcefiledocker := (GetHomePath + '\instdocker.sh')
  else
  begin
    nodat := true;
    Exit;
  end;

  slFile := TStringList.Create;
  slFile.LineBreak := #10;

  slFile.LoadFromFile(sourcefiledocker);

  slFile.Text := StringReplace(slFile.Text, 'variablesshport', Trim(edtPort.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelnodeprivkey', Trim(edtZelprivatekey.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variabletxid', Trim(edtxid.Text), [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelid', Trim(edtZelID.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variablezelnodeindex', Trim(edtindex.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, 'variableusernew', Trim(edtUsername.Text),
    [rfReplaceAll]);
  slFile.Text := StringReplace(slFile.Text, #13, #10, [rfReplaceAll]);

  slFile.SaveToFile(sourcefiledocker);
  slFile.Free;
end;

procedure TFrmMain.UploadScript(User, Pw, targetfile, sourcefile: string);
var
  SFTP1: TiphSFTP;
begin
    // SFTP Login
  SFTP1 := TiphSFTP.Create(nil);

  SFTP1.SSHUser := User;
  SFTP1.SSHPassword := Pw;
  SFTP1.SSHPort := Port;
  SFTP1.SSHHost := ServerIP;
  SFTP1.Config('SSHAcceptAnyServerHostKey=true');
  SFTP1.Overwrite := true;
  SFTP1.LocalFile := sourcefile;
  SFTP1.RemoteFile := targetfile;
 // SFTP1.DeleteFile(targetdockinst);
  SFTP1.SSHLogon(edtServerIP.Text, edtPort.Value);

  SFTP1.Upload;
  SFTP1.Free;
  if FileExists(sourcefile) then
    DeleteFile(sourcefile);
end;

end.

