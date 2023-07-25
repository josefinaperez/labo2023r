# Corrida general del workflow Semillerio

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow
source("~/labo2023r/src/workflow-semillerio/04/711_CA_reparar_dataset.r")
source("~/labo2023r/src/workflow-semillerio/04/721_DR_corregir_drifting.r")



### toma DR del 0
source("~/labo2023r/src/workflow-semillerio/04/731_FE_historia.r")
source("~/labo2023r/src/workflow-semillerio/04/741_TS_training_strategy.r")
source("~/labo2023r/src/workflow-semillerio/04/751_HT_lightgbm.r")
source("~/labo2023r/src/workflow-semillerio/04/771_ZZ_final_semillerio.r")