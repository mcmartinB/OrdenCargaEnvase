unit UFAsignarAlbaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TFAsignarAlbaran = class(TForm)
    btnAceptar: TButton;
    btnCancelar: TButton;
    lblEmpresa: TLabel;
    lblCentro: TLabel;
    lblFecha: TLabel;
    lblAlbaran: TLabel;
    lblCliente: TLabel;
    lblSuministro: TLabel;
    edtEmpresa: TEdit;
    edtCentro: TEdit;
    edtFecha: TEdit;
    edtCliente: TEdit;
    edtSuminisro: TEdit;
    edtAlbaran: TEdit;
    lblDesEmpresa: TLabel;
    lbldesCentro: TLabel;
    lblDesCliente: TLabel;
    lblDesSuministro: TLabel;
    QAux: TQuery;
    QOrden: TQuery;
    QAlbaran: TQuery;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
     iOrden, iAlbaran: Integer;
     dFecha: TDateTime;

     procedure UnirOrdenAlbaran;
     function  ExisteAlbaran: Boolean;
     function PackingConPLacero (const AOrden: integer): Boolean;

     procedure AsignarAlbaran;
     procedure SQLAsignarAlbaranCab;
     procedure SQLAsignarAlbaranLin;
     procedure SQLAsignarAlbaranOrden;

     procedure ActualizarPesosAlbaran( const AOrden: integer; const AEmpresa, ACentro, AFecha, AAlbaran: string);

  public
    { Public declarations }
  end;

  procedure Execute( const AOwnwer: TComponent; const AOrden: string; AEmpresa, ADesEmpresa: string;
                     const ACentro, ADesCentro: string; const ACliente, ADesCliente: string;
                     const ASuministro, ADesSuministro: string; const AFecha: string  );

implementation

{$R *.dfm}
uses UDTraspasar;

var
  FAsignarAlbaran: TFAsignarAlbaran;

  procedure Execute( const AOwnwer: TComponent; const AOrden: string; AEmpresa, ADesEmpresa: string;
                     const ACentro, ADesCentro: string; const ACliente, ADesCliente: string;
                     const ASuministro, ADesSuministro: string; const AFecha: string  );
begin
  FAsignarAlbaran:= TFAsignarAlbaran.Create( AOwnwer );
  try
    FAsignarAlbaran.iOrden:= StrToInt( AOrden );
    FAsignarAlbaran.edtEmpresa.Text:= AEmpresa;
    FAsignarAlbaran.edtCentro.Text:= ACentro;
    FAsignarAlbaran.edtCliente.Text:= ACliente;
    FAsignarAlbaran.edtSuminisro.Text:= ASuministro;
    FAsignarAlbaran.lblDesEmpresa.Caption:= ADesEmpresa;
    FAsignarAlbaran.lblDesCentro.Caption:= ADesCentro;
    FAsignarAlbaran.lblDesCliente.Caption:= ADesCliente;
    FAsignarAlbaran.lblDesSuministro.Caption:= ADesSuministro;
    FAsignarAlbaran.edtFecha.Text:= AFecha;
    FAsignarAlbaran.dFecha:= StrTodate( AFecha );
    FAsignarAlbaran.ShowModal;
  finally
    FreeAndNil( FAsignarAlbaran );
  end;
end;

procedure TFAsignarAlbaran.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFAsignarAlbaran.btnAceptarClick(Sender: TObject);
begin
  UnirOrdenAlbaran;
end;

procedure TFAsignarAlbaran.UnirOrdenAlbaran;
begin
  if TryStrToInt( edtAlbaran.Text , iAlbaran ) then
  begin
    if ExisteAlbaran then
    begin
      AsignarAlbaran;
      ShowMessage('Proceso Finalizado');
      Close;
    end
    else
    begin
      ShowMessage('No existe el albar?n seleccioando.');
    end;
  end
  else
  begin
    ShowMessage('El n?mero de albar?n es de obligada inserci?n.');
  end;
end;

function TFAsignarAlbaran.ExisteAlbaran: Boolean;
begin
  QAux.SQL.Clear;
  QAux.SQL.Add('select * from frf_salidas_c ' );
  QAux.SQL.Add('where empresa_sc = :empresa' );
  QAux.SQL.Add('  and centro_salida_sc = :centro');
  QAux.SQL.Add('  and fecha_sc = :fecha ');
  QAux.SQL.Add('  and n_albaran_sc = :albaran ');
  QAux.SQL.Add('  and cliente_sal_sc = :cliente ' );
  QAux.SQL.Add('  and dir_sum_sc = :suministro ');
  QAux.ParamByName('empresa').AsString:= edtEmpresa.Text;
  QAux.ParamByName('centro').AsString:= edtCentro.Text;
  QAux.ParamByName('fecha').AsDateTime:= dFecha;
  QAux.ParamByName('albaran').AsInteger:= iAlbaran;
  QAux.ParamByName('cliente').AsString:= edtCliente.Text;
  QAux.ParamByName('suministro').AsString:= edtSuminisro.Text;
  QAux.Open;
  result:= not QAux.isempty;
  QAux.Close;
end;

function TFAsignarAlbaran.PackingConPLacero (const AOrden:integer) : Boolean;
begin
  QAux.SQL.Clear;
  QAux.SQL.Add(' select * from frf_packing_list         ');
  QAux.SQL.Add('  where orden_pl = :orden               ');
  QAux.SQL.Add('    and calibre_pl matches ''*PLACER*'' ');
  QAux.ParamByName('orden').AsInteger:= AOrden;
  QAux.Open;
  result:= QAux.isempty;
  QAux.Close;
end;

procedure TFAsignarAlbaran.ActualizarPesosAlbaran(const AOrden:integer; const AEmpresa, ACentro, AFecha, AAlbaran: string);
begin
  with QOrden do
  begin
    SQL.Clear;
    SQL.Add(' select * from frf_orden_carga_l ');
    SQL.Add('   where orden_ocl = :orden ');
    SQL.Add('     and empresa_ocl = :empresa ');
    SQL.Add('     and centro_salida_ocl = :centro ');

    ParamBYName('orden').AsInteger := AOrden;
    ParamBYName('empresa').AsString := AEmpresa;
    ParamBYName('centro').AsString := ACentro;
    Open;

    while not QOrden.Eof do
    begin
      with QAlbaran do
      begin
        if Active then close;

        SQL.Clear;
        SQL.Add(' select * from frf_salidas_l ');
        SQL.Add('  where empresa_sl = :empresa ');
        SQL.Add('    and centro_salida_sl = :centro ');
        SQL.Add('    and n_albaran_sl = :albaran ');
        SQL.Add('    and fecha_sl = :fecha ');
        SQL.Add('    and cliente_sl = :cliente ');
        SQL.Add('    and producto_sl = :producto ');
        SQL.Add('    and envase_sl = :envase ');
        SQL.Add('    and cajas_sl = :cajas ');
        SQL.Add('    and kilos_sl = :kilos ');

        ParamByName('empresa').AsString := AEmpresa;
        ParamByName('centro').AsString := ACentro;
        ParamByName('albaran').AsString := AAlbaran;
        ParamByName('fecha').AsString := AFecha;
        ParamByName('cliente').AsString := QOrden.FieldByName('cliente_ocl').AsString;
        ParamByName('producto').AsString := QOrden.FieldByName('producto_ocl').AsString;
        ParamByName('envase').AsString := QOrden.FieldByName('envase_ocl').AsString;
        ParamByName('cajas').AsFloat := QOrden.FieldByName('cajas_ocl').AsFloat;
        ParamByName('kilos').AsFloat := QOrden.FieldByName('kilos_ocl').AsFloat;
        Open;
        if not QAlbaran.IsEmpty then
        begin
          if not (QAlbaran.State in dsEditModes) then QAlbaran.Edit;

          QAlbaran.FieldByName('kilos_reales_sl').AsFloat := QOrden.FieldByName('kilos_reales_ocl').AsFloat;
          if QAlbaran.FieldbyName('kilos_reales_sl').AsFloat >= QAlbaran.FieldByName('kilos_sl').AsFloat then
            QAlbaran.FieldbyName('kilos_posei_sl').AsFloat:= QAlbaran.FieldbyName('kilos_reales_sl').AsFloat
          else
            QAlbaran.FieldbyName('kilos_posei_sl').AsFloat:= QAlbaran.FieldByName('kilos_sl').AsFloat;

          QAlbaran.Post;
        end;
      end;

      Next;
    end;

  end;
end;

procedure TFAsignarAlbaran.AsignarAlbaran;
var bEsTransito, bPacking: boolean;
    DTraspasar: TDTraspasar;
begin

  DTraspasar:= TDTraspasar.Create( self );
  try
    // Asignamos los calculos de kilos_packing_ocl y kilos_reales_ocl en frf_orden_carga_l
    bEsTransito := false;
    //Si tiene lineas de Placero, ponemos en valor a bPacking a False, igual que cuando forzamos la orden de carga.
    bPacking := PackingConPlacero ( iOrden );
    DTraspasar.PesosPaletToLineasOrden( iOrden, bPacking, bEsTransito );
    //Actualizamos valores de kilos_reales_sl y kilos_posei_sl en albaran
    ActualizarPesosAlbaran( iOrden, edtEmpresa.Text, edtCentro.Text, edtFecha.Text, edtAlbaran.Text);

    //Actualizamos valores de albaran en orden de carga y al contrario.
    SQLAsignarAlbaranCab;
    SQLAsignarAlbaranLin;
    SQLAsignarAlbaranOrden;
    finally
      FreeAndNil( DTraspasar );
    end;
end;

procedure TFAsignarAlbaran.SQLAsignarAlbaranCab;
begin
  QAux.SQL.Clear;
  QAux.SQL.Add(' update frf_orden_carga_c ');
  QAux.SQL.Add(' set  n_albaran_occ = :albaran,  ');
  QAux.SQL.Add('      traspasada_occ = 1  ');
  QAux.SQL.Add(' where orden_occ = :orden ');
  QAux.ParamByName('orden').AsInteger:= iOrden;
  QAux.ParamByName('albaran').AsInteger:= iAlbaran;
  QAux.ExecSQL;
end;

procedure TFAsignarAlbaran.SQLAsignarAlbaranLin;
begin
  QAux.SQL.Clear;
  QAux.SQL.Add(' update frf_orden_carga_l ');
  QAux.SQL.Add(' set  n_albaran_ocl = :albaran  ');
  QAux.SQL.Add(' where orden_ocl = :orden ');
  QAux.ParamByName('orden').AsInteger:= iOrden;
  QAux.ParamByName('albaran').AsInteger:= iAlbaran;
  QAux.ExecSQL;
end;

procedure TFAsignarAlbaran.SQLAsignarAlbaranOrden;
begin
  QAux.SQL.Clear;
  QAux.SQL.Add(' update frf_salidas_c ');
  QAux.SQL.Add(' set  n_orden_sc = :orden  ');
  QAux.SQL.Add(' where empresa_sc = :empresa ');
  QAux.SQL.Add('  and centro_salida_sc = :centro');
  QAux.SQL.Add('  and fecha_sc = :fecha ');
  QAux.SQL.Add('  and n_albaran_sc = :albaran ');
  QAux.ParamByName('empresa').AsString:= edtEmpresa.Text;
  QAux.ParamByName('centro').AsString:= edtCentro.Text;
  QAux.ParamByName('fecha').AsDateTime:= dFecha;
  QAux.ParamByName('albaran').AsInteger:= iAlbaran;
  QAux.ParamByName('orden').AsInteger:= iOrden;
  QAux.ExecSQL;
end;

end.
