unit uBaseDAO;

interface

uses FireDAC.Comp.Client, uDM, System.SysUtils, Data.DB, Vcl.Dialogs,
     System.Classes;

type
  TBaseDAO = class(TObject)
    private

    protected
      FQry: TFDQuery;
      constructor Create;
      destructor Destroy; override;
      function RetornarDataSet(pSQL: string): TFDQuery;
      function ExecutarComando(pSQL: string): TFDQuery;
  end;

implementation

{ TBaseDAO }

constructor TBaseDAO.Create;
begin
  inherited Create;
  FQry            := TFDQuery.Create(nil);
  FQry.Connection := DM.FDConnection;
end;

destructor TBaseDAO.Destroy;
begin
  try
    if Assigned(FQry) then
      FreeAndNil(FQry);
  except
    on e: exception do
      raise Exception.Create(e.Message);
  end;
end;

function TBaseDAO.ExecutarComando(pSQL: string): TFDQuery;
begin
  try
    DM.FDConnection.StartTransaction;
    FQry.SQL.Text := pSQL;
    FQry.ExecSQL;
//    Result := FQry.RowsAffected;
    DM.FDConnection.Commit;
  except
    DM.FDConnection.Rollback;
  end
end;

function TBaseDAO.RetornarDataSet(pSQL: string): TFDQuery;
begin
  FQry.SQL.Text := pSQL;
  FQry.Active   := True;
  Result        := FQry;
end;

end.
