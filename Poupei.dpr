program Poupei;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLogin in 'UnitLogin.pas' {frmLogin},
  UnitPrinipal in 'UnitPrinipal.pas' {FrmPrincipal},
  UnitLancamento in 'UnitLancamento.pas' {frmLancamento},
  UnitConfig in 'UnitConfig.pas' {frmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmLancamento, frmLancamento);
  Application.CreateForm(TfrmConfig, frmConfig);
  Application.Run;
end.
