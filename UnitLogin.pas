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
    procedure btnAcessarLoginClick(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
    procedure lblCriarContaClick(Sender: TObject);
    procedure lblAcessarContaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

procedure TfrmLogin.btnAcessarLoginClick(Sender: TObject);
begin
        TabControl.GotoVisibleTab(1);
end;

procedure TfrmLogin.btnCriarContaClick(Sender: TObject);
begin
      TabControl.GotoVisibleTab(2);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
      TabControl.ActiveTab := TabBoasVindas;
end;

procedure TfrmLogin.lblAcessarContaClick(Sender: TObject);
begin
      TabControl.GotoVisibleTab(1);
end;

procedure TfrmLogin.lblCriarContaClick(Sender: TObject);
begin
      TabControl.GotoVisibleTab(2);
end;

end.
