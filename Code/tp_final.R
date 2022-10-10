library(ggplot2)
library(tidyverse)
library(modelr)


setwd("/home/datascience/TPFINAL LCD")
autos <- read.csv("dnrpa-robos-recuperos-autos-202208.csv")

problems(autos)

autos$automotor_modelo_codigo[autos$automotor_modelo_codigo == ""] <- NA
sum(is.na(autos$automotor_modelo_codigo)) 

autos[autos$automotor_tipo_descripcion == "SEDAN 3 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 3 PUERTAS"
autos[autos$automotor_tipo_descripcion == "SEDAN 3 PTAS.", "automotor_tipo_descripcion"] <- "SEDAN 3 PUERTAS"

autos[autos$automotor_tipo_descripcion == "BERLINA 3 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 3 PUERTAS"
autos[autos$automotor_tipo_descripcion == "BERLINA 3 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 3 PUERTAS"

autos[autos$automotor_tipo_descripcion == "SEDAN 4 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 4 PUERTAS"
autos[autos$automotor_tipo_descripcion == "SEDAN 4 PTAS.", "automotor_tipo_descripcion"] <- "SEDAN 4 PUERTAS"

autos[autos$automotor_tipo_descripcion == "BERLINA 4 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 4 PUERTAS"
autos[autos$automotor_tipo_descripcion == "BERLINA 4 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 4 PUERTAS"

autos[autos$automotor_tipo_descripcion == "SEDAN 2 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 2 PUERTAS"

autos[autos$automotor_tipo_descripcion == "SEDAN 5 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"
autos[autos$automotor_tipo_descripcion == "SEDAN 5  PUERTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"
autos[autos$automotor_tipo_descripcion == "SEDAN 5PUERTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"

autos[autos$automotor_tipo_descripcion == "BERLINA 5 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 5 PUERTAS"
autos[autos$automotor_tipo_descripcion == "BERLINA 5 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 5 PUERTAS"


autos[autos$automotor_tipo_descripcion == "S. WAGON", "automotor_tipo_descripcion"] <- "S.WAGON"

autos[autos$automotor_tipo_descripcion == "RURAL 4 PTAS", "automotor_tipo_descripcion"] <- "RURAL 4 PUERTAS"
autos[autos$automotor_tipo_descripcion == "RURAL 5 PTAS", "automotor_tipo_descripcion"] <- "RURAL 5 PUERTAS"
autos[autos$automotor_tipo_descripcion == "RURAL 4/5 PTAS", "automotor_tipo_descripcion"] <- "RURAL 4/5 PUERTAS"
autos[autos$automotor_tipo_descripcion == "RURAL 2/3 PTAS", "automotor_tipo_descripcion"] <- "RURAL 2/3 PUERTAS"

autos[autos$automotor_tipo_descripcion == "TRANSP. DE PASAJEROS", "automotor_tipo_descripcion"] <- "TRANS.DE PASAJEROS"

autos[autos$automotor_tipo_descripcion == "PICK UP", "automotor_tipo_descripcion"] <- "PICK-UP"
autos[autos$automotor_tipo_descripcion == "PICK UP MUDANCERO", "automotor_tipo_descripcion"] <- "PICK-UP MUDANCERO"
autos[autos$automotor_tipo_descripcion == "PICK-UP CAB.DOBLE", "automotor_tipo_descripcion"] <- "PICK-UP CABINA DOBLE"

autos[autos$automotor_tipo_descripcion == "MINIBUS (O MICROOMNIBUS)", "automotor_tipo_descripcion"] <- "MINIBUS"
autos[autos$automotor_tipo_descripcion == "PICK UP", "automotor_tipo_descripcion"] <- "PICK-UP"


unique(autos$automotor_tipo_descripcion)
view(unique(autos$automotor_tipo_descripcion))






