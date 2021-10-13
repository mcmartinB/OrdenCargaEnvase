unit UDListados;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDListados = class(TDataModule)
    QCab: TQuery;
    QLineas: TQuery;
    QPackingLin: TQuery;
    QPalets: TQuery;
    QLogifruit: TQuery;
    QEnvases: TQuery;
    QEnvasesempresa_pl: TStringField;
    QEnvasesenvase_pl: TStringField;
    QEnvasescategoria_pl: TStringField;
    QEnvasesmarca_pl: TStringField;
    QEnvasescalibre_pl: TStringField;
    QEnvasescolor_pl: TStringField;
    iQEnvasesunidades_caja_pl: TIntegerField;
    QEnvasesbestbefore_pl: TDateField;
    QEnvasescajas_pl: TFloatField;
    QEnvasespeso_pl: TFloatField;
    QEnvasespalets_pl: TFloatField;
    QEnvasestipo_palet_pl: TStringField;
    QEnvasesproducto_pl: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create( AOwner: TComponent ); Override;
    destructor Destroy; Override;

    function DatosOrden( const AOrden: Integer;
      var ALineas, APacking, ALogifruit, AEnvases, APalets: boolean ): boolean;
  end;



implementation

{$R *.dfm}

uses UDOrdenCarga;


constructor TDListados.Create( AOwner: TComponent );
begin
  inherited;
  with QCab do
  begin
    SQL.Clear;
    SQL.Add('select * ');
    SQL.Add('from frf_orden_carga_c ');
    SQL.Add('where orden_occ = :orden ');
  end;
  with QLineas do
  begin
    SQL.Clear;
    SQL.Add('select * ');
    SQL.Add('from frf_orden_carga_l ');
    SQL.Add('where orden_ocl = :orden ');
  end;
  with QPackingLin do
  begin
    SQL.Clear;
    SQL.Add('select * ');
    SQL.Add('from frf_packing_list ');
    SQL.Add('where orden_pl = :orden ');
    SQL.Add('order by orden_pl, ean128_pl, ean13_pl ');
  end;
  with QPalets do
  begin
    SQL.Clear;
    SQL.Add(' select tipo_palet_pl, count(distinct ean128_pl) palets_pl ');
    SQL.Add(' from frf_packing_list ');
    SQL.Add(' where orden_pl = :orden ');
    SQL.Add(' group by tipo_palet_pl ');
    SQL.Add(' order by tipo_palet_pl ');
  end;
  with QLogifruit do
  begin
    SQL.Clear;
    SQL.Add(' select cod_producto_ecp codigo_caja_e, des_producto_ecp texto_caja_e, sum(cajas_pl) cajas_pl ');
    SQL.Add(' from frf_packing_list, frf_envases, frf_env_comer_productos ');
    SQL.Add(' where orden_pl = :orden ');
    SQL.Add(' and producto_e = producto_pl ');
    SQL.Add(' and envase_e = envase_pl ');
    SQL.Add(' and env_comer_operador_e = cod_operador_ecp ');
    SQL.Add(' and env_comer_producto_e = cod_producto_ecp ');
    SQL.Add(' group by cod_producto_ecp, des_producto_ecp ');
    SQL.Add(' order by cod_producto_ecp ');
  end;

  with QEnvases do
  begin
    SQL.Clear;
    SQL.Add(' select empresa_pl, envase_pl, producto_pl, ');
    SQL.Add(' case when categoria_pl is null then (select categoria_f from frf_formatos ');
    SQL.Add('                       								 where empresa_f = empresa_pl ');
    SQL.Add('                     									   and codigo_f = formato_pl) ');
    SQL.Add('      else categoria_pl                                              ');
    SQL.Add(' 		 end categoria_pl,  marca_pl, calibre_pl, color_pl, unidades_caja_pl, ');
    SQL.Add('      bestbefore_pl, ');
    SQL.Add('      sum(cajas_pl) cajas_pl, round(sum(peso_pl),2) peso_pl, ');
    SQL.Add('      count( distinct  ean128_pl ) palets_pl, tipo_palet_pl ');
    SQL.Add(' from frf_packing_list ');
    SQL.Add(' where orden_pl = :orden ');
    SQL.Add(' group by empresa_pl, envase_pl, producto_pl, 4, marca_pl, calibre_pl, color_pl, unidades_caja_pl, tipo_palet_pl, bestbefore_pl ');
    SQL.Add(' order by empresa_pl, envase_pl, producto_pl, 4, marca_pl, calibre_pl, color_pl, unidades_caja_pl, bestbefore_pl  ');
  end;
enD;

destructor TDListados.Destroy;
begin
  QPackingLin.Close;
  QPalets.Close;
  QLogifruit.Close;
  QEnvases.Close;
  QLineas.Close;
  QCab.Close;

  inherited;
end;

function TDListados.DatosOrden( const AOrden: Integer;
  var ALineas, APacking, ALogifruit, AEnvases, APalets: boolean ): boolean;
begin
  QPackingLin.Close;
  QPalets.Close;
  QLogifruit.Close;
  QEnvases.Close;
  QLineas.Close;
  QCab.Close;

  QCab.ParamByName('orden').AsInteger:= AOrden;
  QCab.Open;
  result:= not QCab.IsEmpty;
  if QCab.IsEmpty then
  begin
    QCab.Close;
  end
  else
  begin
    QLineas.ParamByName('orden').AsInteger:= AOrden;
    if ALineas then
      QLineas.Open;
    ALineas:= not QLineas.IsEmpty;

    QPalets.ParamByName('orden').AsInteger:= AOrden;
    if APalets then
      QPalets.Open;
    APalets:= not QPalets.IsEmpty;

    QLogifruit.ParamByName('orden').AsInteger:= AOrden;
    if ALogifruit then
      QLogifruit.Open;
    ALogifruit:= not QLogifruit.IsEmpty;

    QEnvases.ParamByName('orden').AsInteger:= AOrden;
    if AEnvases then
      QEnvases.Open;
    AEnvases:= not QEnvases.IsEmpty;

    QPackingLin.ParamByName('orden').AsInteger:= AOrden;
    if APacking then
      QPackingLin.Open;
    APacking:= not QPackingLin.IsEmpty;
  end;
end;

end.
