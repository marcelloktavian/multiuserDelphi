unit mdi3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmMdi3 = class(TForm)
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMdi3: TfrmMdi3;

implementation

{$R *.dfm}

procedure TfrmMdi3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
