unit UnitPrinipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D;

type
  TFrmPrincipal = class(TForm)
    lytToolBar1: TLayout;
    Image1: TImage;
    Layout1: TLayout;
    lytSaldo: TLayout;
    Image2: TImage;
    lblSaldoMes: TLabel;
    lblValorSaldo: TLabel;
    lytTotalReceitas: TLayout;
    Image3: TImage;
    lblReceitas: TLabel;
    lblValorReceitas: TLabel;
    lytDespesas: TLayout;
    Image4: TImage;
    lblDespesas: TLabel;
    Label2: TLabel;
    Rectangle1: TRectangle;
    lvLancamentos: TListView;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Label3: TLabel;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    RectAbas: TRectangle;
    Image5: TImage;
    imgAbaHome: TImage;
    imgAbaLanc: TImage;
    imgAbaConfig: TImage;
    Layout3D1: TLayout3D;
    Layout2: TLayout;
    procedure FormShow(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure imgAbaConfigClick(Sender: TObject);
  private
    procedure AddLancamentoLv(id_lancamento: integer; descricao, categoria,
      dt: string; valor: double);
    procedure ListarUltLancamentos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses UnitLancamento, UnitConfig;

procedure TFrmPrincipal.AddLancamentoLv(id_lancamento: integer;
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

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  ListarUltLancamentos;
end;

procedure TFrmPrincipal.imgAbaConfigClick(Sender: TObject);
begin
     if not Assigned(FrmConfig) then
      Application.CreateForm(TFrmConfig, FrmConfig);

      FrmConfig.Show;
end;

procedure TFrmPrincipal.Label3Click(Sender: TObject);
begin
     if not Assigned(FrmLancamento) then
      Application.CreateForm(TFrmLancamento, FrmLancamento);

     FrmLancamento.Show;
end;

procedure TFrmPrincipal.ListarUltLancamentos;
begin
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
  AddLancamentoLv(1, 'Compra de passagem', 'Transporte', '15/15', 45);
end;
 end.
