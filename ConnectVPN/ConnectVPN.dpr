program ConnectVPN;

uses
  Vcl.Forms,
  vpn.view.principal in 'src\view\vpn.view.principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
