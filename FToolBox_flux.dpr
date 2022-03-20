program FToolBox_flux;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  frmlogin_u in 'frmlogin_u.pas' {frmLogin},
  Datamodule_u in 'Datamodule_u.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
