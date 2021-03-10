unit mdi2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, Data.DB, Data.Win.ADODB;

type
  TfrmMdi2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    AdvStringGrid1: TAdvStringGrid;
    ADOConnection1: TADOConnection;
    master: TADOQuery;
    detail: TADOQuery;
    masterid_so: TStringField;
    masterkode: TStringField;
    mastertgl_trans: TDateField;
    masterid_cust: TStringField;
    masterTotalKG: TFloatField;
    masterTotalQty: TFloatField;
    masterTotalFaktur: TFloatField;
    masterTotalDisc: TFloatField;
    masterUangMuka: TFloatField;
    masterPiutang: TFloatField;
    masterKeterangan: TStringField;
    masterstatus: TStringField;
    masterlastmodified: TDateTimeField;
    masteruser: TStringField;
    masterarchive: TStringField;
    detailid_SOdet: TAutoIncField;
    detailid_so: TStringField;
    detailid_grey: TStringField;
    detailid_cust: TStringField;
    detailid_w: TStringField;
    detailid_jw: TStringField;
    detailkg: TFloatField;
    detailqty: TFloatField;
    detailhargajual: TFloatField;
    detailsubtotal: TFloatField;
    detailsetting: TIntegerField;
    detailketerangan: TStringField;
    detailhardener: TFloatField;
    detailsoftener: TFloatField;
    detailfiller: TFloatField;
    detailjasapo: TIntegerField;
    detaillastmodified: TDateTimeField;
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
