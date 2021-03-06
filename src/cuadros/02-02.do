* Macros auxiliares y objetos temporales
local id "02-02"

* Especificación
.table = .ol_table.new
.table.rowvar = "_tamano_empresa"
.table.colvar = "subpop_lb cmd_lb"
.table.title  = ///
  "2.2. Número de empresas y ocupados según tamaño de empresa, " + ///
  "incluyendo trabajadores por cuenta propia unipersonal, 2015"

* Exportación
use "$proyecto/data/consultas/`id'.dta", clear
.table.export_excel bh, file("$proyecto/data/cuadros/bh.xlsx") sheet("`id'")
