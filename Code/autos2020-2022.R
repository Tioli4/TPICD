library(ggplot2)
library(tidyverse)
library(modelr)
library(lubridate)


setwd("/Users/matia/ICD/Datasets")
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
#Importo datasets del 2021
autosenero2021<-read.csv("dnrpa-robos-recuperos-autos-202101.csv")
autosfebrero2021<-read.csv("dnrpa-robos-recuperos-autos-202102.csv")
autosmarzo2021<-read.csv("dnrpa-robos-recuperos-autos-202103.csv")
autosabril2021<-read.csv("dnrpa-robos-recuperos-autos-202104.csv")
autosmayo2021<-read.csv("dnrpa-robos-recuperos-autos-202105.csv")
autosjunio2021<-read.csv("dnrpa-robos-recuperos-autos-202106.csv")
autosjulio2021<-read.csv("dnrpa-robos-recuperos-autos-202107.csv")
autosagosto2021<- read.csv("dnrpa-robos-recuperos-autos-202108.csv")
autosseptiembre2021<- read.csv("dnrpa-robos-recuperos-autos-202109.csv")
autosoctubre2021<- read.csv("dnrpa-robos-recuperos-autos-202110.csv")
autosnoviembre2021<- read.csv("dnrpa-robos-recuperos-autos-202111.csv")
autosdiciembre2021<- read.csv("dnrpa-robos-recuperos-autos-202112.csv")


autos2022<-rbind(autosenero2022, autosfebrero2022)
view(autos2022)
autos2022<-rbind(autos2022,autosagosto2022)

autos2020<-rbind(autosenero2020,autosfebrero2020,autosmarzo2020,autosabril2020,autosmayo2020,
  autosjunio2020,autosjulio2020,autosagosto2020,autosseptiembre2020,autosnoviembre2020,autosdiciembre2020)
view(autos2020)

autos2021<-rbind(autosenero2021,autosfebrero2021,autosmarzo2021,autosabril2021,autosmayo2021,
                 autosjunio2021,autosjulio2021,autosagosto2021,autosseptiembre2021,
                 autosnoviembre2021,autosdiciembre2021)

#problems(autos)

#autos$automotor_modelo_codigo[autos$automotor_modelo_codigo == ""] <- NA
#sum(is.na(autos$automotor_modelo_codigo)) 

#autos[autos$automotor_tipo_descripcion == "SEDAN 3 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 3 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "SEDAN 3 PTAS.", "automotor_tipo_descripcion"] <- "SEDAN 3 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "BERLINA 3 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 3 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "BERLINA 3 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 3 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "SEDAN 4 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 4 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "SEDAN 4 PTAS.", "automotor_tipo_descripcion"] <- "SEDAN 4 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "BERLINA 4 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 4 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "BERLINA 4 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 4 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "SEDAN 2 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 2 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "SEDAN 5 PTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "SEDAN 5  PUERTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "SEDAN 5PUERTAS", "automotor_tipo_descripcion"] <- "SEDAN 5 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "BERLINA 5 PTAS", "automotor_tipo_descripcion"] <- "BERLINA 5 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "BERLINA 5 PTAS.", "automotor_tipo_descripcion"] <- "BERLINA 5 PUERTAS"


#autos[autos$automotor_tipo_descripcion == "S. WAGON", "automotor_tipo_descripcion"] <- "S.WAGON"

#autos[autos$automotor_tipo_descripcion == "RURAL 4 PTAS", "automotor_tipo_descripcion"] <- "RURAL 4 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "RURAL 5 PTAS", "automotor_tipo_descripcion"] <- "RURAL 5 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "RURAL 4/5 PTAS", "automotor_tipo_descripcion"] <- "RURAL 4/5 PUERTAS"
#autos[autos$automotor_tipo_descripcion == "RURAL 2/3 PTAS", "automotor_tipo_descripcion"] <- "RURAL 2/3 PUERTAS"

#autos[autos$automotor_tipo_descripcion == "TRANSP. DE PASAJEROS", "automotor_tipo_descripcion"] <- "TRANS.DE PASAJEROS"

#autos[autos$automotor_tipo_descripcion == "PICK UP", "automotor_tipo_descripcion"] <- "PICK-UP"
#autos[autos$automotor_tipo_descripcion == "PICK UP MUDANCERO", "automotor_tipo_descripcion"] <- "PICK-UP MUDANCERO"
#autos[autos$automotor_tipo_descripcion == "PICK-UP CAB.DOBLE", "automotor_tipo_descripcion"] <- "PICK-UP CABINA DOBLE"

#autos[autos$automotor_tipo_descripcion == "MINIBUS (O MICROOMNIBUS)", "automotor_tipo_descripcion"] <- "MINIBUS"
#autos[autos$automotor_tipo_descripcion == "PICK UP", "automotor_tipo_descripcion"] <- "PICK-UP"


#unique(autos$automotor_tipo_descripcion)
#view(unique(autos$automotor_tipo_descripcion))


#2018
view(autos2018)

autos_robos2018 <- autos2018 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO")

view(autos_robos2018)

comisarias2018 <- autos_robos2018 %>% 
  mutate(cantidad = n())

unique(comisarias2018$registro_seccional_descripcion)

view(comisarias2018)

comisarias2018 <- comisarias2018 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2018$registro_seccional_codigo,
            nombre_comisaria = comisarias2018$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/33787) #33787 numero de autos robados en el año

comisarias2018 <- unique(comisarias2018)
view(comisarias2018)

#2019
view(autos2019)

autos_robos2019 <- autos2019 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO")

view(autos_robos2019)

comisarias2019 <- autos_robos2019 %>% 
  mutate(cantidad = n())

unique(comisarias2019$registro_seccional_descripcion)

view(comisarias2019)

comisarias2019 <- comisarias2019 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2019$registro_seccional_codigo,
            nombre_comisaria = comisarias2019$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/33683) # numero de autos robados en el año

comisarias2019 <- unique(comisarias2019)
view(comisarias2019)

#2020
view(autos2020)

autos_robos2020 <- autos2020 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")

view(autos_robos2020)

comisarias2020 <- autos_robos2020 %>% 
  mutate(cantidad = n())

unique(comisarias2020$registro_seccional_descripcion)

comisarias2020 <- comisarias2020 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2020$registro_seccional_codigo,
            nombre_comisaria = comisarias2020$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/21663)

comisarias2020<- unique(comisarias2020)
view(comisarias2020)



comisarias2020$nombre_comisaria = as.factor(comisarias2020$nombre_comisaria)

comisarias_top2020 <- comisarias2020 %>% filter(cantidad_robos >200)
view(comisarias_top2020)
ggplot(comisarias_top2020, aes(x = cantidad_robos, y = reorder(nombre_comisaria, cantidad_robos, decreasing = TRUE), fill = nombre_comisaria)) + 
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "comisarias")

#2021
view(autos2021)

autos_robos2021 <- autos2021 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")

view(autos_robos2021)

comisarias2021 <- autos_robos2021 %>% 
  mutate(cantidad = n())

unique(comisarias2021$registro_seccional_descripcion)

view(comisarias2021)

comisarias2021 <- comisarias2021 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2021$registro_seccional_codigo,
            nombre_comisaria = comisarias2021$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/30.074) #33,787 numero de autos robados en el año

comisarias2021 <- unique(comisarias2021)
view(comisarias2021)

#2022
autos_robos2022<- autos2022 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")
view(autos_robos2022)
comisarias2022 <- autos_robos2022 %>% 
  mutate(cantidad = n())
view(comisarias2022)
unique(comisarias2022$registro_seccional_descripcion)

comisarias2022 <- comisarias2022 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2022$registro_seccional_codigo,
            nombre_comisaria = comisarias2022$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/8548)

comisarias2022<- unique(comisarias2022)
view(comisarias2022)


comisarias2022$nombre_comisaria = as.factor(comisarias2022$nombre_comisaria)

comisarias_top2022 <- comisarias2022 %>% filter(cantidad_robos >100)
ggplot(comisarias_top2022, aes(x = cantidad_robos, y = reorder(nombre_comisaria, cantidad_robos, decreasing = TRUE), fill = nombre_comisaria)) + 
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "comisarias")

#Combinando df de comisarias
comisarias_top2022 <- comisarias2022 %>% filter(cantidad_robos >100)
comisarias_top2021 <- comisarias2021 %>% filter(cantidad_robos >200)
comisarias_top2020 <- comisarias2020 %>% filter(cantidad_robos >200)
comisarias_top2019 <- comisarias2019 %>% filter(cantidad_robos >200)
comisarias_top2018 <- comisarias2018 %>% filter(cantidad_robos >200)

view(comisarias_top2022)
view(comisarias_top2021)
view(comisarias_top2020)
view(comisarias_top2019)
view(comisarias_top2018)

comisarias_top <- rbind(comisarias_top2018, comisarias_top2019, comisarias_top2020, comisarias_top2021,
                        comisarias_top2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos)) %>% 
  filter(cantidad_robos_totales >600)

view(comisarias_top)
nombrestop <- unique(comisarias_top$nombre_comisaria)
view(nombrestop)

#filtrando por la matanza n10 en c/año y viendo cantidad

comisarias2018_LM10 <- comisarias2018 %>% 
  filter(nombre_comisaria == "LA MATANZA Nº 10" ) %>% 
  mutate(año = 2018)

comisarias2019_LM10 <- comisarias2019 %>% 
  filter(nombre_comisaria == "LA MATANZA Nº 10" ) %>% 
  mutate(año = 2019)

comisarias2020_LM10 <- comisarias2020 %>% 
  filter(nombre_comisaria == "LA MATANZA Nº 10" ) %>% 
  mutate(año = 2020)

comisarias2021_LM10 <- comisarias2021 %>% 
  filter(nombre_comisaria == "LA MATANZA Nº 10" ) %>% 
  mutate(año = 2021)

comisarias2022_LM10 <- comisarias2022 %>% 
  filter(nombre_comisaria == "LA MATANZA Nº 10" ) %>% 
  mutate(año = 2022) 


la_matanza_10 <- rbind(comisarias2018_LM10,comisarias2019_LM10,comisarias2020_LM10,comisarias2021_LM10,
                       comisarias2022_LM10) 
 # mutate(cantidad_robos2019 = comisarias2019_LM10$cantidad_robos,
 #        cantidad_robos2020 = comisarias2020_LM10$cantidad_robos,
  #       cantidad_robos2021 = comisarias2021_LM10$cantidad_robos,
  #       cantidad_robos2022 = comisarias2022_LM10$cantidad_robos)

view(la_matanza_10)

ggplot(la_matanza_10, aes(x = año, y = cantidad_robos, fill = cantidad_robos)) +
  geom_bar(position = "dodge",  stat = "identity") + 
  labs(title = "Cantidad de robos de autos en la comisaria La matanza N°10",
       subtitle = "Por año, desde 2018 hasta actualidad", x = "Año", y = "Cantidad de robos de autos",
       fill = "Cantidad")

#


matanza09<-autos_robos2020%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')

matanza2022<-autos_robos2022%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')

matanza9 <- rbind(matanza09,matanza2022)

view(matanza9)
    



#comisarias_top <- comisarias_top %>% 
#  mutate(cantidad_robos2018 = comisarias2018$cantidad_robos)


