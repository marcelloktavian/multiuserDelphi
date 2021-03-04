unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  Tfrmlogin = class(TForm)
    MainMenu1: TMainMenu;
    Contoh1: TMenuItem;
    MDIFORM1: TMenuItem;
    MDIFORM21: TMenuItem;
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    WINDOW1: TMenuItem;
    ILE1: TMenuItem;
    CASCADE1: TMenuItem;
    Button1: TButton;
    MDIFORM31: TMenuItem;
    MDIFORM41: TMenuItem;
    // procedure Button1Click(Sender: TObject);
    procedure MDIFORM1Click(Sender: TObject);
    procedure MDIFORM21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ILE1Click(Sender: TObject);
    procedure CASCADE1Click(Sender: TObject);
    procedure MDIFORM31Click(Sender: TObject);
    procedure MDIFORM41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;
  nama: string;

implementation

uses menu, mdi2, mdi3, mdi4;

{$R *.dfm}

procedure Tfrmlogin.Button1Click(Sender: TObject);
begin
  ShowMessage('Test Data');
end;

procedure Tfrmlogin.CASCADE1Click(Sender: TObject);
begin
Cascade;
end;

procedure Tfrmlogin.ILE1Click(Sender: TObject);
begin
          Tile;
end;

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
    frmMenu.BringToFront;
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

procedure Tfrmlogin.MDIFORM31Click(Sender: TObject);
begin
  if (Application.FindComponent('frmMdi3') = nil) then
  begin
    frmMdi3 := TfrmMdi3.Create(Application);
    frmMdi3.FormStyle := fsMDIChild;
    frmMdi3.BringToFront;
    frmMdi3.Show;
  end
  else
  begin
    frmMdi3.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM41Click(Sender: TObject);
begin
    if (Application.FindComponent('frmMdi4') = nil) then
  begin
    frmMdi4 := TfrmMdi4.Create(Application);
    frmMdi4.FormStyle := fsMDIChild;
    frmMdi4.BringToFront;
    frmMdi4.Show;
  end
  else
  begin
    frmMdi4.BringToFront;
  end;
end;

end.
