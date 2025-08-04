unit UnitLancamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmLancamento = class(TForm)
    Layout1: TLayout;
    Label1: TLabel;
    imgFechar: TImage;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Rectangle1: TRectangle;
    Image2: TImage;
    Image3: TImage;
    RectAbas: TRectangle;
    Layout2: TLayout;
    lblReceitas: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lvLancamentos: TListView;
    procedure FormShow(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AddLancamentoLv(id_lancamento: integer; descricao, categoria,
      dt: string; valor: double);
    procedure ListarLancamentos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamento: TfrmLancamento;

implementation

{$R *.fmx}

procedure TFrmLancamento.AddLancamentoLv(id_lancamento: integer;
                                        descricao, categoria,
                                        dt: string;
                                        valor: double);

var
item: TListViewItem;

begin
  item := lvLancamentos.Items.Add; //inseriu um novo item na lista e jorgo na variavel
  item.Tag := id_lancamento;   //propriedade escondida
  item.Height := 50;

  TListItemtext(item.Objects.FindDrawable('txtDescricao')).Text := descricao;
  TListItemtext(item.Objects.FindDrawable('txtCategoria')).Text := categoria;
  TListItemtext(item.Objects.FindDrawable('txtData')).Text := dt;
  TListItemtext(item.Objects.FindDrawable('txtValor')).Text := FormatFloat('R$#,##0.00', valor);
end;

procedure TFrmLancamento.ListarLancamentos;
begin
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
end;

procedure TfrmLancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := TCloseAction.caFree;
    FrmLancamento := nil;
end;

procedure TfrmLancamento.FormShow(Sender: TObject);
begin
   ListarLancamentos;
end;

procedure TfrmLancamento.imgFecharClick(Sender: TObject);
begin
      Close;
end;

end.
