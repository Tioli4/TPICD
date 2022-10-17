library(ggplot2)
library(tidyverse)
library(modelr)
library(lubridate)


setwd("/home/datascience/Escritorio/TPFINALICD/Datasets")
autosenero2018 <- read.csv("dnrpa-robos-recuperos-autos-201801.csv")
autosfebrero2018  <- read.csv("dnrpa-robos-recuperos-autos-201802.csv")
autosmarzo2018 <- read.csv("dnrpa-robos-recuperos-autos-201803.csv")
autosabril2018 <- read.csv("dnrpa-robos-recuperos-autos-201804.csv")
autosmayo2018 <- read.csv("dnrpa-robos-recuperos-autos-201805.csv")
autosjunio2018 <- read.csv("dnrpa-robos-recuperos-autos-201806.csv")
autosjulio2018 <- read.csv("dnrpa-robos-recuperos-autos-201807.csv")
autosagosto2018 <- read.csv("dnrpa-robos-recuperos-autos-201808.csv")
autosseptiembre2018 <- read.csv("dnrpa-robos-recuperos-autos-201809.csv")
autosoctubre2018 <- read.csv("dnrpa-robos-recuperos-autos-201810.csv")
autosnoviembre2018 <- read.csv("dnrpa-robos-recuperos-autos-201811.csv")
autosdiciembre2018 <- read.csv("dnrpa-robos-recuperos-autos-201812.csv")

autosenero2019 <- read.csv("dnrpa-robos-recuperos-autos-201901.csv")
autosfebrero2019  <- read.csv("dnrpa-robos-recuperos-autos-201902.csv")
autosmarzo2019 <- read.csv("dnrpa-robos-recuperos-autos-201903.csv")
autosabril2019 <- read.csv("dnrpa-robos-recuperos-autos-201904.csv")
autosmayo2019 <- read.csv("dnrpa-robos-recuperos-autos-201905.csv")
autosjunio2019 <- read.csv("dnrpa-robos-recuperos-autos-201906.csv")
autosjulio2019 <- read.csv("dnrpa-robos-recuperos-autos-201907.csv")
autosagosto2019 <- read.csv("dnrpa-robos-recuperos-autos-201908.csv")
autosseptiembre2019 <- read.csv("dnrpa-robos-recuperos-autos-201909.csv")
autosoctubre2019 <- read.csv("dnrpa-robos-recuperos-autos-201910.csv")
autosnoviembre2019 <- read.csv("dnrpa-robos-recuperos-autos-201911.csv")
autosdiciembre2019 <- read.csv("dnrpa-robos-recuperos-autos-201912.csv")


autos2018 <- rbind(autosenero2018, autosfebrero2018, autosabril2018, autosmayo2018,
                   autosjunio2018,autosjulio2018, autosagosto2018, autosseptiembre2018,
                   autosoctubre2018, autosnoviembre2018, autosdiciembre2018)

autos2018 <- autos2018[,!names(autos2018) %in% c("titular_pais_nacimiento_indec_id")]
glimpse(autos2018)

autos2019 <- rbind(autosenero2019, autosfebrero2019, autosmarzo2019)
autos2019 <- autos2019[,!names(autos2019) %in% c("titular_domicilio_provincia_indec_id", "titular_pais_nacimiento_indec_id")]

glimpse(autos2019)

autos2019sucio <- rbind(autosmayo2019,
                        autosjunio2019,autosjulio2019, autosagosto2019, autosseptiembre2019,
                        autosoctubre2019, autosnoviembre2019, autosdiciembre2019)
autos2019sucio <- autos2019sucio[,!names(autos2019sucio) %in% c("titular_domicilio_provincia_id", "titular_pais_nacimiento_id")]

glimpse(autos2019sucio)

autos2019 <- rbind(autos2019, autos2019sucio)

autosagosto2022<- read.csv("dnrpa-robos-recuperos-autos-202208.csv")
autosenero2022<-read.csv("dnrpa-robos-recuperos-autos-202201.csv")
autosfebrero2022<-read.csv("dnrpa-robos-recuperos-autos-202202.csv")
autosmarzo2022<-read.csv("dnrpa-robos-recuperos-autos-202203.csv")
autosabril2022<-read.csv("dnrpa-robos-recuperos-autos-202204.csv")
autosmayo2022<-read.csv("dnrpa-robos-recuperos-autos-202205.csv")
autosjunio2022<-read.csv("dnrpa-robos-recuperos-autos-202206.csv")
autosjulio2022<-read.csv("dnrpa-robos-recuperos-autos-202207.csv")
#importo datasets del 2020
autosenero2020<-read.csv("dnrpa-robos-recuperos-autos-202001.csv")
autosfebrero2020<-read.csv("dnrpa-robos-recuperos-autos-202002.csv")
autosmarzo2020<-read.csv("dnrpa-robos-recuperos-autos-202003.csv")
autosabril2020<-read.csv("dnrpa-robos-recuperos-autos-202004.csv")
autosmayo2020<-read.csv("dnrpa-robos-recuperos-autos-202005.csv")
autosjunio2020<-read.csv("dnrpa-robos-recuperos-autos-202006.csv")
autosjulio2020<-read.csv("dnrpa-robos-recuperos-autos-202007.csv")
autosagosto2020<- read.csv("dnrpa-robos-recuperos-autos-202008.csv")
autosseptiembre2020<- read.csv("dnrpa-robos-recuperos-autos-202009.csv")
autosoctubre2020<- read.csv("dnrpa-robos-recuperos-autos-202010.csv")
autosnoviembre2020<- read.csv("dnrpa-robos-recuperos-autos-202011.csv")
autosdiciembre2020<- read.csv("dnrpa-robos-recuperos-autos-202012.csv")


autos2022<-rbind(autosenero2022, autosfebrero2022)
view(autos2022)
autos2022<-rbind(autos2022,autosagosto2022)

autos2020<-rbind(autosenero2020,autosfebrero2020,autosmarzo2020,autosabril2020,autosmayo2020,
  autosjunio2020,autosjulio2020,autosagosto2020,autosseptiembre2020,autosnoviembre2020,autosdiciembre2020)
view(autos2020)

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

#
view(autos2020)
autos2020 <- autos2020[,!names(autos2019sucio) %in% c("titular_domicilio_provincia_id", "titular_pais_nacimiento_id")]



autos_robos2020 <- autos2020 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")

comisarias2020 <- autos_robos2020 %>% 
  mutate(cantidad = n())

unique(comisarias$registro_seccional_descripcion)

comisarias2020 <- comisarias2020 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2020$registro_seccional_codigo,
            nombre_comisaria = comisarias2020$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/3.198)

comisarias2020<- unique(comisarias2020)
glimpse(comisarias_c)
view(comisarias2020)



comisarias2020$nombre_comisaria = as.factor(comisarias2020$nombre_comisaria)

comisarias_top <- comisarias2020 %>% filter(cantidad_robos >200)
view(comisarias_top)
ggplot(comisarias_top, aes(x = cantidad_robos, y = reorder(nombre_comisaria, cantidad_robos, decreasing = TRUE), fill = nombre_comisaria)) + 
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "comisarias")
  





