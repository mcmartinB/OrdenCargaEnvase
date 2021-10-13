unit UDTraspasar;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient;

type
  TDTraspasar = class(TDataModule)
    QCabCarga: TQuery;
    QCabCargaorden_occ: TIntegerField;
    QCabCargaempresa_occ: TStringField;
    QCabCargacentro_salida_occ: TStringField;
    QCabCargan_albaran_occ: TIntegerField;
    QCabCargafecha_occ: TDateField;
    QCabCargahora_occ: TStringField;
    QCabCargacliente_sal_occ: TStringField;
    QCabCargadir_sum_occ: TStringField;
    QCabCargacliente_fac_occ: TStringField;
    QCabCargan_pedido_occ: TStringField;
    QCabCargatransporte_occ: TSmallintField;
    QCabCargavehiculo_occ: TStringField;
    QCabCarganota_occ: TMemoField;
    QCabCargastatus_occ: TIntegerField;
    QLinCargaSalida: TQuery;
    QCabAlbaran: TQuery;
    QLinAlbaran: TQuery;
    QGetNumeroAlbaran: TQuery;
    QUpdateNumeroAlbaran: TQuery;
    QCabAlbaranempresa_sc: TStringField;
    QCabAlbarancentro_salida_sc: TStringField;
    QCabAlbarann_albaran_sc: TIntegerField;
    QCabAlbaranfecha_sc: TDateField;
    QCabAlbaranhora_sc: TStringField;
    QCabAlbarancliente_sal_sc: TStringField;
    QCabAlbarandir_sum_sc: TStringField;
    QCabAlbarancliente_fac_sc: TStringField;
    QCabAlbarann_pedido_sc: TStringField;
    QCabAlbaranmoneda_sc: TStringField;
    QCabAlbarantransporte_sc: TSmallintField;
    QCabAlbaranvehiculo_sc: TStringField;
    QCabAlbarann_factura_sc: TIntegerField;
    QCabAlbaranfecha_factura_sc: TDateField;
    QCabAlbarandua_sc: TStringField;
    QCabAlbaranfecha_dua_sc: TDateField;
    QLinAlbaranempresa_sl: TStringField;
    QLinAlbarancentro_salida_sl: TStringField;
    QLinAlbarann_albaran_sl: TIntegerField;
    QLinAlbaranfecha_sl: TDateField;
    QLinAlbarancentro_origen_sl: TStringField;
    QLinAlbaranproducto_sl: TStringField;
    QLinAlbaranenvase_sl: TStringField;
    QLinAlbaranmarca_sl: TStringField;
    QLinAlbarancategoria_sl: TStringField;
    QLinAlbarancalibre_sl: TStringField;
    QLinAlbarancolor_sl: TStringField;
    QLinAlbaranref_transitos_sl: TIntegerField;
    QLinAlbaranunidades_caja_sl: TIntegerField;
    QLinAlbarancajas_sl: TIntegerField;
    QLinAlbarankilos_sl: TFloatField;
    QLinAlbaranprecio_sl: TFloatField;
    QLinAlbaranunidad_precio_sl: TStringField;
    QLinAlbaranimporte_neto_sl: TFloatField;
    QLinAlbaranporc_iva_sl: TFloatField;
    QLinAlbaraniva_sl: TFloatField;
    QLinAlbaranimporte_total_sl: TFloatField;
    QLinAlbarann_palets_sl: TSmallintField;
    QLinAlbarantipo_palets_sl: TStringField;
    QLinAlbarantipo_iva_sl: TStringField;
    QLinAlbaranfederacion_sl: TStringField;
    QLinAlbarancliente_sl: TStringField;
    QLinAlbaranemp_procedencia_sl: TStringField;
    QGetNumeroAlbarancont_albaranes_c: TIntegerField;
    QCabTransito: TQuery;
    QLinTransito: TQuery;
    QGetNumeroTransito: TQuery;
    QUpdateNumeroTransito: TQuery;
    QCabTransitoempresa_tc: TStringField;
    QCabTransitocentro_tc: TStringField;
    QCabTransitoreferencia_tc: TIntegerField;
    QCabTransitofecha_tc: TDateField;
    QCabTransitocentro_destino_tc: TStringField;
    QCabTransitotransporte_tc: TSmallintField;
    QCabTransitovehiculo_tc: TStringField;
    QCabTransitostatus_gastos_tc: TStringField;
    QCabTransitobuque_tc: TStringField;
    QCabTransitodestino_tc: TStringField;
    QCabTransitodua_salida_tc: TStringField;
    QCabTransitofecha_duasal_tc: TDateField;
    QCabTransitodua_entrada_tc: TStringField;
    QCabTransitofecha_duaent_tc: TDateField;
    QCabTransitofactura_control_tc: TIntegerField;
    QCabTransitofecha_facontrol_tc: TDateField;
    QLinTransitoempresa_tl: TStringField;
    QLinTransitocentro_tl: TStringField;
    QLinTransitoreferencia_tl: TIntegerField;
    QLinTransitofecha_tl: TDateField;
    QLinTransitocentro_destino_tl: TStringField;
    QLinTransitocentro_origen_tl: TStringField;
    QLinTransitoref_origen_tl: TIntegerField;
    QLinTransitofecha_origen_tl: TDateField;
    QLinTransitoproducto_tl: TStringField;
    QLinTransitoenvase_tl: TStringField;
    QLinTransitomarca_tl: TStringField;
    QLinTransitocategoria_tl: TStringField;
    QLinTransitocolor_tl: TStringField;
    QLinTransitocalibre_tl: TStringField;
    QLinTransitounidades_caja_tl: TIntegerField;
    QLinTransitocajas_tl: TIntegerField;
    QLinTransitokilos_tl: TFloatField;
    QLinTransitofederacion_tl: TStringField;
    QLinTransitocosechero_tl: TSmallintField;
    QLinTransitoplantacion_tl: TSmallintField;
    QLinTransitoanyo_semana_tl: TStringField;
    QGetNumeroTransitocont_transitos_c: TIntegerField;
    QUpdateCabCarga: TQuery;
    QUpdateLinCarga: TQuery;
    QUpdateStatusCarga: TQuery;
    QCabCargacentro_destino_occ: TStringField;
    QCabCargatraspasada_occ: TIntegerField;
    QCabCargan_palets_occ: TIntegerField;
    QCabCargaporte_bonny_occ: TIntegerField;
    QCabAlbaranporte_bonny_sc: TIntegerField;
    QCabTransitoporte_bonny_tc: TIntegerField;
    QLinCargaTransito: TQuery;
    QCabAlbarann_cmr_sc: TStringField;
    QCabAlbarann_orden_sc: TStringField;
    QCabAlbaranhigiene_sc: TIntegerField;
    QCabAlbarannota_sc: TMemoField;
    QCabCargahigiene_occ: TIntegerField;
    QLinTransitotipo_palet_tl: TStringField;
    QLinTransitopalets_tl: TIntegerField;
    QCabTransitofecha_entrada_tc: TDateField;
    QCabTransiton_cmr_tc: TStringField;
    QCabTransitonota_tc: TMemoField;
    QCabTransiton_orden_tc: TStringField;
    QCabAlbaranoperador_transporte_sc: TSmallintField;
    QCabCargaoperador_transporte_occ: TSmallintField;
    QLineasPalets: TQuery;
    QLineasCarga: TQuery;
    QPesoTeorico: TQuery;
    QCabCargaplanta_origen_occ: TStringField;
    QCabCargaplanta_destino_occ: TStringField;
    QCabCargafecha_pedido_occ: TDateField;
    QCabCargaoperador_occ: TSmallintField;
    QCabCargamuelle_occ: TStringField;
    QCabCarganota_interna_occ: TStringField;
    QCabTransitoplanta_origen_tc: TStringField;
    QCabTransitoplanta_destino_tc: TStringField;
    QCabTransitostatus_kilos_tc: TIntegerField;
    QCabTransitopuerto_tc: TIntegerField;
    QCabTransitoprecio_facontrol_tc: TFloatField;
    QValidarNumeroAlbaran: TQuery;
    QValidarNumeroTransito: TQuery;
    qryPesoVariable: TQuery;
    QLinAlbarancomercial_sl: TStringField;
    QMonedaCliente: TQuery;
    strngfldQLinAlbarannotas_sl: TStringField;
    QCabCargafecha_descarga_occ: TDateField;
    QCabAlbaranfecha_descarga_sc: TDateField;
    usqlLineasPalets: TUpdateSQL;
    strngfldQCabAlbaranhora_tc: TStringField;
    QCabAlbaranfecha_pedido_sc: TDateField;
    qryAux2: TQuery;
    qryAux: TQuery;
    QLinAlbaranid_linea_albaran_sl: TIntegerField;
    QCabAlbaranincoterm_sc: TStringField;
    QCabAlbaranplaza_incoterm_sc: TStringField;
    QLinAlbarankilos_reales_sl: TCurrencyField;
    QLinAlbarankilos_posei_sl: TCurrencyField;
  private
    { Private declarations }
    QLinCargaAux: TQuery;

    procedure ActualizaEstadoOrden( const AEstado: integer );

    procedure PreparaTraspasoAlbaran( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer );
    function  ObtenerNumeroAlbaran: integer;
    procedure PasaCabeceraAlbaran;
    procedure PasaDetalleAlbaran( const AIgnorarPacking: Boolean; const ALinea: integer );
    procedure CerrarTablasAlbaran;

    procedure PreparaTraspasoTransito( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer );
    function  ObtenerNumeroTransito: integer;
    procedure PasaCabeceraTransito;
    procedure PasaDetalleTransito;
    procedure CerrarTablasTransito;
//    procedure PesosPaletToLineasOrden( const AOrden: integer; const APacking, AEsTransito: Boolean );
    function  PesoTeorico( const AEmpresa, AEnvase, AProducto: string; const ACajas: Integer ): Real;
    function  EsPesoVariable( const AEmpresa, AEnvase: string ): Boolean;
    function  GetMonedaCliente( const AEmpresa, ACliente: string ): string;
    function EsProductoDesglose: Boolean;
    procedure ArticuloDesgloseInsertar;

    procedure PonerIncotermPorDefecto;
  public
    { Public declarations }

    Constructor Create( AOwner: TComponent ); Override;

    function  PasarAlbaran( const AEmpresa, ACentro: string; const AFecha: TDateTime;  const AOrden: Integer; const APacking: Boolean ): integer;
    function  PasarTransito( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer; const APacking: Boolean ): integer;
    procedure PesosPaletToLineasOrden( const AOrden: integer; const APacking, AEsTransito: Boolean );
  end;

implementation

{$R *.dfm}

uses Dialogs, Variants, Math, bMath;

Constructor TDTraspasar.Create( AOwner: TComponent );
begin
  inherited;
  //***********************************************************************
  //***********************************************************************
  // CARGA
  //***********************************************************************
  //***********************************************************************
  with QCabCarga.SQL do
  begin
    Clear;
    Add('select * from frf_orden_carga_c');
    Add('where orden_occ = :orden');
  end;
  with QLinCargaSalida.SQL do
  begin
    Clear;
    //Add('select * from frf_orden_carga_l');
    //Add('where orden_ocl = :orden');
    //Add('order by producto_ocl, envase_ocl, cajas_ocl desc ');
    Add('select empresa_ocl,centro_salida_ocl, n_albaran_ocl, fecha_ocl, centro_origen_ocl, ');
    Add('       producto_ocl, envase_ocl, marca_ocl, categoria_ocl, calibre_ocl, color_ocl, ref_transitos_ocl,    ');
    Add('       fecha_transito_ocl, unidades_caja_ocl, sum(cajas_ocl) cajas_ocl, sum(kilos_ocl) kilos_ocl, precio_ocl, unidad_precio_ocl, ');
    Add('       sum(importe_neto_ocl) importe_neto_ocl, porc_iva_ocl, sum(iva_ocl) iva_ocl, sum(importe_total_ocl) importe_total_ocl, ');
    Add('       sum(n_palets_ocl) n_palets_ocl, tipo_palets_ocl, tipo_iva_ocl, federacion_ocl, cliente_ocl, comercial_ocl, emp_procede_ocl, notas_ocl, ');
    Add('       sum(cajas_packing_ocl) cajas_packing_ocl, sum(kilos_packing_ocl) kilos_packing_ocl, sum(palets_packing_ocl) palets_packing_ocl, sum(kilos_reales_ocl) kilos_reales_ocl ');
    Add('from frf_orden_carga_l ');
    Add('where orden_ocl = :orden');
    Add('group by empresa_ocl,centro_salida_ocl, n_albaran_ocl, fecha_ocl, centro_origen_ocl, ');
    Add('       producto_ocl, envase_ocl, marca_ocl, categoria_ocl, calibre_ocl, color_ocl, ref_transitos_ocl, ');
    Add('       fecha_transito_ocl, unidades_caja_ocl, precio_ocl, unidad_precio_ocl, porc_iva_ocl,  ');
    Add('       tipo_palets_ocl, tipo_iva_ocl, federacion_ocl, cliente_ocl, comercial_ocl, emp_procede_ocl, notas_ocl');
    Add('order by producto_ocl, envase_ocl, cajas_ocl desc ');
  end;
  with QLinCargaTransito.SQL do
  begin
    Clear;
    Add('select empresa_ocl,centro_salida_ocl, n_albaran_ocl, fecha_ocl, centro_origen_ocl, ');
    Add('       producto_ocl, envase_ocl, marca_ocl, categoria_ocl, calibre_ocl, color_ocl, ref_transitos_ocl,    ');
    Add('       fecha_transito_ocl, unidades_caja_ocl, sum(cajas_ocl) cajas_ocl, sum(kilos_ocl) kilos_ocl, precio_ocl, unidad_precio_ocl, ');
    Add('       importe_neto_ocl, porc_iva_ocl, iva_ocl, importe_total_ocl, sum(n_palets_ocl) n_palets_ocl, ');
    Add('       tipo_palets_ocl, tipo_iva_ocl, federacion_ocl, cliente_ocl, comercial_ocl, emp_procede_ocl, notas_ocl, ');
    Add('       sum(cajas_packing_ocl) cajas_packing_ocl, sum(kilos_packing_ocl) kilos_packing_ocl, sum(palets_packing_ocl) palets_packing_ocl ');
    Add('from frf_orden_carga_l ');
    Add('where orden_ocl = :orden');
    Add('group by empresa_ocl,centro_salida_ocl, n_albaran_ocl, fecha_ocl, centro_origen_ocl, ');
    Add('       producto_ocl, envase_ocl, marca_ocl, categoria_ocl, calibre_ocl, color_ocl, ref_transitos_ocl, ');
    Add('       fecha_transito_ocl, unidades_caja_ocl, precio_ocl, unidad_precio_ocl, importe_neto_ocl, porc_iva_ocl, iva_ocl, importe_total_ocl, ');
    Add('       tipo_palets_ocl, tipo_iva_ocl, federacion_ocl, cliente_ocl, comercial_ocl,  emp_procede_ocl, notas_ocl');
    Add('order by producto_ocl, envase_ocl, cajas_ocl desc ');
  end;
  with QUpdateStatusCarga.SQL do
  begin
    Clear;
    Add('update frf_orden_carga_c ');
    Add('set traspasada_occ = :estado  ');
    Add('where orden_occ = :orden ');
  end;
  with QUpdateCabCarga.SQL do
  begin
    Clear;
    Add('update frf_orden_carga_c ');
    Add('set n_albaran_occ = :contador  ');
    Add('where orden_occ = :orden ');
  end;
  with QUpdateLinCarga.SQL do
  begin
    Clear;
    Add('update frf_orden_carga_l ');
    Add('set n_albaran_ocl = :contador  ');
    Add('where orden_ocl = :orden ');
  end;
  with QLineasCarga.SQL do
  begin
    Clear;
    Add('select * ');
    Add('from   frf_orden_carga_l ');
    Add('where orden_ocl = :orden ');
    Add('order by producto_ocl, tipo_palets_ocl, envase_ocl, marca_ocl, calibre_ocl ');
  end;
  with QLineasPalets.SQL do
  begin
    Clear;
    //Add('select * ');
    //Add('from   frf_packing_list ');
    //Add('where orden_pl = :orden ');
    //Add('order by producto_pl, tipo_palet_pl, envase_pl, marca_pl, calibre_pl ');

    (*
    Add(' select orden_pl orden, max(fecha_alta_pl) fecha_alta, max(hora_alta_pl) hora_alta, empresa_pl empresa, ');
    Add('       producto_base_pl producto_base, producto_pl producto, ean128_pl ean128, ');
    Add('       ean13_pl ean13, formato_pl formato, formato_cliente_pl formato_cliente, envase_pl envase, ');
    Add('       sum(unidades_caja_pl) unidades_caja, sum(cajas_pl) cajas, marca_pl marca, ');
    Add('       categoria_pl categoria, calibre_pl calibre, color_pl color, max(le_pl) le, ');
    Add('       sum(peso_pl) peso, tipo_palet_pl tipo_palet, cliente_pl cliente, dir_sum_pl dir_sum, ');
    Add('       max(fecha_carga_pl) fecha_carga, max(hora_carga_pl) hora_carga, cod_devolucion cod_devolucion, ');
    Add('       min(caducidad_pl) caducidad, min(bestbefore_pl) bestbefore, max(recoleccion_pl) recoleccion, ');
    Add('       min(fechapedido_pl) fechapedido, pedido_pl pedido, plantacion_pl plantacion, max(lote_pl) lote ');
    Add(' from   frf_packing_list ');
    Add(' where orden_pl = :orden ');
    Add(' group by orden,empresa,producto_base,producto,ean128, ');
    Add('         ean13,formato,formato_cliente,envase,marca, ');
    Add('         categoria,calibre,color,tipo_palet,cliente,dir_sum, ');
    Add('         cod_devolucion, pedido,plantacion ');
    Add(' order by producto, tipo_palet, envase, marca, calibre ');
    *)
    Add(' select empresa_pl empresa, producto_pl producto, ean128_pl ean128, ');
    Add('       envase_pl envase, sum(cajas_pl) cajas, marca_pl marca, categoria_pl categoria, ');
    Add('       calibre_pl calibre, round(sum(peso_pl),2) peso, tipo_palet_pl tipo_palet ');
    Add(' from  frf_packing_list ');
    Add(' where orden_pl = :orden ');
    Add(' group by empresa, producto, ean128, envase, marca, ');
    Add('         categoria, calibre, tipo_palet ');
    Add(' order by producto, tipo_palet, envase, marca, calibre ');
  end;

  //***********************************************************************
  //***********************************************************************
  // ALBARANES
  //***********************************************************************
  //***********************************************************************
  with QCabAlbaran.SQL do
  begin
    Clear;
    Add('select * from frf_salidas_c');
  end;
  with QLinAlbaran.SQL do
  begin
    Clear;
    Add('select * from frf_salidas_l');
  end;
  with QGetNumeroAlbaran.SQL do
  begin
    Clear;
    Clear;
    Add('select cont_albaranes_c ');
    Add('from frf_centros  ');
    Add('where empresa_c = :empresa ');
    Add('  and centro_c = :centro ');
  end;
  with QUpdateNumeroAlbaran.SQL do
  begin
    Clear;
    Add('update frf_centros ');
    Add('set cont_albaranes_c = :contador  ');
    Add('where empresa_c = :empresa ');
    Add('  and centro_c = :centro ');
  end;
  with QValidarNumeroAlbaran.SQL do
  begin
    Clear;
    Add(' select * ');
    Add(' from frf_salidas_c ');
    Add(' where empresa_sc = :empresa ');
    Add(' and centro_salida_sc = :centro ');
    Add(' and year(fecha_sc) = :anyo ');
    Add(' and n_albaran_sc = :albaran ');
  end;


  //***********************************************************************
  //***********************************************************************
  // TRANSITOS
  //***********************************************************************
  //***********************************************************************
  with QCabTransito.SQL do
  begin
    Clear;
    Add('select * from frf_transitos_c');
  end;
  with QLinTransito.SQL do
  begin
    Clear;
    Add('select * from frf_transitos_l');
  end;
  with QGetNumeroTransito.SQL do
  begin
    Clear;
    Clear;
    Add('select cont_transitos_c ');
    Add('from frf_centros  ');
    Add('where empresa_c = :empresa ');
    Add('  and centro_c = :centro ');
  end;
  with QUpdateNumeroTransito.SQL do
  begin
    Clear;
    Add('update frf_centros ');
    Add('set cont_transitos_c = :contador  ');
    Add('where empresa_c = :empresa ');
    Add('  and centro_c = :centro ');
  end;
  with QValidarNumeroTransito.SQL do
  begin
    Clear;
    Add(' select * ');
    Add(' from frf_transitos_c ');
    Add(' where empresa_tc = :empresa ');
    Add(' and centro_tc = :centro ');
    Add(' and year(fecha_tc) = :anyo ');
    Add(' and referencia_tc = :referencia ');
  end;

  //***********************************************************************
  //***********************************************************************
  // TRANSITOS
  //***********************************************************************
  //***********************************************************************
  with QPesoTeorico.SQL do
  begin
    Clear;
    Add('select peso_neto_e peso');
    Add('from frf_envases ');
    Add('where producto_e = :producto ');
    Add('and envase_e = :envase ');
  end;
  with qryPesoVariable.SQL do
  begin
    Clear;
    Add('select peso_variable_e ');
    Add('from frf_envases ');
    Add('where envase_e = :envase ');
  end;

  with QMonedaCliente do
  begin
    SQL.Clear;
    SQL.add(' select moneda_c ');
    SQL.add(' from frf_clientes ');
    SQL.add(' where cliente_c  = :cliente ');
  end;
end;

function TDTraspasar.GetMonedaCliente( const AEmpresa, ACliente: string ): string;
begin
  QMonedaCliente.ParamByName('cliente').AsString:= ACliente;
  QMonedaCliente.Open;
  if not QMonedaCliente.IsEmpty then
  begin
    result:= QMonedaCliente.Fields[0].asstring;
  end
  else
  begin
    result:= 'EUR';
  end;
  QMonedaCliente.Close;
end;

procedure TDTraspasar.PreparaTraspasoAlbaran( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer );
var
  iDay, iMonth, iYear: Word;
  iAlbaran: integer;
begin
  QGetNumeroAlbaran.ParamByName('empresa').AsString:= AEmpresa;
  QGetNumeroAlbaran.ParamByName('centro').AsString:= ACentro;
  QGetNumeroAlbaran.Open;
  iAlbaran:= QGetNumeroAlbarancont_albaranes_c.AsInteger;

  DecodeDate( AFecha, iYear, iMonth, iDay );
  QValidarNumeroAlbaran.ParamByName('empresa').AsString:= AEmpresa;
  QValidarNumeroAlbaran.ParamByName('centro').AsString:= ACentro;
  QValidarNumeroAlbaran.ParamByName('anyo').AsInteger:= iYear;
  QValidarNumeroAlbaran.ParamByName('albaran').AsInteger:= iAlbaran;
  QValidarNumeroAlbaran.Open;
  if not QValidarNumeroAlbaran.IsEmpty then
  begin
    QGetNumeroAlbaran.Close;
    QValidarNumeroAlbaran.Close;
    raise Exception.Create('Numero de albarán ' + IntToStr(iAlbaran) +
                           ' ya usado en el año ' + IntToStr(iYear) + #13 + #10 +
                           'Por favor revise el contador de albaranes.');
  end;
  QValidarNumeroAlbaran.Close;

  QCabCarga.ParamByName('orden').AsInteger:= AOrden;
  QLinCargaSalida.ParamByName('orden').AsInteger:= AOrden;
  QLinCargaAux:= QLinCargaSalida;
  QUpdateStatusCarga.ParamByName('orden').AsInteger:= AOrden;
  QUpdateCabCarga.ParamByName('orden').AsInteger:= AOrden;
  QUpdateLinCarga.ParamByName('orden').AsInteger:= AOrden;

  QCabAlbaran.Open;
  QLinAlbaran.Open;
  QUpdateNumeroAlbaran.ParamByName('empresa').AsString:= AEmpresa;
  QUpdateNumeroAlbaran.ParamByName('centro').AsString:= ACentro;
end;

procedure TDTraspasar.PreparaTraspasoTransito( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer );
var
  iDay, iMonth, iYear: Word;
  iAlbaran: integer;
begin
  QGetNumeroTransito.ParamByName('empresa').AsString:= AEmpresa;
  QGetNumeroTransito.ParamByName('centro').AsString:= ACentro;
  QGetNumeroTransito.Open;
  iAlbaran:= QGetNumeroTransitocont_transitos_c.AsInteger;

  DecodeDate( AFecha, iYear, iMonth, iDay );
  QValidarNumeroTransito.ParamByName('empresa').AsString:= AEmpresa;
  QValidarNumeroTransito.ParamByName('centro').AsString:= ACentro;
  QValidarNumeroTransito.ParamByName('anyo').AsInteger:= iYear;
  QValidarNumeroTransito.ParamByName('referencia').AsInteger:= iAlbaran;
  QValidarNumeroTransito.Open;
  if not QValidarNumeroTransito.IsEmpty then
  begin
    QGetNumeroTransito.Close;
    QValidarNumeroTransito.Close;
    raise Exception.Create('Numero de tránsito ' + IntToStr(iAlbaran) +
                           ' ya usado en el año ' + IntToStr(iYear) + #13 + #10 +
                           'Por favor revise el contador de tránsitos.');
  end;
  QValidarNumeroTransito.Close;

  QCabCarga.ParamByName('orden').AsInteger:= AOrden;
  QLinCargaTransito.ParamByName('orden').AsInteger:= AOrden;
  QLinCargaAux:= QLinCargaTransito;
  QUpdateStatusCarga.ParamByName('orden').AsInteger:= AOrden;
  QUpdateCabCarga.ParamByName('orden').AsInteger:= AOrden;
  QUpdateLinCarga.ParamByName('orden').AsInteger:= AOrden;
  QCabTransito.Open;
  QLinTransito.Open;
  QUpdateNumeroTransito.ParamByName('empresa').AsString:= AEmpresa;
  QUpdateNumeroTransito.ParamByName('centro').AsString:= ACentro;
end;

function TDTraspasar.PasarAlbaran( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer; const APacking: Boolean ): integer;
var id_linea:integer;
    bEsTransito: boolean;
begin
  bEsTransito := false;
  PesosPaletToLineasOrden( AOrden, APacking, bEsTransito );
  PreparaTraspasoAlbaran( AEmpresa, ACentro, AFecha, AOrden);
  result:= ObtenerNumeroAlbaran;

  PasaCabeceraAlbaran;
  id_linea := 0;
  QLinCargaAux.First;
  While not QLinCargaAux.Eof do
  begin
       id_linea := id_linea + 1;
       PasaDetalleAlbaran( True, id_linea );
       QLinCargaAux.Next;
  end;

  //Comprobar que todos los palets han sido pasados correctamente

  ActualizaEstadoOrden( 1 );
  CerrarTablasAlbaran;
end;

function TDTraspasar.ObtenerNumeroAlbaran: integer;
var
  iAlbaran: integer;
begin
  iAlbaran:= QGetNumeroAlbarancont_albaranes_c.AsInteger;
  //iAlbaran:= 999666;
  QUpdateNumeroAlbaran.ParamByName('contador').AsInteger:= iAlbaran + 1;
  QUpdateNumeroAlbaran.ExecSQL;

  QUpdateCabCarga.ParamByName('contador').AsInteger:= iAlbaran;
  QUpdateCabCarga.ExecSQL;
  QUpdateLinCarga.ParamByName('contador').AsInteger:= iAlbaran;
  QUpdateLinCarga.ExecSQL;
  QCabCarga.Open;
  QLinCargaAux.Open;
  result:= iAlbaran;
end;

procedure TDTraspasar.PasaCabeceraAlbaran;
begin
  QCabAlbaran.Insert;
  QCabAlbaranempresa_sc.Value:= QCabCargaempresa_occ.Value;
  QCabAlbarancentro_salida_sc.Value:= QCabCargacentro_salida_occ.Value;
  QCabAlbarann_albaran_sc.Value:= QCabCargan_albaran_occ.Value;
  QCabAlbaranfecha_sc.Value:= QCabCargafecha_occ.Value;
  QCabAlbaranhora_sc.Value:= QCabCargahora_occ.Value;

  QCabAlbarancliente_sal_sc.Value:= QCabCargacliente_sal_occ.Value;
  QCabAlbarandir_sum_sc.Value:= QCabCargadir_sum_occ.Value;
  QCabAlbarancliente_fac_sc.Value:= QCabCargacliente_fac_occ.Value;

  QCabAlbarann_pedido_sc.Value:= QCabCargan_pedido_occ.Value;

  if ( QCabCargafecha_pedido_occ.Value <> 0 ) and ( QCabCargafecha_pedido_occ.Value <> null ) then
    QCabAlbaranfecha_pedido_sc.Value:= QCabCargafecha_pedido_occ.Value;

  if ( QCabCargafecha_descarga_occ.Value <> 0 ) and ( QCabCargafecha_descarga_occ.Value <> null ) then
    QCabAlbaranfecha_descarga_sc.Value:= QCabCargafecha_descarga_occ.Value;

  QCabAlbaranmoneda_sc.Value:= GetMonedaCliente( QCabCargaempresa_occ.AsString, QCabCargacliente_sal_occ.Value );

  QCabAlbarantransporte_sc.Value:= QCabCargatransporte_occ.Value;
  QCabAlbaranoperador_transporte_sc.Value:= QCabCargaoperador_transporte_occ.Value;
  QCabAlbaranporte_bonny_sc.Value:= QCabCargaporte_bonny_occ.Value;
  QCabAlbaranvehiculo_sc.Value:= QCabCargavehiculo_occ.Value;

  QCabAlbaranhigiene_sc.AsInteger:= QCabCargahigiene_occ.AsInteger;
  QCabAlbarann_orden_sc.AsString:= QCabCargaorden_occ.AsString;
  QCabAlbarannota_sc.AsString:= QCabCarganota_occ.AsString;

  PonerIncotermPorDefecto;

  QCabAlbaran.Post;
end;

function  TDTraspasar.PesoTeorico( const AEmpresa, AEnvase, AProducto: string; const ACajas: Integer ): Real;
begin
  with QPesoTeorico do
  begin
    ParamByName('envase').AsString:= AEnvase;
    ParamByName('producto').AsString:= AProducto;
    Open;
    Result:= SimpleRoundTo(FieldByName('peso').AsFloat * ACajas, -2);
    Close;
  end;
end;

procedure TDTraspasar.PonerIncotermPorDefecto;
begin
  with qryAux do
  begin
    SQL.Clear;
    SQL.Add(' select incoterm_c, plaza_incoterm_c ');
    SQL.Add(' from frf_clientes ');
    SQL.Add(' where cliente_c = :cliente ');
    ParamByName('cliente').AsString:= QCabCargacliente_sal_occ.Asstring;
    Open;
    if FieldByname('incoterm_c').AsString <> '' then
    begin
      QCabAlbaranincoterm_sc.Asstring:= FieldByname('incoterm_c').AsString;
      QCabAlbaranplaza_incoterm_sc.Asstring:= FieldByname('plaza_incoterm_c').AsString;
    end;
   Close;
  end;
end;

function TDTraspasar.EsPesoVariable( const AEmpresa, AEnvase: string ): Boolean;
begin
  with qryPesoVariable do
  begin
    ParamByName('envase').AsString:= AEnvase;
    Open;
    Result:= FieldByName('peso_variable_e').AsInteger = 1;
    Close;
  end;
end;

function TDTraspasar.EsProductoDesglose: Boolean;
begin
  with qryAux do
  begin
    SQL.Clear;
    SQL.Add('select producto_desglose_p ');
    SQL.Add('  from frf_productos ');
    SQL.Add(' where producto_p = :producto ');
    ParamByName('producto').AsString := QLinAlbaran.FieldByName('producto_sl').AsString;
    Open;
    try
      result := (FieldByName('producto_desglose_p').AsString = 'S');
    finally
      Close;
    end;
  end;
end;

procedure TDTraspasar.PesosPaletToLineasOrden( const AOrden: Integer; const APacking, AEsTransito: Boolean );
var
  sPalets: string;
  iCount: Integer;
  aiCajas, aiPalets: array of Integer;
  arKilos, arTeoricos, arReales: array of Real;
  bEsPesoReal: boolean;
begin
  if APacking then
  begin
    sPalets:= '';
    QLineasCarga.ParamByName('orden').AsInteger:= AOrden;
    QLineasPalets.ParamByName('orden').AsInteger:= AOrden;
    QLineasCarga.Open;
    QLineasPalets.Open;

    //Inicalizar
    iCount:= 0;
    while not QLineasCarga.Eof do
    begin
      QLineasCarga.Next;
      Inc( iCount );
    end;
    SetLength( aiCajas, iCount );
    SetLength( aiPalets, iCount );
    SetLength( arKilos, iCount );
    SetLength( arTeoricos, iCount );
    SetLength( arReales, iCount );
    for iCount:= 0 to Length( aiCajas ) - 1 do
    begin
      aiCajas[ iCount ]:= 0;
      aiPalets[ iCount ]:= 0;
      arKilos[ iCount ]:= 0;
      arTeoricos[ iCount ]:= 0;
    end;


    //Zero pasada
    QLineasCarga.First;
    iCount:= 0;
    while not QLineasCarga.Eof do
    begin
      QLineasPalets.First;
      while not QLineasPalets.Eof do
      begin
        if ( QLineasCarga.FieldByName('producto_ocl').AsString = QLineasPalets.FieldByName('producto').AsString ) and
           ( QLineasCarga.FieldByName('tipo_palets_ocl').AsString = QLineasPalets.FieldByName('tipo_palet').AsString ) and
           ( QLineasCarga.FieldByName('envase_ocl').AsString = QLineasPalets.FieldByName('envase').AsString ) and
           ( QLineasCarga.FieldByName('marca_ocl').AsString = QLineasPalets.FieldByName('marca').AsString ) and
           ( QLineasCarga.FieldByName('calibre_ocl').AsString = QLineasPalets.FieldByName('calibre').AsString ) and
           //solo se rellena en SAT los llanos
           ( aiCajas[ iCount ] < QLineasCarga.FieldByName('cajas_ocl').AsFloat ) then
        begin
          aiCajas[iCount]:= aiCajas[iCount] + QLineaspalets.FieldByName('cajas').AsInteger;
          arKilos[iCount]:= arKilos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

          if QLineaspalets.FieldByName('peso').AsFloat = 0 then
            arReales[iCount]:= arReales[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                 QLineaspalets.FieldByName('envase').AsString,
                                                 QLineaspalets.FieldByName('producto').AsString,
                                                 QLineaspalets.FieldByName('cajas').AsInteger )
          else
            arReales[iCount]:= arReales[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

          if not AEsTransito then
            bEsPesoReal := false
          else
            bEsPesoReal := QLineasCarga.fieldbyName('es_peso_real_ocl').AsInteger = 1;

          if bEsPesoReal then
          begin
            if (QLineaspalets.FieldByName('peso').AsFloat = 0) then
              arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                 QLineaspalets.FieldByName('envase').AsString,
                                                 QLineaspalets.FieldByName('producto').AsString,
                                                 QLineaspalets.FieldByName('cajas').AsInteger )
            else
              arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
          end
          else
          begin
            if ( QLineaspalets.FieldByName('peso').AsFloat = 0 ) or
               ( not EsPesoVariable( QLineaspalets.FieldByName('empresa').AsString, QLineaspalets.FieldByName('envase').AsString ) ) then
              arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                               QLineaspalets.FieldByName('envase').AsString,
                                                               QLineaspalets.FieldByName('producto').AsString,
                                                               QLineaspalets.FieldByName('cajas').AsInteger )
            else
              arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
          end;

          if Pos( QLineaspalets.FieldByName('ean128').AsString, sPalets ) = 0 then
          begin
            aiPalets[iCount]:= aiPalets[iCount] + 1;
            sPalets:= sPalets + QLineaspalets.FieldByName('ean128').AsString + ',';
          end;
          QLineaspalets.Delete;
        end
        else
        begin
          QLineaspalets.Next;
        end;
      end;
      QLineasCarga.Next;
      inc( iCount );
    end;

    //Primera pasada
    if not QLineasPalets.IsEmpty then
    begin
      QLineasCarga.First;
      iCount:= 0;
      while not QLineasCarga.Eof do
      begin
        QLineasPalets.First;
        while not QLineasPalets.Eof do
        begin
          if ( QLineasCarga.FieldByName('producto_ocl').AsString = QLineasPalets.FieldByName('producto').AsString ) and
             ( QLineasCarga.FieldByName('tipo_palets_ocl').AsString = QLineasPalets.FieldByName('tipo_palet').AsString ) and
             ( QLineasCarga.FieldByName('envase_ocl').AsString = QLineasPalets.FieldByName('envase').AsString ) and
             ( QLineasCarga.FieldByName('marca_ocl').AsString = QLineasPalets.FieldByName('marca').AsString ) and
             //solo se rellena en SAT los llanos
             ( aiCajas[ iCount ] < QLineasCarga.FieldByName('cajas_ocl').AsFloat ) then
          begin
            aiCajas[iCount]:= aiCajas[iCount] + QLineaspalets.FieldByName('cajas').AsInteger;
            arKilos[iCount]:= arKilos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

          if QLineaspalets.FieldByName('peso').AsFloat = 0 then
            arReales[iCount]:= arReales[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                 QLineaspalets.FieldByName('envase').AsString,
                                                 QLineaspalets.FieldByName('producto').AsString,
                                                 QLineaspalets.FieldByName('cajas').AsInteger )
          else
            arReales[iCount]:= arReales[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

            if not AEsTransito then
              bEsPesoReal := false
            else
              bEsPesoReal := QLineasCarga.fieldbyName('es_peso_real_ocl').AsInteger = 1;

            if bEsPesoReal then
            begin
              if (QLineaspalets.FieldByName('peso').AsFloat = 0) then
                arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                   QLineaspalets.FieldByName('envase').AsString,
                                                   QLineaspalets.FieldByName('producto').AsString,
                                                   QLineaspalets.FieldByName('cajas').AsInteger )
              else
                arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
            end
            else
            begin
              if ( QLineaspalets.FieldByName('peso').AsFloat = 0 ) or
                 ( not EsPesoVariable( QLineaspalets.FieldByName('empresa').AsString, QLineaspalets.FieldByName('envase').AsString ) ) then
                arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                                 QLineaspalets.FieldByName('envase').AsString,
                                                                 QLineaspalets.FieldByName('producto').AsString,
                                                                 QLineaspalets.FieldByName('cajas').AsInteger )
              else
                arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
            end;

            if Pos( QLineaspalets.FieldByName('ean128').AsString, sPalets ) = 0 then
            begin
              aiPalets[iCount]:= aiPalets[iCount] + 1;
              sPalets:= sPalets + QLineaspalets.FieldByName('ean128').AsString + ',';
            end;
           QLineaspalets.Delete;
          end
          else
          begin
            QLineaspalets.Next;
          end;
        end;
        QLineasCarga.Next;
        inc( iCount );
      end;
    end;

    //Segunda pasada, eliminamos calibre
    if not QLineasPalets.IsEmpty then
    begin
      QLineasCarga.First;
      iCount:= 0;
      while not QLineasCarga.Eof do
      begin
        QLineasPalets.First;
        while not QLineasPalets.Eof do
        begin
          if ( QLineasCarga.FieldByName('producto_ocl').AsString = QLineasPalets.FieldByName('producto').AsString ) and
             ( QLineasCarga.FieldByName('tipo_palets_ocl').AsString = QLineasPalets.FieldByName('tipo_palet').AsString ) and
             ( QLineasCarga.FieldByName('envase_ocl').AsString = QLineasPalets.FieldByName('envase').AsString ) and
             //solo se rellena en SAT los llanos
             ( aiCajas[ iCount ] < QLineasCarga.FieldByName('cajas_ocl').AsFloat ) then
          begin
            aiCajas[iCount]:= aiCajas[iCount] + QLineaspalets.FieldByName('cajas').AsInteger;
            arKilos[iCount]:= arKilos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

          if QLineaspalets.FieldByName('peso').AsFloat = 0 then
            arReales[iCount]:= arReales[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                 QLineaspalets.FieldByName('envase').AsString,
                                                 QLineaspalets.FieldByName('producto').AsString,
                                                 QLineaspalets.FieldByName('cajas').AsInteger )
          else
            arReales[iCount]:= arReales[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

            if not AEsTransito then
              bEsPesoReal := false
            else
              bEsPesoReal := QLineasCarga.fieldbyName('es_peso_real_ocl').AsInteger = 1;

            if bEsPesoReal then
            begin
              if (QLineaspalets.FieldByName('peso').AsFloat = 0) then
                arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                   QLineaspalets.FieldByName('envase').AsString,
                                                   QLineaspalets.FieldByName('producto').AsString,
                                                   QLineaspalets.FieldByName('cajas').AsInteger )
              else
                arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
            end
            else
            begin
              if ( QLineaspalets.FieldByName('peso').AsFloat = 0 ) or
                 ( not EsPesoVariable( QLineaspalets.FieldByName('empresa').AsString, QLineaspalets.FieldByName('envase').AsString ) ) then
                arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                                 QLineaspalets.FieldByName('envase').AsString,
                                                                 QLineaspalets.FieldByName('producto').AsString,
                                                                 QLineaspalets.FieldByName('cajas').AsInteger )
              else
                arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
            end;

            if Pos( QLineaspalets.FieldByName('ean128').AsString, sPalets ) = 0 then
            begin
              aiPalets[iCount]:= aiPalets[iCount] + 1;
              sPalets:= sPalets + QLineaspalets.FieldByName('ean128').AsString + ',';
            end;
            QLineaspalets.Delete;
          end
          else
          begin
            QLineaspalets.Next;
          end;
        end;
        QLineasCarga.Next;
        inc( iCount );
      end;

      //tercera pasada, eliminamos marca
      if not QLineasPalets.IsEmpty then
      begin
        QLineasCarga.First;
        iCount:= 0;
        while not QLineasCarga.Eof do
        begin
          QLineasPalets.First;
          while not QLineasPalets.Eof do
          begin
            if ( QLineasCarga.FieldByName('producto_ocl').AsString = QLineasPalets.FieldByName('producto').AsString ) and
               ( QLineasCarga.FieldByName('tipo_palets_ocl').AsString = QLineasPalets.FieldByName('tipo_palet').AsString ) and
               ( QLineasCarga.FieldByName('envase_ocl').AsString = QLineasPalets.FieldByName('envase').AsString ) and
               ( aiCajas[ iCount ] < QLineasCarga.FieldByName('cajas_ocl').AsFloat )  then
            begin
              aiCajas[iCount]:= aiCajas[iCount] + QLineaspalets.FieldByName('cajas').AsInteger;
              arKilos[iCount]:= arKilos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

              if QLineaspalets.FieldByName('peso').AsFloat = 0 then
                arReales[iCount]:= arReales[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                     QLineaspalets.FieldByName('envase').AsString,
                                                     QLineaspalets.FieldByName('producto').AsString,
                                                     QLineaspalets.FieldByName('cajas').AsInteger )
              else
                arReales[iCount]:= arReales[iCount] + QLineaspalets.FieldByName('peso').AsFloat;

              if not AEsTransito then
                bEsPesoReal := false
              else
                bEsPesoReal := QLineasCarga.fieldbyName('es_peso_real_ocl').AsInteger = 1;

              if bEsPesoReal then
              begin
                if (QLineaspalets.FieldByName('peso').AsFloat = 0) then
                  arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                     QLineaspalets.FieldByName('envase').AsString,
                                                     QLineaspalets.FieldByName('producto').AsString,
                                                     QLineaspalets.FieldByName('cajas').AsInteger )
                else
                  arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
              end
              else
              begin
                if ( QLineaspalets.FieldByName('peso').AsFloat = 0 ) or
                   ( not EsPesoVariable( QLineaspalets.FieldByName('empresa').AsString, QLineaspalets.FieldByName('envase').AsString ) ) then
                  arTeoricos[iCount]:= arTeoricos[iCount] + PesoTeorico( QLineaspalets.FieldByName('empresa').AsString,
                                                                   QLineaspalets.FieldByName('envase').AsString,
                                                                   QLineaspalets.FieldByName('producto').AsString,
                                                                   QLineaspalets.FieldByName('cajas').AsInteger )
                else
                  arTeoricos[iCount]:= arTeoricos[iCount] + QLineaspalets.FieldByName('peso').AsFloat;
              end;

              if Pos( QLineaspalets.FieldByName('ean128').AsString, sPalets ) = 0 then
              begin
                aiPalets[iCount]:= aiPalets[iCount] + 1;
                sPalets:= sPalets + QLineaspalets.FieldByName('ean128').AsString + ',';
              end;
              QLineaspalets.Delete;
            end
            else
            begin
              QLineaspalets.Next;
            end;
          end;
          QLineasCarga.Next;
          inc( iCount );
        end;
      end;
    end;


    if not QLineasPalets.IsEmpty  then
    begin
      QLineasCarga.Close;
      QLineasPalets.Close;
      raise Exception.Create('Error al extraer los detalles del packing.');
    end
    else
    begin
      QLineasCarga.First;
      iCount:= 0;
      while not QLineasCarga.Eof do
      begin
        QLineasCarga.Edit;
        QLineasCarga.FieldByName('cajas_packing_ocl').AsFloat:= aiCajas[ iCount ];
        QLineasCarga.FieldByName('palets_packing_ocl').AsInteger:= aiPalets[ iCount ];
        QLineasCarga.FieldByName('kilos_reales_ocl').AsFloat:= arReales[ iCount ];
        if arKilos[ iCount ] <> 0 then
        begin
          QLineasCarga.FieldByName('kilos_packing_ocl').AsFloat:= arTeoricos[ iCount ]
        end
        else
        begin
          QLineasCarga.FieldByName('kilos_packing_ocl').AsFloat:= QLineasCarga.FieldByName('kilos_ocl').AsFloat;
        end;
        QLineasCarga.Post;
        QLineasCarga.Next;
        Inc( iCount );
      end;
      QLineasPalets.Close;
      QLineasCarga.Close;
    end;
  end
  else
  begin
    QLineasCarga.ParamByName('orden').AsInteger:= AOrden;
    QLineasCarga.Open;
    while not QLineasCarga.Eof do
    begin
      QLineasCarga.Edit;
      QLineasCarga.FieldByName('kilos_packing_ocl').AsFloat:= QLineasCarga.FieldByName('kilos_ocl').AsFloat;
      QLineasCarga.FieldByName('cajas_packing_ocl').AsFloat:= QLineasCarga.FieldByName('cajas_ocl').AsFloat;
      QLineasCarga.FieldByName('palets_packing_ocl').AsFloat:= QLineasCarga.FieldByName('n_palets_ocl').AsFloat;
      QLineasCarga.FieldByName('kilos_reales_ocl').AsFloat:= QLineasCarga.FieldByName('kilos_ocl').AsFloat;
      QLineasCarga.Post;
      QLineasCarga.Next;
    end;
    QLineasCarga.Close;
  end;
end;

procedure TDTraspasar.PasaDetalleAlbaran( const AIgnorarPacking: Boolean; const ALinea:integer );
begin
  QLinAlbaran.Insert;

  QLinAlbaranempresa_sl.Value:= QLinCargaAux.FieldByName('empresa_ocl').Value;
  QLinAlbarancentro_salida_sl.Value:= QLinCargaAux.FieldByName('centro_salida_ocl').Value;
  QLinAlbarann_albaran_sl.Value:= QLinCargaAux.FieldByName('n_albaran_ocl').Value;
  QLinAlbaranfecha_sl.Value:= QCabCargafecha_occ.Value;
  QLinAlbarancentro_origen_sl.Value:= QLinCargaAux.FieldByName('centro_origen_ocl').Value;
  QLinAlbaranproducto_sl.Value:= QLinCargaAux.FieldByName('producto_ocl').Value;
  QLinAlbaranenvase_sl.Value:= QLinCargaAux.FieldByName('envase_ocl').Value;
  QLinAlbaranmarca_sl.Value:= QLinCargaAux.FieldByName('marca_ocl').Value;
  QLinAlbarancategoria_sl.Value:= QLinCargaAux.FieldByName('categoria_ocl').Value;
  QLinAlbarancalibre_sl.Value:= QLinCargaAux.FieldByName('calibre_ocl').Value;
  QLinAlbarancolor_sl.Value:= QLinCargaAux.FieldByName('color_ocl').Value;
  (*TODO*)//mirar a ver por que pasa un 0 envez de un nulo como ref transito
  QLinAlbaranref_transitos_sl.AsString:=  QLinCargaAux.FieldByName('ref_transitos_ocl').AsString;
  QLinAlbarankilos_sl.Value:= QLinCargaAux.FieldByName('kilos_packing_ocl').Value;

  if QLinAlbarankilos_sl.Value = 0  then
  begin
    QLinAlbaran.Cancel;
    raise Exception.Create('ERROR: No se pueden generar albaranes con lineas con 0 kilos. Por favor revise la orden de carga y packing para comprobar que los pesos sean correctos. ');
  end;
  QLinAlbaran.FieldbyName('kilos_reales_sl').value:= QLinCargaAux.FieldByName('kilos_reales_ocl').Value;
  if QLinAlbaran.FieldbyName('kilos_reales_sl').value >= QLinAlbaran.FieldByName('kilos_sl').Value then
    QLinAlbaran.FieldbyName('kilos_posei_sl').value:= QLinAlbaran.FieldbyName('kilos_reales_sl').value
  else
    QLinAlbaran.FieldbyName('kilos_posei_sl').value:= QLinAlbaran.FieldByName('kilos_sl').Value;

  QLinAlbaranunidades_caja_sl.Value:= QLinCargaAux.FieldByName('unidades_caja_ocl').Value;
  QLinAlbarancajas_sl.Value:= QLinCargaAux.FieldByName('cajas_packing_ocl').Value;
  QLinAlbarann_palets_sl.Value:= QLinCargaAux.FieldByName('palets_packing_ocl').Value;
  QLinAlbarantipo_palets_sl.Value:= QLinCargaAux.FieldByName('tipo_palets_ocl').Value;

  QLinAlbaranprecio_sl.AsFloat:= QLinCargaAux.FieldByName('precio_ocl').AsFloat;
  QLinAlbaranporc_iva_sl.Value:= QLinCargaAux.FieldByName('porc_iva_ocl').Value;
  QLinAlbaranunidad_precio_sl.AsString:= QLinCargaAux.FieldByName('unidad_precio_ocl').AsString;

  if QLinAlbaranunidad_precio_sl.AsString = 'KGS' then
  begin
    QLinAlbaranimporte_neto_sl.AsFloat:= SimpleRoundTo( QLinAlbarankilos_sl.Value * QLinAlbaranprecio_sl.AsFloat, -2);
    QLinAlbaraniva_sl.Value:= SimpleRoundTo( ( QLinAlbaranimporte_neto_sl.AsFloat * QLinAlbaranporc_iva_sl.AsFloat ) / 100, -2);
    QLinAlbaranimporte_total_sl.AsFloat:= QLinAlbaranimporte_neto_sl.AsFloat + QLinAlbaraniva_sl.Value;
  end
  else
  begin
    QLinAlbaranimporte_neto_sl.AsFloat:= QLinCargaAux.FieldByName('importe_neto_ocl').AsFloat;
    QLinAlbaraniva_sl.Value:= QLinCargaAux.FieldByName('iva_ocl').Value;
    QLinAlbaranimporte_total_sl.AsFloat:= QLinCargaAux.FieldByName('importe_total_ocl').AsFloat;
  end;

  QLinAlbarantipo_iva_sl.AsString:= QLinCargaAux.FieldByName('tipo_iva_ocl').AsString;
  QLinAlbaranfederacion_sl.AsString:= QLinCargaAux.FieldByName('federacion_ocl').AsString;
  QLinAlbarancliente_sl.AsString:= QLinCargaAux.FieldByName('cliente_ocl').AsString;
  QLinAlbarancomercial_sl.AsString:= QLinCargaAux.FieldByName('comercial_ocl').AsString;
  strngfldQLinAlbarannotas_sl.AsString:= QLinCargaAux.FieldByName('notas_ocl').AsString;
  QLinAlbaranemp_procedencia_sl.AsString:= QLinCargaAux.FieldByName('emp_procede_ocl').AsString;
  QLinAlbaranid_linea_albaran_sl.AsInteger:= ALinea;

  QLinAlbaran.Post;
  //Producto Desglose
  if EsProductoDesglose then
    ArticuloDesgloseInsertar;
end;

procedure TDTraspasar.ActualizaEstadoOrden( const AEstado: integer );
begin
  //0 -> SIN PASAR
  //1 -> PASADA COMO ALBARAN SALIDA
  //2 -> PASADA COMO ALBARAN TRANSITO
  QUpdateStatusCarga.ParamByName('estado').asinteger:= AEstado;
  QUpdateStatusCarga.ExecSQL;
end;

procedure TDTraspasar.ArticuloDesgloseInsertar;
begin
  // Insertamos en frf_salidas_l2 desglose de producto
  with qryAux do
  begin
    if Active then
    begin
      Cancel;
      Close;
    end;

    SQL.Clear;
    SQL.Add(' select * from frf_articulos_desglose ');
    SQL.Add('  where articulo_ad = :articulo ');

    ParamByName('articulo').AsString := QLinAlbaran.FieldByName('envase_sl').AsString;

    Open;
    if IsEmpty then
        raise Exception.Create('ERROR: No se puede generar el albarán. Falta indicar el % de desglose por producto en el Mant. de Articulos');

    while not Eof do
    begin
      with qryAux2 do
      begin
        SQL.Clear;
        SQL.Add(' insert into frf_salidas_l2 (empresa_sl2, centro_salida_sl2, n_albaran_sl2, fecha_sl2, id_linea_albaran_sl2,' );
        SQL.Add('                             articulo_sl2, producto_sl2, producto_desglose_sl2, porcentaje_sl2, kilos_desglose_sl2) ');
        SQL.Add('                     values (:empresa, :centro, :albaran, :fecha, :id_linea, ');
        SQL.Add('                             :articulo, :producto, :producto_desglose, :porcentaje_desglose, :kilos_desglose) ');
        ParamByName('empresa').AsString := QLinAlbaran.FieldByName('empresa_sl').AsString;
        ParamByName('centro').AsString := QLinAlbaran.FieldByName('centro_salida_sl').AsString;
        ParamByName('albaran').AsString := QLinAlbaran.FieldByName('n_albaran_sl').AsString;
        ParamByName('fecha').AsString := QLinAlbaran.FieldByName('fecha_sl').AsString;
        ParamByName('id_linea').AsInteger := QLinAlbaran.FieldByName('id_linea_albaran_sl').AsInteger;
        ParamByName('articulo').AsString := QLinAlbaran.FieldByName('envase_sl').AsString;
        ParamByName('producto').AsString := QLinAlbaran.FieldByName('producto_sl').AsString;
        ParamByName('producto_desglose').AsString := qryAux.FieldByName('producto_desglose_ad').AsString;
        ParamByName('porcentaje_desglose').AsFloat := qryAux.FieldByName('porcentaje_ad').AsFloat;
        ParamByName('kilos_desglose').AsFloat := bRoundTo(QLinAlbaran.FieldByName('kilos_sl').AsFloat * qryAux.FieldByName('porcentaje_ad').AsFloat / 100, 2);
        try
          ExecSQL;
        finally
          Close;
        end;
      end;

      Next;
    end;
  end;
end;

procedure TDTraspasar.CerrarTablasAlbaran;
begin
  QCabCarga.Close;
  QLinCargaAux.Close;
  QCabAlbaran.Close;
  QLinAlbaran.Close;
  QGetNumeroAlbaran.Close;
end;

function  TDTraspasar.PasarTransito( const AEmpresa, ACentro: string; const AFecha: TDateTime; const AOrden: Integer; const APacking: Boolean ): integer;
var bEsTransito: boolean;
begin
  bEsTransito := true;
  PesosPaletToLineasOrden( AOrden, APacking, bEsTransito );
  PreparaTraspasoTransito( AEmpresa, ACentro, AFecha, AOrden);
  result:= ObtenerNumeroTransito;
  PasaCabeceraTransito;

  QLinCargaAux.First;
  While not QLinCargaAux.Eof do
  begin
       PasaDetalleTransito;
       QLinCargaAux.Next;
  end;

  ActualizaEstadoOrden( 2 );
  CerrarTablasTransito;
end;

function TDTraspasar.ObtenerNumeroTransito: integer;
var
  iTransito: integer;
begin
  iTransito:= QGetNumeroTransitocont_transitos_c.AsInteger;
  QUpdateNumeroTransito.ParamByName('contador').AsInteger:= iTransito + 1;
  QUpdateNumeroTransito.ExecSQL;
  QUpdateCabCarga.ParamByName('contador').AsInteger:= iTransito;
  QUpdateCabCarga.ExecSQL;
  QUpdateLinCarga.ParamByName('contador').AsInteger:= iTransito;
  QUpdateLinCarga.ExecSQL;
  QCabCarga.Open;
  QLinCargaAux.Open;
  result:= iTransito;
end;

procedure TDTraspasar.PasaCabeceraTransito;
begin
  QCabTransito.Insert;
  QCabTransitoempresa_tc.Value:= QCabCargaempresa_occ.Value;
  QCabTransitocentro_tc.Value:= QCabCargacentro_salida_occ.Value;
  QCabTransitoreferencia_tc.Value:= QCabCargan_albaran_occ.Value;
  QCabTransitofecha_tc.Value:= QCabCargafecha_occ.Value;
  QCabTransito.FieldByName('hora_tc').Value:= QCabCargahora_occ.Value;

  QCabTransitoplanta_origen_tc.Value:= QCabCargaplanta_origen_occ.Value;
  QCabTransitoplanta_destino_tc.Value:= QCabCargaplanta_destino_occ.Value;
  QCabTransitocentro_destino_tc.Value:= QCabCargacentro_destino_occ.Value;

  QCabTransitotransporte_tc.Value:= QCabCargatransporte_occ.Value;
  QCabTransitoporte_bonny_tc.Value:= QCabCargaporte_bonny_occ.Value;
  QCabTransitovehiculo_tc.Value:= QCabCargavehiculo_occ.Value;

  if ( QCabTransitoempresa_tc.AsString = '050' )and
     ( QCabTransitocentro_tc.AsString = '6' ) and
     ( QCabTransitocentro_destino_tc.AsString = '1' ) then
  begin
    QCabTransitodestino_tc.AsString:= 'ALC/DDA Nº AUT. ESIC03001001';
  end;

  QCabTransiton_orden_tc.AsString:= QCabCargaorden_occ.AsString;
  QCabTransitonota_tc.AsString:= 'ORDEN DE CARGA Nº ' + QCabCargaorden_occ.AsString + #13 + #10 + QCabCarganota_occ.AsString;

  QCabTransitostatus_gastos_tc.AsString:= 'N';
  QCabTransito.Post;
  QCabTransito.Cancel;
end;


procedure TDTraspasar.PasaDetalleTransito;
begin
  QLinTransito.Insert;

  QLinTransitoempresa_tl.Value:= QLinCargaAux.FieldByName('empresa_ocl').Value;
  QLinTransitocentro_tl.Value:= QLinCargaAux.FieldByName('centro_salida_ocl').Value;
  QLinTransitoreferencia_tl.Value:= QLinCargaAux.FieldByName('n_albaran_ocl').Value;
  QLinTransitofecha_tl.Value:= QCabCargafecha_occ.Value;
  QLinTransitocentro_destino_tl.Value:= QCabCarga.FieldByName('centro_destino_occ').Value;

  QLinTransitocentro_origen_tl.Value:= QLinCargaAux.FieldByName('centro_origen_ocl').Value;
  QLinTransitoref_origen_tl.AsString:=  QLinCargaAux.FieldByName('ref_transitos_ocl').AsString;
  QLinTransitofecha_origen_tl.AsString:= QLinCargaAux.FieldByName('fecha_transito_ocl').AsString;

  QLinTransitoproducto_tl.Value:= QLinCargaAux.FieldByName('producto_ocl').Value;
  QLinTransitoenvase_tl.Value:= QLinCargaAux.FieldByName('envase_ocl').Value;
  QLinTransitomarca_tl.Value:= QLinCargaAux.FieldByName('marca_ocl').Value;
  QLinTransitocategoria_tl.Value:= QLinCargaAux.FieldByName('categoria_ocl').Value;
  QLinTransitocalibre_tl.Value:= QLinCargaAux.FieldByName('calibre_ocl').Value;
  QLinTransitocolor_tl.Value:= QLinCargaAux.FieldByName('color_ocl').Value;

  QLinTransitokilos_tl.AsInteger:= QLinCargaAux.FieldByName('kilos_packing_ocl').AsInteger;

  if QLinTransitokilos_tl.Value = 0  then
  begin
    QLinTransito.Cancel;
    raise Exception.Create('ERROR: No se pueden generar albaranes con lineas con 0 kilos. Por favor revise la orden de carga y packing para comprobar que los pesos sean correctos. ');
  end;

  QLinTransitounidades_caja_tl.Value:= QLinCargaAux.FieldByName('unidades_caja_ocl').Value;
  QLinTransitocajas_tl.Value:= QLinCargaAux.FieldByName('cajas_packing_ocl').Value;
  QLinTransitopalets_tl.Value:= QLinCargaAux.FieldByName('palets_packing_ocl').Value;
  QLinTransitotipo_palet_tl.Value:= QLinCargaAux.FieldByName('tipo_palets_ocl').Value;

  QLinTransitofederacion_tl.AsString:= QLinCargaAux.FieldByName('federacion_ocl').AsString;

  QLinTransito.Post;
  QLinTransito.Cancel;
end;

procedure TDTraspasar.CerrarTablasTransito;
begin
  QCabCarga.Close;
  QLinCargaAux.Close;
  QCabTransito.Close;
  QLinTransito.Close;
  QGetNumeroTransito.Close;
end;

end.
