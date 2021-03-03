unit mdi2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMdi2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMdi2: TfrmMdi2;

implementation

{$R *.dfm}

procedure TfrmMdi2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
