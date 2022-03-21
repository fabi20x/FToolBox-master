unit frmlogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, AdvEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, IniFiles, IdBaseComponent, IdComponent,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdTCPConnection, IdTCPClient, IdHTTP, CryptBase, AESObj, MemDS, DBAccess,
  MyAccess, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

type
  TfrmLogin = class(TForm)
    edtUser: TAdvEdit;
    edtpassword: TAdvEdit;
    btnLogin: TButton;
    lbl1: TLabel;
    edtLCode: TAdvEdit;
    rg1: TRadioGroup;
    edtTransactid: TAdvEdit;
    btnverify: TButton;
    btnsendpay: TButton;
    mycon1: TMyConnection;
    myqry1: TMyQuery;
    pnl1: TPanel;
    btn1: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rg1Click(Sender: TObject);
    procedure btnverifyClick(Sender: TObject);
    procedure con1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure FormShow(Sender: TObject);
    procedure btnsendpayClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
    fails: integer;
    txstatus: string;
    PcName: string;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  frmMain_u, System.JSON, ShellApi;

function ComputerName: string;
var
  Size: DWORD;
begin
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, Size);
  if GetComputerName(PChar(Result), Size) then
    SetLength(Result, Size)
  else
    Result := '';
end;

procedure CloseMessageBox(AWnd: HWND; AMsg: UINT; AIDEvent: UINT_PTR;
  ATicks: DWORD); stdcall;
var
  Wnd: HWND;
begin
  KillTimer(AWnd, AIDEvent);
  // active window of the calling thread should be the message box
  Wnd := GetActiveWindow;
  if IsWindow(Wnd) then
    PostMessage(Wnd, WM_CLOSE, 0, 0);
end;

procedure TfrmLogin.btnverifyClick(Sender: TObject);
var
  JSonValue: TJSonValue;
  st: string;
  status, adr: string;
var
  HttpClient: TNetHTTPClient;
begin
  if trim(edtTransactid.Text) = '' then
  begin
    MessageBox(Handle, 'Transaction must not be empty.', 'Error',
      MB_OK + MB_ICONERROR);
    Exit;
  end;
  HttpClient := TNetHTTPClient.Create(nil);
  st := HttpClient.Get
    ('https://api.runonflux.io/daemon/getrawtransaction/?verbose=1&txid=' +
    trim(edtTransactid.Text)).ContentAsString;
  HttpClient.Free;

  JSonValue := TJSonObject.ParseJSONValue(st);
  status := JSonValue.GetValue<string>('status');
  // check for any successful payment
  if Pos('t1JpiecnRPkz9f4rgmVahjgxZEynS7DyEPT', st) > 0 then
    adr := 'korrekt'
  else
    adr := 'falsch';

  JSonValue.Free;

  if adr = 'korrekt' then
  begin
    if status = 'success' then
    begin
      // if not logged in
      if frmMain.loggedin = false then
      begin
        txstatus := 'paid';
        MessageBox(Handle, 'Transaction verified. You can register now',
          'Finished', MB_OK + MB_ICONINFORMATION);
      end
      else
      begin
        // wenn eingeloggt -> upgrade möglich
        mycon1.Disconnect;
        mycon1.Connect;

        with myqry1 do
        begin
          Close;
          SQl.Clear;
          SQl.Add('UPDATE User SET Status =:P1, License =:P2,expirydate =:P3 WHERE name =:P4');
          ParamByName('P1').Value := 'active';
          ParamByName('P2').Value := 'unlimited';
          ParamByName('P3').Value := now + 9000;
          ParamByName('P4').Value := trim(edtUser.Text);
          ExecSQL;
        end;

        frmLogin.Caption := 'Login / Register';
      end;
    end
    else
    begin
      if status = 'error' then
        MessageBox(Handle, 'Error. Wrong Transaction ID?', 'Finished',
          MB_OK + MB_ICONSTOP)
      else
        MessageBox(Handle, 'Waiting for confirmation...', 'Waiting',
          MB_OK + MB_ICONSTOP);

      txstatus := 'notpaid';
    end;
  end
  else
  begin
    MessageBox(Handle, 'wrong flux target adress', 'Waiting',
      MB_OK + MB_ICONSTOP);
  end;

end;

procedure TfrmLogin.con1Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  MessageBox(Handle,
    'Connection could not be established! Please check your internet connection!',
    'Error', MB_OK + MB_ICONSTOP);
end;

procedure TfrmLogin.btnsendpayClick(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open',
    'https://coinrequest.io/request/KcrPQoSdPSkRNrF', nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmLogin.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  filename: string;
  sl: TStringList;
  password: string;
  status: string;
  expiry: TDateTime;
  DExpiry: integer;
  f : TForm;
var
  TimerId: UINT_PTR;
begin
  if fails > 3 then
  begin
    MessageBox(Handle,
      'Too many false inputs. Please wait a while and try again later.',
      'Error', MB_OK + MB_ICONSTOP);
    Exit;
  end;
  mycon1.Disconnect;
  mycon1.Connect;
  DExpiry := 0;
  if frmMain.loggedin = false then
  begin
    frmMain.AdvOfficePager22.TabEnabled := false;
    with myqry1 do
    begin
      Close;
      SQl.Clear;
      SQl.Add('Select * FROM User WHERE name =:P1');
      ParamByName('P1').Value := trim(edtUser.Text);
      Open;

      if rg1.ItemIndex = 0 then
      begin
        if recordCount > 0 then
        begin
          // prüfen ob das passwort stimmt
          if trim(edtpassword.Text) = frmMain.AESEncryption1.Decrypt
            (trim(FieldByName('password').AsString)) then
          begin
            edtLCode.Text := trim(FieldByName('License').AsString);
            PcName := trim(FieldByName('PcName').AsString);
            status := trim(FieldByName('Status').AsString);
            expiry := FieldByName('expirydate').Value;

            // account deaktivieren wenn Trial abgelaufen ist
            if now > expiry then
            begin
              Close;
              SQl.Clear;
              SQl.Add('Update User Set Status =:P1 WHERE name =:P2');
              ParamByName('P1').Value := 'disabled';
              ParamByName('P2').Value := trim(edtUser.Text);
              ExecSQL;

              MessageBox(Handle, 'User license is expired!', 'Error',
                MB_OK + MB_ICONSTOP);
              edtUser.SetFocus;
              Exit
            end;

            // check if Login is with the registred pc
            if (PcName <> '') and (PcName <> ComputerName) and
              (edtLCode.Text <> 'unlimited') then
            begin
              MessageBox(Handle,
                'User license already registered to a different computer!',
                'Error', MB_OK + MB_ICONSTOP);
              edtUser.SetFocus;
              Exit
            end;

            if trim(edtLCode.Text) = 'unlimited' then
            begin
              btnverify.Enabled := false;
              frmLogin.Caption := 'Login / Register';
            end
            else
            begin
              btnverify.Enabled := true;
              frmLogin.Caption := frmLogin.Caption + ' Trial until ' +
                DateTimeToStr(expiry);
            end;

            if status = 'disabled' then
            begin
              MessageBox(Handle, 'Your Account is not activated at the moment!',
                'Error', MB_OK + MB_ICONSTOP);
              Exit;
            end;

            frmMain.loggedin := true;
            TimerId := SetTimer(0, 0, 2 * 500, @CloseMessageBox);

            f := CreateMessageDialog('Login successful!', mtCustom, [mbOK]);
            f.Position := poOwnerFormCenter;
            f.ShowModal;

            KillTimer(0, TimerId);

            frmMain.AdvOfficePager22.TabEnabled := true;
            rg1.Enabled := false;
            btnLogin.Caption := 'Logout';
            edtUser.Enabled := false;
            edtpassword.Enabled := false;
            edtLCode.Enabled := false;

            Close;
            SQl.Clear;
            SQl.Add('Update User Set logincount = (logincount+1) WHERE name =:P1');
            ParamByName('P1').Value := trim(edtUser.Text);
            ExecSQL;

            frmLogin.Close;
          end
          else
          begin
            Application.MessageBox
              ('You have entered a wrong username/password. Please try again!',
              'Wrong username/password1', MB_OK + MB_ICONSTOP);
            inc(fails);
            edtpassword.SetFocus;
          end;
        end
        else
        begin
          Application.MessageBox
            ('You have entered a wrong username/password. Please try again!',
            'Wrong username/password1', MB_OK + MB_ICONSTOP);
          inc(fails);
          edtpassword.SetFocus;
        end;
      end;

      // Registrierung
      if rg1.ItemIndex = 1 then
      begin
        if txstatus = 'paid' then
        begin
          edtLCode.Text := 'unlimited';
        end;

        if recordCount > 0 then
        begin
          MessageBox(Handle, 'Username already taken!', 'Failure',
            MB_OK + MB_ICONERROR);
          edtUser.SetFocus;
        end
        else
        begin
          Close;
          SQl.Clear;
          SQl.Add('Select PcName FROM User WHERE PcName =:P1');
          ParamByName('P1').Value := PcName;
          Open;

          if recordCount > 0 then
          begin
            Application.MessageBox('This Computer is already registered!',
              'Error', MB_OK + MB_ICONERROR);
            Exit;
          end;

          // keine Lizenz --> Testaccount
          if trim(edtLCode.Text) = '' then
          begin
            Close;
            SQl.Clear;
            SQl.Add('Select Daysexpiry from Settings');
            Open;
            DExpiry := FieldByName('Daysexpiry').Value;
            expiry := now + DExpiry;
          end
          else
          begin
            expiry := now + 9000;
          end;

          // Passwort verschlüsseln
          password := frmMain.AESEncryption1.Encrypt(trim(edtpassword.Text));

          Close;
          SQl.Clear;
          SQl.Add('INSERT INTO User (name,password,addeddate,status,License,PcName,expirydate) '
            + 'Values(:P1,:P2,:P3,:P4,:P5,:P6,:P7)');
          ParamByName('P1').Value := trim(edtUser.Text);
          ParamByName('P2').Value := password;
          ParamByName('P3').Value := now;
          if DExpiry > 0 then
            ParamByName('P4').Value := 'active'
          else
            ParamByName('P4').Value := 'disabled';
          ParamByName('P5').Value := trim(edtLCode.Text);
          ParamByName('P6').Value := PcName;
          ParamByName('P7').Value := expiry;
          ExecSQL;

          if trim(edtLCode.Text) <> '' then
          begin
            Application.MessageBox('Registration successfull! ', 'Success',
              MB_OK + MB_ICONINFORMATION);
          end
          else
          begin
            if DExpiry > 0 then
            begin
              Application.MessageBox
                (PWideChar('Registration successfull, Trial ends on ' +
                DateTimeToStr(expiry)), 'Success', MB_OK + MB_ICONWARNING);
              frmLogin.Caption := frmLogin.Caption + ' Trial until ' +
                DateTimeToStr(expiry);
            end
            else
              Application.MessageBox
                ('Registration successfull, but account not activated yet',
                'Success', MB_OK + MB_ICONWARNING);
          end;

          frmMain.AdvOfficePager22.TabEnabled := true;
          frmMain.loggedin := true;
          rg1.ItemIndex := 0;
          rg1.Enabled := false;
          edtUser.Enabled := false;
          edtpassword.Enabled := false;
          edtLCode.Enabled := false;
          btnLogin.Caption := 'Logout';

        end;
      end;
    end;
  end
  else
  begin
    btnLogin.Caption := 'Login';
    frmMain.loggedin := false;
    rg1.Enabled := true;
    edtUser.Enabled := true;
    edtpassword.Enabled := true;
    frmMain.grp1.Enabled := false;

    if frmMain.btnServerLogin.Caption = 'Disconnect from server' then
      frmMain.btnServerLoginClick(self);

  end;

  // logindatei erstellen
  if frmMain.loggedin = true then
  begin
    filename := GetHomePath + '\fluxtoolsettings.ini';
    // if FileExists(filename) = false then
    // begin
    sl := TStringList.Create;
    sl.Add('[settings]');
    sl.Add('user=' + trim(edtUser.Text));
    sl.Add('password=' + frmMain.AESEncryption1.Encrypt
      (trim(edtpassword.Text)));
    sl.Add('license=' + trim(edtLCode.Text));
    sl.Add('Computer=' + PcName);
    sl.SaveToFile(filename);
    sl.Free;
    // end;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmMain.loggedin = true then
  begin
    frmMain.btnServerLogin.Caption := 'Connect to Server';
    frmMain.btnServerLogin.Enabled := true;
  end;
end;

procedure TfrmLogin.FormResize(Sender: TObject);
begin
  // if frmLogin.Width <> 299 then
  // frmLogin.Width := 299;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  PcName := ComputerName;
end;

procedure TfrmLogin.rg1Click(Sender: TObject);
begin
  if rg1.ItemIndex = 0 then
  begin
    edtLCode.Enabled := false;
    btnLogin.Caption := 'login';
    btnverify.Enabled := true;
    btnsendpay.Enabled := true;
    edtLCode.Enabled := false;
    edtTransactid.Enabled := true;
  end
  else
  begin
    btnLogin.Caption := 'register';
    edtLCode.Enabled := false;
    edtTransactid.Enabled := true;
    btnverify.Enabled := true;
    btnsendpay.Enabled := true;
    edtLCode.Text := '';
  end;
end;

end.
