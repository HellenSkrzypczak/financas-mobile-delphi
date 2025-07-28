unit UnitLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.Edit;

type
  TfrmLogin = class(TForm)
    TabControl: TTabControl;
    TabBoasVindas: TTabItem;
    TabLogin: TTabItem;
    TabNovaConta: TTabItem;
    LayoutBoasVindas: TLayout;
    imgIconPoupe: TImage;
    lblBoasVindas: TLabel;
    reactAcessarLogin: TRectangle;
    btnAcessarLogin: TSpeedButton;
    reactCriarConta: TRectangle;
    btnCriarConta: TSpeedButton;
    LayoutLogin: TLayout;
    imgIconPoupei: TImage;
    Rectangle2: TRectangle;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    editEmail: TEdit;
    editSenha: TEdit;
    Label3: TLabel;
    lblCriarConta: TLabel;
    LayoutNovaConta: TLayout;
    imgIconPou: TImage;
    RectNovaConta: TRectangle;
    btnAcessar: TSpeedButton;
    lblCriarNovaConta: TLabel;
    edtNome: TEdit;
    edtSenha: TEdit;
    lblAcessarConta: TLabel;
    edtEmail: TEdit;
    edtConfirmeSenha: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

end.
