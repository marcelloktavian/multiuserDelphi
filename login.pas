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
    MDIFORM51: TMenuItem;
    MDIFORM61: TMenuItem;
    MDIFORM71: TMenuItem;
    MDIFORM81: TMenuItem;
    MDIFORM191: TMenuItem;
    MDIFORM101: TMenuItem;
    procedure MDIFORM1Click(Sender: TObject);
    procedure MDIFORM21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ILE1Click(Sender: TObject);
    procedure CASCADE1Click(Sender: TObject);
    procedure MDIFORM31Click(Sender: TObject);
    procedure MDIFORM41Click(Sender: TObject);
    procedure MDIFORM51Click(Sender: TObject);
    procedure MDIFORM61Click(Sender: TObject);
    procedure MDIFORM71Click(Sender: TObject);
    procedure MDIFORM81Click(Sender: TObject);
    procedure MDIFORM191Click(Sender: TObject);
    procedure MDIFORM101Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;
  nama: string;

implementation

uses menu, mdi2, mdi3, mdi4, mdi5, mdi6, mdi7, mdi8, mdi9, mdi10;

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

procedure Tfrmlogin.MDIFORM51Click(Sender: TObject);
begin
     if (Application.FindComponent('frmMdi5') = nil) then
  begin
    frmMdi5 := TfrmMdi5.Create(Application);
    frmMdi5.FormStyle := fsMDIChild;
    frmMdi5.BringToFront;
    frmMdi5.Show;
  end
  else
  begin
    frmMdi5.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM61Click(Sender: TObject);
begin
 if (Application.FindComponent('frmMdi6') = nil) then
  begin
    frmMdi6 := TfrmMdi6.Create(Application);
    frmMdi6.FormStyle := fsMDIChild;
    frmMdi6.BringToFront;
    frmMdi6.Show;
  end
  else
  begin
    frmMdi6.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM71Click(Sender: TObject);
begin
if (Application.FindComponent('frmMdi7') = nil) then
  begin
    frmMdi7 := TfrmMdi7.Create(Application);
    frmMdi7.FormStyle := fsMDIChild;
    frmMdi7.BringToFront;
    frmMdi7.Show;
  end
  else
  begin
    frmMdi7.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM81Click(Sender: TObject);
begin
if (Application.FindComponent('frmMdi8') = nil) then
  begin
    frmMdi8 := TfrmMdi8.Create(Application);
    frmMdi8.FormStyle := fsMDIChild;
    frmMdi8.BringToFront;
    frmMdi8.Show;
  end
  else
  begin
    frmMdi8.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM101Click(Sender: TObject);
begin
if (Application.FindComponent('frmMdi10') = nil) then
  begin
    frmMdi10 := TfrmMdi10.Create(Application);
    frmMdi10.FormStyle := fsMDIChild;
    frmMdi10.BringToFront;
    frmMdi10.Show;
  end
  else
  begin
    frmMdi10.BringToFront;
  end;
end;

procedure Tfrmlogin.MDIFORM191Click(Sender: TObject);
begin
if (Application.FindComponent('frmMdi9') = nil) then
  begin
    frmMdi9 := TfrmMdi9.Create(Application);
    frmMdi9.FormStyle := fsMDIChild;
    frmMdi9.BringToFront;
    frmMdi9.Show;
  end
  else
  begin
    frmMdi9.BringToFront;
  end;
end;

end.
