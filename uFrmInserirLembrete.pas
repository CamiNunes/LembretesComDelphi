unit uFrmInserirLembrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDM, uLembreteDAO, uLembrete, generics.defaults, generics.collections,
  Vcl.ComCtrls;

type
  TFrmInserirLembrete = class(TForm)
    edtTitulo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MmDescricao: TMemo;
    Label3: TLabel;
    DtpDataHora: TDateTimePicker;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    vLembreteDAO: TLembreteDAO;
    vLembrete: TLembrete;
    procedure PreencherLembrete;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInserirLembrete: TFrmInserirLembrete;

implementation

{$R *.dfm}

procedure TFrmInserirLembrete.FormCreate(Sender: TObject);
begin
  DtpDataHora.DateTime := Now;
  vLembrete    := TLembrete.Create;
  vLembreteDAO := TLembreteDAO.Create;
end;

procedure TFrmInserirLembrete.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(vLembrete) then
      FreeAndNil(vLembrete);
    if Assigned(vLembreteDAO) then
      FreeAndNil(vLembreteDAO);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TFrmInserirLembrete.BtnSalvarClick(Sender: TObject);
begin
  PreencherLembrete;
  if vLembreteDAO.Inserir(vLembrete) then
  begin
    ShowMessage('Registro Inserido com sucesso');
    Close;
  end;
end;

procedure TFrmInserirLembrete.PreencherLembrete;
begin
  vLembrete.Titulo    := EdtTitulo.Text;
  vLembrete.Descricao := MmDescricao.Text;
  vLembrete.DataHora  := DtpDataHora.DateTime;
end;

end.
