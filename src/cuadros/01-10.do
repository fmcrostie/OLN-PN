* Macros auxiliares y objetos temporales
local id "01-10"

* Especificación
.table = .ol_table.new
.table.rowvar = "_rama1_v2"
.table.colvar = "_region_tr_v1"
.table.title  = ///
  "1.10. PIB nominal por región según sector económico (%), 2015"

* Exportación
use "$proyecto/data/consultas/`id'.dta", clear
.table.export_excel bh, file("$proyecto/data/cuadros/bh.xlsx") sheet("`id'")
