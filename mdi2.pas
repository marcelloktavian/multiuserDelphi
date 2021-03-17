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
    ADOConnection1: TADOConnection;
    master: TADOQuery;
    detail: TADOQuery;
    AdvStringGrid1: TAdvStringGrid;
    masterid_so: TStringField;
    masternamaperusahaan: TStringField;
    masterkode: TStringField;
    mastertgl_trans: TDateField;
    masterTotalQty: TFloatField;
    masterTotalKg: TFloatField;
    detailkg: TFloatField;
    detailqty: TFloatField;
    detailsetting: TIntegerField;
    detailjasapo: TIntegerField;
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
var sql,sqldetail:String; i,nomor,mastern,detailn:Integer;
begin
  sql:='';
  sql:='SELECT so.id_so,cust.namaperusahaan,so.kode,so.tgl_trans,so.TotalQty,'
  +'so.TotalKg FROM tblso so LEFT JOIN tblpelanggan cust ON (so.id_cust=cust.id_cust) LIMIT 5 ';
  master.Close;
  master.SQL.Clear;
  master.SQL.Text:=sql;
  master.Open;

  master.First;

  with AdvStringGrid1 do
    begin
    //header column
    i:=0;
    // Headers Column
    Cells[1, i] := 'No';
    Cells[2, i] := 'ID_SO';
    Cells[3, i] := 'Customer';
    Cells[4, i] := 'Kode';
    Cells[5, i] := 'Tgl';
    Cells[6, i] := 'Qty';
    Cells[7, i] := 'Kg';

    RowCount := 2;
    FixedRows := 1;

    i := i + 1;
    nomor := 1;

      while not master.Eof do
        begin
           //master
          if not master.Eof then AddRow;

          Ints[1, i] := nomor;
          Cells[2, i] := masterid_so.Value;
          Cells[3, i] := masternamaperusahaan.Value;
          Cells[4, i] := masterkode.Value;
          Cells[5, i] := mastertgl_trans.AsString;
          Cells[6, i] := masterTotalQty.AsString;
          Cells[7, i] := masterTotalKg.AsString;

          mastern := i;
          RowCount := RowCount + 1;
          i:=i+1;
          nomor:=nomor+1;
          master.Next;

          //header detail
          Cells[1, i] := 'Qty';
          Cells[2, i] := 'Kg';
          Cells[3, i] := 'Setting';
          Cells[4, i] := 'Jasa PO';

          //font style
          FontStyles[1, i] := FontStyles[1, i] + [fsBold];
          FontStyles[2, i] := FontStyles[2, i] + [fsBold];
          FontStyles[3, i] := FontStyles[3, i] + [fsBold];
          FontStyles[4, i] := FontStyles[4, i] + [fsBold];

          //cell style
          Colors[1, i] := cl3DLight;
          Colors[2, i] := cl3DLight;
          Colors[3, i] := cl3DLight;
          Colors[4, i] := cl3DLight;


          AdvStringGrid1.RowCount := AdvStringGrid1.RowCount + 1;
          //RowCount := RowCount + 1;
          i := i + 1;

          detailn :=2;

          //query
          sqldetail:='';
          sqldetail:='SELECT sd.kg,sd.qty,sd.setting,sd.jasapo FROM tblsodet sd'
          + ' WHERE sd.id_so='+QuotedStr(masterid_so.Value);
          detail.Close;
          detail.SQL.Clear;
          detail.SQL.Text:=sqldetail;
          detail.Open;

          detail.First;

          while not detail.Eof do
            begin
            if not detail.Eof then AddRow;

              Cells[1, i] := detailqty.AsString;
              Cells[2, i] := detailkg.AsString;
              Cells[3, i] := detailsetting.AsString;
              Cells[4, i] := detailjasapo.AsString;

              i := i + 1;
              detailn := detailn + 1;
              RowCount := RowCount + 1;
              detail.Next;
            end;
            //end detail
            AddNode(mastern,detailn);
        end;
        //end master
          contractall;
          RowCount := RowCount - 1;
    end;
    //end with
end;
// end procedure

end.
