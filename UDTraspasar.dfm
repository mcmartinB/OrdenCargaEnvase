object DTraspasar: TDTraspasar
  OldCreateOrder = False
  Height = 737
  Width = 573
  object QCabCarga: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select * from frf_orden_carga_c')
    Left = 88
    Top = 40
    object QCabCargaorden_occ: TIntegerField
      FieldName = 'orden_occ'
      Origin = 'DATABASE.frf_orden_carga_c.orden_occ'
    end
    object QCabCargaempresa_occ: TStringField
      FieldName = 'empresa_occ'
      Origin = 'DATABASE.frf_orden_carga_c.empresa_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargacentro_salida_occ: TStringField
      FieldName = 'centro_salida_occ'
      Origin = 'DATABASE.frf_orden_carga_c.centro_salida_occ'
      FixedChar = True
      Size = 1
    end
    object QCabCargan_albaran_occ: TIntegerField
      FieldName = 'n_albaran_occ'
      Origin = 'DATABASE.frf_orden_carga_c.n_albaran_occ'
    end
    object QCabCargafecha_occ: TDateField
      FieldName = 'fecha_occ'
      Origin = 'DATABASE.frf_orden_carga_c.fecha_occ'
    end
    object QCabCargahora_occ: TStringField
      FieldName = 'hora_occ'
      Origin = 'DATABASE.frf_orden_carga_c.hora_occ'
      FixedChar = True
      Size = 5
    end
    object QCabCargacentro_destino_occ: TStringField
      FieldName = 'centro_destino_occ'
      Origin = 'DATABASE.frf_orden_carga_c.centro_destino_occ'
      FixedChar = True
      Size = 1
    end
    object QCabCargacliente_sal_occ: TStringField
      FieldName = 'cliente_sal_occ'
      Origin = 'DATABASE.frf_orden_carga_c.cliente_sal_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargadir_sum_occ: TStringField
      FieldName = 'dir_sum_occ'
      Origin = 'DATABASE.frf_orden_carga_c.dir_sum_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargacliente_fac_occ: TStringField
      FieldName = 'cliente_fac_occ'
      Origin = 'DATABASE.frf_orden_carga_c.cliente_fac_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargan_pedido_occ: TStringField
      FieldName = 'n_pedido_occ'
      Origin = 'DATABASE.frf_orden_carga_c.n_pedido_occ'
      FixedChar = True
      Size = 15
    end
    object QCabCargatransporte_occ: TSmallintField
      FieldName = 'transporte_occ'
      Origin = 'DATABASE.frf_orden_carga_c.transporte_occ'
    end
    object QCabCargaoperador_transporte_occ: TSmallintField
      FieldName = 'operador_transporte_occ'
      Origin = '"COMER.ALC_BONNYSA".frf_orden_carga_c.operador_transporte_occ'
    end
    object QCabCargavehiculo_occ: TStringField
      FieldName = 'vehiculo_occ'
      Origin = 'DATABASE.frf_orden_carga_c.vehiculo_occ'
      FixedChar = True
    end
    object QCabCargan_palets_occ: TIntegerField
      FieldName = 'n_palets_occ'
      Origin = '"COMER.DESARROLLO".frf_orden_carga_c.n_palets_occ'
    end
    object QCabCargahigiene_occ: TIntegerField
      FieldName = 'higiene_occ'
      Origin = '"COMER.DESARROLLO".frf_orden_carga_c.higiene_occ'
    end
    object QCabCarganota_occ: TMemoField
      FieldName = 'nota_occ'
      Origin = 'DATABASE.frf_orden_carga_c.nota_occ'
      BlobType = ftMemo
      Size = 256
    end
    object QCabCargastatus_occ: TIntegerField
      FieldName = 'status_occ'
      Origin = 'DATABASE.frf_orden_carga_c.status_occ'
    end
    object QCabCargatraspasada_occ: TIntegerField
      FieldName = 'traspasada_occ'
      Origin = 'DATABASE.frf_orden_carga_c.traspasada_occ'
    end
    object QCabCargaporte_bonny_occ: TIntegerField
      FieldName = 'porte_bonny_occ'
      Origin = '"COMER.DESARROLLO".frf_orden_carga_c.porte_bonny_occ'
    end
    object QCabCargaplanta_origen_occ: TStringField
      FieldName = 'planta_origen_occ'
      Origin = 'DATABASE.frf_orden_carga_c.planta_origen_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargaplanta_destino_occ: TStringField
      FieldName = 'planta_destino_occ'
      Origin = 'DATABASE.frf_orden_carga_c.planta_destino_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCargafecha_pedido_occ: TDateField
      FieldName = 'fecha_pedido_occ'
      Origin = 'DATABASE.frf_orden_carga_c.fecha_pedido_occ'
    end
    object QCabCargaoperador_occ: TSmallintField
      FieldName = 'operador_occ'
      Origin = 'DATABASE.frf_orden_carga_c.operador_occ'
    end
    object QCabCargamuelle_occ: TStringField
      FieldName = 'muelle_occ'
      Origin = 'DATABASE.frf_orden_carga_c.muelle_occ'
      FixedChar = True
      Size = 3
    end
    object QCabCarganota_interna_occ: TStringField
      FieldName = 'nota_interna_occ'
      Origin = 'DATABASE.frf_orden_carga_c.nota_interna_occ'
      FixedChar = True
      Size = 255
    end
    object QCabCargafecha_descarga_occ: TDateField
      FieldName = 'fecha_descarga_occ'
    end
  end
  object QLinCargaSalida: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select * from frf_orden_carga_l')
    Left = 176
    Top = 40
  end
  object QCabAlbaran: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select * from frf_salidas_c')
    Left = 88
    Top = 200
    object QCabAlbaranempresa_sc: TStringField
      FieldName = 'empresa_sc'
      Origin = 'DATABASE.frf_salidas_c.empresa_sc'
      FixedChar = True
      Size = 3
    end
    object QCabAlbarancentro_salida_sc: TStringField
      FieldName = 'centro_salida_sc'
      Origin = 'DATABASE.frf_salidas_c.centro_salida_sc'
      FixedChar = True
      Size = 1
    end
    object QCabAlbarann_albaran_sc: TIntegerField
      FieldName = 'n_albaran_sc'
      Origin = 'DATABASE.frf_salidas_c.n_albaran_sc'
    end
    object QCabAlbaranfecha_sc: TDateField
      FieldName = 'fecha_sc'
      Origin = 'DATABASE.frf_salidas_c.fecha_sc'
    end
    object QCabAlbaranhora_sc: TStringField
      FieldName = 'hora_sc'
      Origin = 'DATABASE.frf_salidas_c.hora_sc'
      FixedChar = True
      Size = 5
    end
    object QCabAlbarancliente_sal_sc: TStringField
      FieldName = 'cliente_sal_sc'
      Origin = 'DATABASE.frf_salidas_c.cliente_sal_sc'
      FixedChar = True
      Size = 3
    end
    object QCabAlbarandir_sum_sc: TStringField
      FieldName = 'dir_sum_sc'
      Origin = 'DATABASE.frf_salidas_c.dir_sum_sc'
      FixedChar = True
      Size = 3
    end
    object QCabAlbarancliente_fac_sc: TStringField
      FieldName = 'cliente_fac_sc'
      Origin = 'DATABASE.frf_salidas_c.cliente_fac_sc'
      FixedChar = True
      Size = 3
    end
    object QCabAlbarann_pedido_sc: TStringField
      FieldName = 'n_pedido_sc'
      Origin = 'DATABASE.frf_salidas_c.n_pedido_sc'
      FixedChar = True
      Size = 15
    end
    object QCabAlbaranmoneda_sc: TStringField
      FieldName = 'moneda_sc'
      Origin = 'DATABASE.frf_salidas_c.moneda_sc'
      FixedChar = True
      Size = 3
    end
    object QCabAlbarantransporte_sc: TSmallintField
      FieldName = 'transporte_sc'
      Origin = 'DATABASE.frf_salidas_c.transporte_sc'
    end
    object QCabAlbaranoperador_transporte_sc: TSmallintField
      FieldName = 'operador_transporte_sc'
      Origin = '"COMER.ALC_BONNYSA".frf_salidas_c.operador_transporte_sc'
    end
    object QCabAlbaranvehiculo_sc: TStringField
      FieldName = 'vehiculo_sc'
      Origin = 'DATABASE.frf_salidas_c.vehiculo_sc'
      FixedChar = True
    end
    object QCabAlbarann_factura_sc: TIntegerField
      FieldName = 'n_factura_sc'
      Origin = 'DATABASE.frf_salidas_c.n_factura_sc'
    end
    object QCabAlbaranfecha_factura_sc: TDateField
      FieldName = 'fecha_factura_sc'
      Origin = 'DATABASE.frf_salidas_c.fecha_factura_sc'
    end
    object QCabAlbarandua_sc: TStringField
      FieldName = 'dua_sc'
      Origin = 'DATABASE.frf_salidas_c.dua_sc'
      FixedChar = True
      Size = 14
    end
    object QCabAlbaranfecha_dua_sc: TDateField
      FieldName = 'fecha_dua_sc'
      Origin = 'DATABASE.frf_salidas_c.fecha_dua_sc'
    end
    object QCabAlbaranporte_bonny_sc: TIntegerField
      FieldName = 'porte_bonny_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.porte_bonny_sc'
    end
    object QCabAlbarann_cmr_sc: TStringField
      FieldName = 'n_cmr_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.n_cmr_sc'
      FixedChar = True
      Size = 10
    end
    object QCabAlbarann_orden_sc: TStringField
      FieldName = 'n_orden_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.n_orden_sc'
      FixedChar = True
      Size = 10
    end
    object QCabAlbaranhigiene_sc: TIntegerField
      FieldName = 'higiene_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.higiene_sc'
    end
    object QCabAlbarannota_sc: TMemoField
      FieldName = 'nota_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.nota_sc'
      BlobType = ftMemo
      Size = 512
    end
    object QCabAlbaranfecha_descarga_sc: TDateField
      FieldName = 'fecha_descarga_sc'
    end
    object QCabAlbaranincoterm_sc: TStringField
      FieldName = 'incoterm_sc'
      Size = 3
    end
    object QCabAlbaranplaza_incoterm_sc: TStringField
      FieldName = 'plaza_incoterm_sc'
      Size = 30
    end
    object QCabAlbaranfecha_pedido_sc: TDateField
      FieldName = 'fecha_pedido_sc'
      Origin = '"COMER.DESARROLLO".frf_salidas_c.fecha_pedido_sc'
    end
  end
  object QLinAlbaran: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select rowid, frf_salidas_l.* '
      'from frf_salidas_l')
    Left = 176
    Top = 200
    object QLinAlbaranempresa_sl: TStringField
      FieldName = 'empresa_sl'
      Origin = 'DATABASE.frf_salidas_l.empresa_sl'
      FixedChar = True
      Size = 3
    end
    object QLinAlbarancentro_salida_sl: TStringField
      FieldName = 'centro_salida_sl'
      Origin = 'DATABASE.frf_salidas_l.centro_salida_sl'
      FixedChar = True
      Size = 1
    end
    object QLinAlbarann_albaran_sl: TIntegerField
      FieldName = 'n_albaran_sl'
      Origin = 'DATABASE.frf_salidas_l.n_albaran_sl'
    end
    object QLinAlbaranfecha_sl: TDateField
      FieldName = 'fecha_sl'
      Origin = 'DATABASE.frf_salidas_l.fecha_sl'
    end
    object QLinAlbaranid_linea_albaran_sl: TIntegerField
      FieldName = 'id_linea_albaran_sl'
      Origin = 'DATABASE.frf_salidas_l.id_linea_albaran_sl'
    end
    object QLinAlbarancentro_origen_sl: TStringField
      FieldName = 'centro_origen_sl'
      Origin = 'DATABASE.frf_salidas_l.centro_origen_sl'
      FixedChar = True
      Size = 1
    end
    object QLinAlbaranproducto_sl: TStringField
      DisplayWidth = 3
      FieldName = 'producto_sl'
      Origin = 'DATABASE.frf_salidas_l.producto_sl'
      FixedChar = True
      Size = 3
    end
    object QLinAlbaranenvase_sl: TStringField
      DisplayWidth = 9
      FieldName = 'envase_sl'
      Origin = 'DATABASE.frf_salidas_l.envase_sl'
      FixedChar = True
      Size = 9
    end
    object QLinAlbaranmarca_sl: TStringField
      FieldName = 'marca_sl'
      Origin = 'DATABASE.frf_salidas_l.marca_sl'
      FixedChar = True
      Size = 2
    end
    object QLinAlbarancategoria_sl: TStringField
      FieldName = 'categoria_sl'
      Origin = 'DATABASE.frf_salidas_l.categoria_sl'
      FixedChar = True
      Size = 2
    end
    object QLinAlbarancalibre_sl: TStringField
      FieldName = 'calibre_sl'
      Origin = 'DATABASE.frf_salidas_l.calibre_sl'
      FixedChar = True
      Size = 10
    end
    object QLinAlbarancolor_sl: TStringField
      FieldName = 'color_sl'
      Origin = 'DATABASE.frf_salidas_l.color_sl'
      FixedChar = True
      Size = 1
    end
    object QLinAlbaranref_transitos_sl: TIntegerField
      FieldName = 'ref_transitos_sl'
      Origin = 'DATABASE.frf_salidas_l.ref_transitos_sl'
    end
    object QLinAlbaranunidades_caja_sl: TIntegerField
      FieldName = 'unidades_caja_sl'
      Origin = 'DATABASE.frf_salidas_l.unidades_caja_sl'
    end
    object QLinAlbarancajas_sl: TIntegerField
      FieldName = 'cajas_sl'
      Origin = 'DATABASE.frf_salidas_l.cajas_sl'
    end
    object QLinAlbarankilos_sl: TFloatField
      FieldName = 'kilos_sl'
      Origin = 'DATABASE.frf_salidas_l.kilos_sl'
    end
    object QLinAlbarankilos_reales_sl: TCurrencyField
      FieldName = 'kilos_reales_sl'
      Origin = 'DATABASE.frf_salidas_l.kilos_reales_sl'
    end
    object QLinAlbarankilos_posei_sl: TCurrencyField
      FieldName = 'kilos_posei_sl'
      Origin = 'DATABASE.frf_salidas_l.kilos_posei_sl'
    end
    object QLinAlbaranprecio_sl: TFloatField
      FieldName = 'precio_sl'
      Origin = 'DATABASE.frf_salidas_l.precio_sl'
    end
    object QLinAlbaranunidad_precio_sl: TStringField
      FieldName = 'unidad_precio_sl'
      Origin = 'DATABASE.frf_salidas_l.unidad_precio_sl'
      FixedChar = True
      Size = 3
    end
    object QLinAlbaranimporte_neto_sl: TFloatField
      FieldName = 'importe_neto_sl'
      Origin = 'DATABASE.frf_salidas_l.importe_neto_sl'
    end
    object QLinAlbaranporc_iva_sl: TFloatField
      FieldName = 'porc_iva_sl'
      Origin = 'DATABASE.frf_salidas_l.porc_iva_sl'
    end
    object QLinAlbaraniva_sl: TFloatField
      FieldName = 'iva_sl'
      Origin = 'DATABASE.frf_salidas_l.iva_sl'
    end
    object QLinAlbaranimporte_total_sl: TFloatField
      FieldName = 'importe_total_sl'
      Origin = 'DATABASE.frf_salidas_l.importe_total_sl'
    end
    object QLinAlbarann_palets_sl: TSmallintField
      FieldName = 'n_palets_sl'
      Origin = 'DATABASE.frf_salidas_l.n_palets_sl'
    end
    object QLinAlbarantipo_palets_sl: TStringField
      FieldName = 'tipo_palets_sl'
      Origin = 'DATABASE.frf_salidas_l.tipo_palets_sl'
      FixedChar = True
      Size = 2
    end
    object QLinAlbarantipo_iva_sl: TStringField
      FieldName = 'tipo_iva_sl'
      Origin = 'DATABASE.frf_salidas_l.tipo_iva_sl'
      FixedChar = True
      Size = 2
    end
    object QLinAlbaranfederacion_sl: TStringField
      FieldName = 'federacion_sl'
      Origin = 'DATABASE.frf_salidas_l.federacion_sl'
      FixedChar = True
      Size = 1
    end
    object QLinAlbarancliente_sl: TStringField
      FieldName = 'cliente_sl'
      Origin = 'DATABASE.frf_salidas_l.cliente_sl'
      FixedChar = True
      Size = 3
    end
    object QLinAlbaranemp_procedencia_sl: TStringField
      FieldName = 'emp_procedencia_sl'
      Origin = 'DATABASE.frf_salidas_l.emp_procedencia_sl'
      FixedChar = True
      Size = 3
    end
    object QLinAlbarancomercial_sl: TStringField
      FieldName = 'comercial_sl'
      Size = 3
    end
    object strngfldQLinAlbarannotas_sl: TStringField
      FieldName = 'notas_sl'
      Size = 90
    end
  end
  object QGetNumeroAlbaran: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select cont_albaranes_c'
      'from frf_centros')
    Left = 88
    Top = 248
    object QGetNumeroAlbarancont_albaranes_c: TIntegerField
      FieldName = 'cont_albaranes_c'
      Origin = 'DATABASE.frf_centros.cont_albaranes_c'
    end
  end
  object QUpdateNumeroAlbaran: TQuery
    DatabaseName = 'Database'
    Left = 176
    Top = 248
  end
  object QCabTransito: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select * from frf_transitos_c')
    Left = 88
    Top = 368
    object QCabTransitoempresa_tc: TStringField
      FieldName = 'empresa_tc'
      Origin = 'DATABASE.frf_transitos_c.empresa_tc'
      FixedChar = True
      Size = 3
    end
    object QCabTransitocentro_tc: TStringField
      FieldName = 'centro_tc'
      Origin = 'DATABASE.frf_transitos_c.centro_tc'
      FixedChar = True
      Size = 1
    end
    object QCabTransitoreferencia_tc: TIntegerField
      FieldName = 'referencia_tc'
      Origin = 'DATABASE.frf_transitos_c.referencia_tc'
    end
    object QCabTransitofecha_tc: TDateField
      FieldName = 'fecha_tc'
      Origin = 'DATABASE.frf_transitos_c.fecha_tc'
    end
    object QCabTransitocentro_destino_tc: TStringField
      FieldName = 'centro_destino_tc'
      Origin = 'DATABASE.frf_transitos_c.centro_destino_tc'
      FixedChar = True
      Size = 1
    end
    object QCabTransitotransporte_tc: TSmallintField
      FieldName = 'transporte_tc'
      Origin = 'DATABASE.frf_transitos_c.transporte_tc'
    end
    object QCabTransitovehiculo_tc: TStringField
      FieldName = 'vehiculo_tc'
      Origin = 'DATABASE.frf_transitos_c.vehiculo_tc'
      FixedChar = True
    end
    object QCabTransitostatus_gastos_tc: TStringField
      FieldName = 'status_gastos_tc'
      Origin = 'DATABASE.frf_transitos_c.status_gastos_tc'
      FixedChar = True
      Size = 1
    end
    object QCabTransitobuque_tc: TStringField
      FieldName = 'buque_tc'
      Origin = 'DATABASE.frf_transitos_c.buque_tc'
      FixedChar = True
      Size = 30
    end
    object QCabTransitodestino_tc: TStringField
      FieldName = 'destino_tc'
      Origin = 'DATABASE.frf_transitos_c.destino_tc'
      FixedChar = True
      Size = 30
    end
    object QCabTransitodua_salida_tc: TStringField
      FieldName = 'dua_salida_tc'
      Origin = 'DATABASE.frf_transitos_c.dua_salida_tc'
      FixedChar = True
      Size = 13
    end
    object QCabTransitofecha_duasal_tc: TDateField
      FieldName = 'fecha_duasal_tc'
      Origin = 'DATABASE.frf_transitos_c.fecha_duasal_tc'
    end
    object QCabTransitodua_entrada_tc: TStringField
      FieldName = 'dua_entrada_tc'
      Origin = 'DATABASE.frf_transitos_c.dua_entrada_tc'
      FixedChar = True
      Size = 13
    end
    object QCabTransitofecha_duaent_tc: TDateField
      FieldName = 'fecha_duaent_tc'
      Origin = 'DATABASE.frf_transitos_c.fecha_duaent_tc'
    end
    object QCabTransitofactura_control_tc: TIntegerField
      FieldName = 'factura_control_tc'
      Origin = 'DATABASE.frf_transitos_c.factura_control_tc'
    end
    object QCabTransitofecha_facontrol_tc: TDateField
      FieldName = 'fecha_facontrol_tc'
      Origin = 'DATABASE.frf_transitos_c.fecha_facontrol_tc'
    end
    object QCabTransitoporte_bonny_tc: TIntegerField
      FieldName = 'porte_bonny_tc'
      Origin = '"COMER.DESARROLLO".frf_transitos_c.porte_bonny_tc'
    end
    object QCabTransitofecha_entrada_tc: TDateField
      FieldName = 'fecha_entrada_tc'
      Origin = 'COMERCIALIZACION.frf_transitos_c.fecha_entrada_tc'
    end
    object QCabTransiton_cmr_tc: TStringField
      FieldName = 'n_cmr_tc'
      Origin = 'COMERCIALIZACION.frf_transitos_c.n_cmr_tc'
      FixedChar = True
      Size = 19
    end
    object QCabTransitonota_tc: TMemoField
      FieldName = 'nota_tc'
      Origin = 'COMERCIALIZACION.frf_transitos_c.nota_tc'
      BlobType = ftMemo
      Size = 512
    end
    object QCabTransiton_orden_tc: TStringField
      FieldName = 'n_orden_tc'
      Origin = 'COMERCIALIZACION.frf_transitos_c.n_orden_tc'
      FixedChar = True
      Size = 10
    end
    object QCabTransitoplanta_origen_tc: TStringField
      FieldName = 'planta_origen_tc'
      Origin = 'DATABASE.frf_transitos_c.planta_origen_tc'
      FixedChar = True
      Size = 3
    end
    object QCabTransitoplanta_destino_tc: TStringField
      FieldName = 'planta_destino_tc'
      Origin = 'DATABASE.frf_transitos_c.planta_destino_tc'
      FixedChar = True
      Size = 3
    end
    object QCabTransitostatus_kilos_tc: TIntegerField
      FieldName = 'status_kilos_tc'
      Origin = 'DATABASE.frf_transitos_c.status_kilos_tc'
    end
    object QCabTransitopuerto_tc: TIntegerField
      FieldName = 'puerto_tc'
      Origin = 'DATABASE.frf_transitos_c.puerto_tc'
    end
    object QCabTransitoprecio_facontrol_tc: TFloatField
      FieldName = 'precio_facontrol_tc'
      Origin = 'DATABASE.frf_transitos_c.precio_facontrol_tc'
    end
    object strngfldQCabAlbaranhora_tc: TStringField
      FieldName = 'hora_tc'
      Size = 5
    end
  end
  object QLinTransito: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select * from frf_transitos_l')
    Left = 176
    Top = 368
    object QLinTransitoempresa_tl: TStringField
      FieldName = 'empresa_tl'
      Origin = 'DATABASE.frf_transitos_l.empresa_tl'
      FixedChar = True
      Size = 3
    end
    object QLinTransitocentro_tl: TStringField
      FieldName = 'centro_tl'
      Origin = 'DATABASE.frf_transitos_l.centro_tl'
      FixedChar = True
      Size = 1
    end
    object QLinTransitoreferencia_tl: TIntegerField
      FieldName = 'referencia_tl'
      Origin = 'DATABASE.frf_transitos_l.referencia_tl'
    end
    object QLinTransitofecha_tl: TDateField
      FieldName = 'fecha_tl'
      Origin = 'DATABASE.frf_transitos_l.fecha_tl'
    end
    object QLinTransitocentro_destino_tl: TStringField
      FieldName = 'centro_destino_tl'
      Origin = 'DATABASE.frf_transitos_l.centro_destino_tl'
      FixedChar = True
      Size = 1
    end
    object QLinTransitocentro_origen_tl: TStringField
      FieldName = 'centro_origen_tl'
      Origin = 'DATABASE.frf_transitos_l.centro_origen_tl'
      FixedChar = True
      Size = 1
    end
    object QLinTransitoref_origen_tl: TIntegerField
      FieldName = 'ref_origen_tl'
      Origin = 'DATABASE.frf_transitos_l.ref_origen_tl'
    end
    object QLinTransitofecha_origen_tl: TDateField
      FieldName = 'fecha_origen_tl'
      Origin = 'DATABASE.frf_transitos_l.fecha_origen_tl'
    end
    object QLinTransitoproducto_tl: TStringField
      DisplayWidth = 3
      FieldName = 'producto_tl'
      Origin = 'DATABASE.frf_transitos_l.producto_tl'
      FixedChar = True
      Size = 3
    end
    object QLinTransitoenvase_tl: TStringField
      DisplayWidth = 9
      FieldName = 'envase_tl'
      Origin = 'DATABASE.frf_transitos_l.envase_tl'
      FixedChar = True
      Size = 9
    end
    object QLinTransitomarca_tl: TStringField
      FieldName = 'marca_tl'
      Origin = 'DATABASE.frf_transitos_l.marca_tl'
      FixedChar = True
      Size = 2
    end
    object QLinTransitocategoria_tl: TStringField
      FieldName = 'categoria_tl'
      Origin = 'DATABASE.frf_transitos_l.categoria_tl'
      FixedChar = True
      Size = 2
    end
    object QLinTransitocolor_tl: TStringField
      FieldName = 'color_tl'
      Origin = 'DATABASE.frf_transitos_l.color_tl'
      FixedChar = True
      Size = 1
    end
    object QLinTransitocalibre_tl: TStringField
      FieldName = 'calibre_tl'
      Origin = 'DATABASE.frf_transitos_l.calibre_tl'
      FixedChar = True
      Size = 10
    end
    object QLinTransitounidades_caja_tl: TIntegerField
      FieldName = 'unidades_caja_tl'
      Origin = 'DATABASE.frf_transitos_l.unidades_caja_tl'
    end
    object QLinTransitocajas_tl: TIntegerField
      FieldName = 'cajas_tl'
      Origin = 'DATABASE.frf_transitos_l.cajas_tl'
    end
    object QLinTransitokilos_tl: TFloatField
      FieldName = 'kilos_tl'
      Origin = 'DATABASE.frf_transitos_l.kilos_tl'
    end
    object QLinTransitofederacion_tl: TStringField
      FieldName = 'federacion_tl'
      Origin = 'DATABASE.frf_transitos_l.federacion_tl'
      FixedChar = True
      Size = 1
    end
    object QLinTransitocosechero_tl: TSmallintField
      FieldName = 'cosechero_tl'
      Origin = 'DATABASE.frf_transitos_l.cosechero_tl'
    end
    object QLinTransitoplantacion_tl: TSmallintField
      FieldName = 'plantacion_tl'
      Origin = 'DATABASE.frf_transitos_l.plantacion_tl'
    end
    object QLinTransitoanyo_semana_tl: TStringField
      FieldName = 'anyo_semana_tl'
      Origin = 'DATABASE.frf_transitos_l.anyo_semana_tl'
      FixedChar = True
      Size = 6
    end
    object QLinTransitotipo_palet_tl: TStringField
      FieldName = 'tipo_palet_tl'
      Origin = 'COMERCIALIZACION.frf_transitos_l.tipo_palet_tl'
      FixedChar = True
      Size = 2
    end
    object QLinTransitopalets_tl: TIntegerField
      FieldName = 'palets_tl'
      Origin = 'COMERCIALIZACION.frf_transitos_l.palets_tl'
    end
  end
  object QGetNumeroTransito: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select cont_transitos_c'
      'from frf_centros')
    Left = 88
    Top = 416
    object QGetNumeroTransitocont_transitos_c: TIntegerField
      FieldName = 'cont_transitos_c'
      Origin = 'DATABASE.frf_centros.cont_transitos_c'
    end
  end
  object QUpdateNumeroTransito: TQuery
    DatabaseName = 'Database'
    Left = 176
    Top = 416
  end
  object QUpdateCabCarga: TQuery
    DatabaseName = 'Database'
    Left = 176
    Top = 88
  end
  object QUpdateLinCarga: TQuery
    DatabaseName = 'Database'
    Left = 264
    Top = 88
  end
  object QUpdateStatusCarga: TQuery
    DatabaseName = 'Database'
    Left = 88
    Top = 88
  end
  object QLinCargaTransito: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select * from frf_orden_carga_l')
    Left = 264
    Top = 40
  end
  object QLineasPalets: TQuery
    CachedUpdates = True
    DatabaseName = 'Database'
    RequestLive = True
    UpdateObject = usqlLineasPalets
    Left = 176
    Top = 520
  end
  object QLineasCarga: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    Left = 88
    Top = 520
  end
  object QPesoTeorico: TQuery
    CachedUpdates = True
    DatabaseName = 'Database'
    Left = 256
    Top = 520
  end
  object QValidarNumeroAlbaran: TQuery
    DatabaseName = 'Database'
    Left = 311
    Top = 242
  end
  object QValidarNumeroTransito: TQuery
    DatabaseName = 'Database'
    Left = 314
    Top = 415
  end
  object qryPesoVariable: TQuery
    CachedUpdates = True
    DatabaseName = 'Database'
    Left = 344
    Top = 515
  end
  object QMonedaCliente: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select moneda_c'
      'from frf_clientes'
      'where cliente_c  = :cliente')
    Left = 416
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
  end
  object usqlLineasPalets: TUpdateSQL
    Left = 176
    Top = 568
  end
  object qryAux2: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select moneda_c'
      'from frf_clientes'
      'where cliente_c  = :cliente')
    Left = 440
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
  end
  object qryAux: TQuery
    DatabaseName = 'Database'
    RequestLive = True
    SQL.Strings = (
      'select moneda_c'
      'from frf_clientes'
      'where cliente_c  = :cliente')
    Left = 432
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
  end
end
