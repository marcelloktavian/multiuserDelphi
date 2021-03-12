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
    AdvStringGrid2: TAdvStringGrid;
    AdvStringGrid3: TAdvStringGrid;
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
begin
  AdvStringGrid1.LinearFill(false);

  // add node
  AdvStringGrid1.AddNode(1, 2);
  // set row heights
  AdvStringGrid1.RowHeights[2] := 150;
  // merge cells
  AdvStringGrid1.MergeCells(1, 2, 4, 1);
  // add subgrid
  AdvStringGrid1.CellControls[1, 2] := AdvStringGrid2;
//
  // add node
  AdvStringGrid1.AddNode(3, 2);
  // set row heights
  AdvStringGrid1.RowHeights[4] := 150;
  // merge cells
  AdvStringGrid1.MergeCells(1, 4, 4, 1);
  // add subgrid
  AdvStringGrid1.CellControls[1, 4] := AdvStringGrid3;
//
  // add node
  AdvStringGrid1.AddNode(5, 2);
  // set row heights
  AdvStringGrid1.RowHeights[6] := 150;
  // merge cells
  AdvStringGrid1.MergeCells(1, 6, 4, 1);
  // add subgrid
  AdvStringGrid1.CellControls[1, 6] := AdvStringGrid2;

  // add node
  AdvStringGrid1.AddNode(7, 2);
  // set row heights
  AdvStringGrid1.RowHeights[8] := 150;
  // merge cells
  AdvStringGrid1.MergeCells(1, 8, 4, 1);
  // add subgrid
  AdvStringGrid1.CellControls[1, 8] := AdvStringGrid2;

  // tutup subgrid
  AdvStringGrid1.ContractNode(1);
  AdvStringGrid1.ContractNode(3);
  AdvStringGrid1.ContractNode(5);
  AdvStringGrid1.ContractNode(7);

end;

end.
