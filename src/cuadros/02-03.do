* Macros auxiliares y objetos temporales
local id "02-03"

* Especificación
.table = .ol_table.new
.table.rowvar = "temp"
.table.colvar = "año"
.table.title  = ///
  "2.3. Evolución distribución de ocupados según tamaño de empresa, 2010-2016"

* Exportación
use "$proyecto/data/consultas/`id'.dta", clear
rename _tamaño_empresa temp
label copy _tamaño_empresa temp
label values temp temp
.table.export_excel bh, file("$proyecto/data/cuadros/bh.xlsx") sheet("`id'")
