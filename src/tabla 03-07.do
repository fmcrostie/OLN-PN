* indicadores  : ingreso promedio de la ocupación principal
* subpoblación : ocupados que mantuvieron su empleo
* por          : región
* según        : año (2010-2015)
* agregaciones : "región"
* fuente       : ESI

* Especificación
.tabla = .ol_table.new
  * Abreviaciones
  * Estadísticas
  .tabla.cmds      = `""mean _yprincipal""'
  .tabla.masks     = `""ingreso promedio en la oc. principal (M$)""'
  * Dominios
  .tabla.years     = "2015"
  .tabla.months    = ""
  .tabla.subpop    = "if (_ocupado == 1) & (_mantuvo_empleo == 1)"
  .tabla.over      = "_region_re_v1"
  .tabla.aggregate = `""_region_re_v1""'
  * I-O
  .tabla.src       = "esi"
  .tabla.varlist0  = "_ocupado _mantuvo_empleo _region_re_v1 _yprincipal"
* Estimación
.tabla.create
save "$proyecto/data/tabla 03-07", replace