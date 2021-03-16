unit mdi3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid;

type
  TfrmMdi3 = class(TForm)
    Panel1: TPanel;
    AdvStringGrid1: TAdvStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  Action := caFree;
end;

procedure TfrmMdi3.FormCreate(Sender: TObject);
var
  i, j, k, nomor, detail, master: integer;
begin
  with AdvStringGrid1 do
  begin
    i := 0;

    // header master
    Cells[1, i] := 'No';
    Cells[2, i] := 'Surat Jalan';
    Cells[3, i] := 'Jumlah Qty';
    Cells[4, i] := 'Jumlah Alamat';

    RowCount := 2;
    FixedRows := 1;

    i := i + 1;
    nomor := 1;

    for j := 1 to 3 do
    begin
      // master
      Cells[1, i] := IntToStr(nomor);
      Cells[2, i] := 'SJ211600' + IntToStr(i);
      Cells[3, i] := '28';
      Cells[4, i] := '4';

      master := i;

      RowCount := RowCount + 1;

      nomor := nomor + 1;
      i := i + 1;

      // header detail
      Cells[1, i] := '';
      Cells[2, i] := 'Kode Barang';
      Cells[3, i] := 'Nama Barang';
      Cells[4, i] := 'Qty';
      Cells[5, i] := 'Alamat';
      Cells[6, i] := 'Keterangan';
      Cells[7, i] := 'Status';

      //font style
      FontStyles[1, i] := FontStyles[1, i] + [fsBold];
      FontStyles[2, i] := FontStyles[2, i] + [fsBold];
      FontStyles[3, i] := FontStyles[3, i] + [fsBold];
      FontStyles[4, i] := FontStyles[4, i] + [fsBold];
      FontStyles[5, i] := FontStyles[5, i] + [fsBold];
      FontStyles[6, i] := FontStyles[6, i] + [fsBold];
      FontStyles[7, i] := FontStyles[7, i] + [fsBold];

      //cell style
      Colors[1, i] := cl3DLight;
      Colors[2, i] := cl3DLight;
      Colors[3, i] := cl3DLight;
      Colors[4, i] := cl3DLight;
      Colors[5, i] := cl3DLight;
      Colors[6, i] := cl3DLight;
      Colors[7, i] := cl3DLight;

      AdvStringGrid1.RowCount := AdvStringGrid1.RowCount + 1;
      i := i + 1;

      detail := 2;
      for k := 1 to 4 do
      begin
        Cells[1, i] := '';
        Cells[2, i] := 'KodeBrg' + IntToStr(i);
        Cells[3, i] := 'NamaBrg' + IntToStr(i);
        Cells[4, i] := '7';
        Cells[5, i] := '1';
        Cells[6, i] := 'Ket' + IntToStr(i);
        Cells[7, i] := 'Y';

        i := i + 1;
        detail := detail + 1;
        RowCount := RowCount + 1;
      end;
      AddNode(master, detail);
    end;
    contractall;
    RowCount := RowCount - 1;
  end;

end;

end.
