unit mdi2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, Data.DB, Data.Win.ADODB, AdvUtil;

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
    AdvStringGrid2: TAdvStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmMdi2.FormCreate(Sender: TObject);
var sql:String; i,nomor:Integer;
begin
  sql:='';
  sql:='SELECT * FROM tblso limit 2';
  master.Close;
  master.SQL.Clear;
  master.SQL.Text:=sql;
  master.Open;

  master.First;
  i:=1;
  nomor :=1;

  with AdvStringGrid1 do
    begin
      while not master.Eof do
        begin
          AddNode(i,2);
          RowHeights[i+1] := 150;
          MergeCells(1, i+1, 4, 1);
          CellControls[1, i+1] := AdvStringGrid2;
          ContractNode(i);
          Ints[0,i]:=nomor;
          Cells[1,i]:=masterid_so.Value;
          Cells[2,i]:=mastertgl_trans.AsString;
          Floats[3,i]:=masterTotalKG.Value;
          i:=i+1;
          nomor:=nomor+1;
          master.Next;
          if not master.Eof then AddRow;
          
        end;
    end;
end;

end.
