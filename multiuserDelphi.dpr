program multiuserDelphi;

uses
  Vcl.Forms,
  login in 'login.pas' {frmlogin},
  menu in 'menu.pas' {frmMenu},
  mdi2 in 'mdi2.pas' {frmMdi2},
  mdi4 in 'mdi4.pas' {frmMdi4},
  mdi3 in 'mdi3.pas' {frmMdi3},
  mdi5 in 'mdi5.pas' {frmMdi5},
  mdi6 in 'mdi6.pas' {frmMdi6},
  mdi7 in 'mdi7.pas' {frmMdi7},
  mdi8 in 'mdi8.pas' {frmMdi8},
  mdi9 in 'mdi9.pas' {frmMdi9},
  mdi10 in 'mdi10.pas' {frmMdi10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.Run;
end.
