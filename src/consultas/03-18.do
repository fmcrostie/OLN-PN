* Macros auxiliares
local id "03-18"

* Especificación
.table = .ol_table.new
.table.cmds       = "{total _counter}"
.table.cmds_lb    = "{N}"
.table.years      = "2010 2016"
.table.months     = "2 5 8 11"
.table.subpops    = "{if _conmutante_v1 == 1}"
.table.subpops_lb = "{Conmutantes}"
.table.by         = ""
.table.along      = "."
.table.aggregate  = "."
.table.src        = "ene"
.table.from       = "$datos"
.table.varlist0   = "_conmutante_v1 _ocupado"

* Estimación
forvalues i = 1(1)2 {
  local var : word `i' of _region_re_v1 _region_tr_v1
  .table.along     = "`varlist'"
  .table.aggregate = "{`varlist'}"
  .table.create
  save "$proyecto/data/consultas/`id' [`i'].dta", replace
}