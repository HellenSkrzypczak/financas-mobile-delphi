unit UnitConfig;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmConfig = class(TForm)
    Label1: TLabel;
    imgFechar: TImage;
    Rectangle2: TRectangle;
    Image1: TImage;
    lblSaldoMes: TLabel;
    Image2: TImage;
    Rectangle1: TRectangle;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Rectangle3: TRectangle;
    Image5: TImage;
    Label3: TLabel;
    Image6: TImage;
    Rectangle4: TRectangle;
    Image7: TImage;
    Label4: TLabel;
    Image8: TImage;
    procedure imgFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.fmx}

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := TCloseAction.caFree;
     FrmConfig := nil;
end;

procedure TfrmConfig.imgFecharClick(Sender: TObject);
begin
     Close;
end;

end.
