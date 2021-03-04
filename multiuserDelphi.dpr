program multiuserDelphi;

uses
  Vcl.Forms,
  login in 'login.pas' {frmlogin},
  menu in 'menu.pas' {frmMenu},
  mdi2 in 'mdi2.pas' {frmMdi2},
  mdi4 in 'mdi4.pas' {frmMdi4},
  mdi3 in 'mdi3.pas' {frmMdi3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.Run;
end.
