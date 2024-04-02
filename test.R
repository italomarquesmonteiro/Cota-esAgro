#
library(tidyverse)

readxl::read_xlsx(
    "c:/Users/italo/OneDrive/Área de Trabalho/VsCode/EmbrapaOvinosCaprinos/PreçoOvinoCaprinoKG.xlsx"
    ) |>
    janitor::clean_names("snake") |>
    tidyr::pivot_longer(
        !c(ano, animal, uf),
        names_to = "mes",
        values_to = "peso_vivo"
    )