unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  Tfrmlogin = class(TForm)
    MainMenu1: TMainMenu;
    Contoh1: TMenuItem;
    MDIFORM1: TMenuItem;
    Button1: TButton;
    MDIFORM21: TMenuItem;
    // procedure Button1Click(Sender: TObject);
    procedure MDIFORM1Click(Sender: TObject);
    procedure MDIFORM21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;
  nama: string;

implementation

uses menu, mdi2;

{$R *.dfm}

procedure Tfrmlogin.MDIFORM1Click(Sender: TObject);
begin
  if (Application.FindComponent('frmMenu') = nil) then
  begin
    frmMenu := TfrmMenu.Create(Application);
    frmMenu.FormStyle := fsMDIChild;
    frmMenu.BringToFront;
    frmMenu.Show;
  end
  else
  begin
    frmlogin.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM21Click(Sender: TObject);
begin
  if (Application.FindComponent('frmMdi2') = nil) then
  begin
    frmMdi2 := TfrmMdi2.Create(Application);
    frmMdi2.FormStyle := fsMDIChild;
    frmMdi2.BringToFront;
    frmMdi2.Show;
  end
  else
  begin
    frmMdi2.BringToFront;
  end;
end;

end.
