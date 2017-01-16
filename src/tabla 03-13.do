* indicadores  : años promedio de escolaridad
* subpoblación : ocupados
* años         : 2010 y 2015
* meses        :
* por          : gran grupo de ocupación (oficio1)
* según        :
* agregaciones : "oficio1"
* fuente       : ENE

* Especificación
.table = .ol_table.new
  * Estadísticas
  .table.cmds      = `""mean _esc""'
  .table.masks     = `""escolaridad promedio (años)""'
  * Dominios
  .table.years     = "2010 2015"
  .table.months    = "2 5 8 11"
  .table.subpop    = "if _ocupado == 1"
  .table.rowvar    = "_oficio1"
  .table.colvar    = ""
  .table.aggregate = `""_oficio1""'
  * I-O
  .table.src       = "ene"
  .table.varlist0  = "_esc _ocupado _oficio1"
  cls

* Estimación
.table.create
.table.annualize
save "$proyecto/data/tabla 03-13", replace

* Exportación
.table.export_excel bh, ///
  file("tabla 03-13") rowvar("_oficio1") colvar("año")
