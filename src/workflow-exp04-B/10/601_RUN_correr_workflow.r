# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
num_exp <- "10"

source("~/labo2023r/src/workflow-exp04-B/611_CA_reparar_dataset.r")
source("~/labo2023r/src/workflow-exp04-B/621_DR_corregir_drifting.r")
source(paste0("~/labo2023r/src/workflow-exp04-B/", "10", "/631_FE_historia.r"))
source(paste0("~/labo2023r/src/workflow-exp04-B/", "10", "/641_TS_training_strategy.r"))

# ultimos pasos, muy lentos
source(paste0("~/labo2023r/src/workflow-exp04-B/", "10", "/651_HT_lightgbm.r"))
source(paste0("~/labo2023r/src/workflow-exp04-B/", "10", "/661_ZZ_final.r"))
