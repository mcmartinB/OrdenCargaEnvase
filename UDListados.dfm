object DListados: TDListados
  OldCreateOrder = False
  Height = 396
  Width = 304
  object QCab: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select *'
      'from frf_orden_carga_c')
    Left = 40
    Top = 32
  end
  object QLineas: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select *'
      'from frf_orden_carga_l')
    Left = 88
    Top = 32
  end
  object QPackingLin: TQuery
    DatabaseName = 'database'
    SQL.Strings = (
      'select *'
      'from frf_packing_list'
      '')
    Left = 88
    Top = 256
  end
  object QPalets: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select tipo_palet_pl, count(distinct ean128_pl) palets_pl'
      'from frf_packing_list '
      'where orden_pl = 8'
      'group by tipo_palet_pl '
      'order by tipo_palet_pl')
    Left = 88
    Top = 88
  end
  object QLogifruit: TQuery
    DatabaseName = 'Database'
    SQL.Strings = (
      'select codigo_caja_e, texto_caja_e, sum(cajas_pl) cajas_pl'
      'from frf_packing_list, frf_envases'
      'where orden_pl = 8'
      'and empresa_e = empresa_pl'
      'and producto_e = producto_pl'
      'and envase_e = envase_pl'
      'and codigo_caja_e is not null'
      'group by codigo_caja_e, texto_caja_e'
      'order by codigo_caja_e')
    Left = 88
    Top = 144
  end
  object QEnvases: TQuery
    DatabaseName = 'database'
    SQL.Strings = (
      'select empresa_pl, envase_pl, producto_pl, '
      
        'case when categoria_pl is null then (select categoria_f from frf' +
        '_formatos '
      '                      '#9#9#9#9#9#9#9#9' where empresa_f = empresa_pl '
      '                    '#9#9#9#9#9#9#9#9#9'   and codigo_f = formato_pl) '
      
        '     else categoria_pl                                          ' +
        '    '
      
        #9#9' end categoria_pl,  marca_pl, calibre_pl, color_pl, unidades_c' +
        'aja_pl, '
      '     bestbefore_pl, '
      '     sum(cajas_pl) cajas_pl, sum(peso_pl) peso_pl, '
      '     count( distinct  ean128_pl ) palets_pl, tipo_palet_pl '
      'from frf_packing_list '
      'where orden_pl = 153662'
      
        'group by empresa_pl, envase_pl, producto_pl, 4, marca_pl, calibr' +
        'e_pl, color_pl, unidades_caja_pl, tipo_palet_pl, bestbefore_pl'
      
        'order by empresa_pl, envase_pl, producto_pl, 4, marca_pl, calibr' +
        'e_pl, color_pl, unidades_caja_pl, bestbefore_pl  ')
    Left = 88
    Top = 200
    object QEnvasesempresa_pl: TStringField
      FieldName = 'empresa_pl'
      FixedChar = True
      Size = 3
    end
    object QEnvasesenvase_pl: TStringField
      DisplayWidth = 9
      FieldName = 'envase_pl'
      FixedChar = True
      Size = 9
    end
    object QEnvasescategoria_pl: TStringField
      FieldName = 'categoria_pl'
      FixedChar = True
      Size = 2
    end
    object QEnvasesproducto_pl: TStringField
      FieldName = 'producto_pl'
      Size = 3
    end
    object QEnvasesmarca_pl: TStringField
      FieldName = 'marca_pl'
      FixedChar = True
      Size = 2
    end
    object QEnvasescalibre_pl: TStringField
      FieldName = 'calibre_pl'
      FixedChar = True
      Size = 10
    end
    object QEnvasescolor_pl: TStringField
      FieldName = 'color_pl'
      FixedChar = True
      Size = 1
    end
    object iQEnvasesunidades_caja_pl: TIntegerField
      FieldName = 'unidades_caja_pl'
    end
    object QEnvasesbestbefore_pl: TDateField
      FieldName = 'bestbefore_pl'
    end
    object QEnvasescajas_pl: TFloatField
      FieldName = 'cajas_pl'
    end
    object QEnvasespeso_pl: TFloatField
      FieldName = 'peso_pl'
    end
    object QEnvasespalets_pl: TFloatField
      FieldName = 'palets_pl'
    end
    object QEnvasestipo_palet_pl: TStringField
      FieldName = 'tipo_palet_pl'
      FixedChar = True
      Size = 2
    end
  end
end
