program multiuserDelphi;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  menu in 'menu.pas' {frmMenu},
  mdi2 in 'mdi2.pas' {frmMdi2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.Run;
end.
