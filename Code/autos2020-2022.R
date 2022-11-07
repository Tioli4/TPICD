library(ggplot2)
library(tidyverse)
library(modelr)
library(lubridate)
library(ggridges)


setwd("C:/Users/matia/icd/Datasets")
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
#view(autos2022)
autos2022<-rbind(autos2022,autosagosto2022)

autos2020<-rbind(autosenero2020,autosfebrero2020,autosmarzo2020,autosabril2020,autosmayo2020,
  autosjunio2020,autosjulio2020,autosagosto2020,autosseptiembre2020,autosnoviembre2020,autosdiciembre2020)
#view(autos2020)

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
#view(autos2018)

autos_robos2018 <- autos2018 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO")

#view(autos_robos2018)

comisarias2018 <- autos_robos2018 %>% 
  mutate(cantidad = n())

unique(comisarias2018$registro_seccional_descripcion)

#view(comisarias2018)

comisarias2018 <- comisarias2018 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2018$registro_seccional_codigo,
            nombre_comisaria = comisarias2018$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/33787) #33787 numero de autos robados en el año

comisarias2018 <- unique(comisarias2018)
#view(comisarias2018)

#2019
#view(autos2019)

autos_robos2019 <- autos2019 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO")

#view(autos_robos2019)

comisarias2019 <- autos_robos2019 %>% 
  mutate(cantidad = n())

unique(comisarias2019$registro_seccional_descripcion)

#view(comisarias2019)

comisarias2019 <- comisarias2019 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2019$registro_seccional_codigo,
            nombre_comisaria = comisarias2019$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/33683) # numero de autos robados en el año

comisarias2019 <- unique(comisarias2019)
#view(comisarias2019)

#2020
#view(autos2020)

autos_robos2020 <- autos2020 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")

#view(autos_robos2020)

comisarias2020 <- autos_robos2020 %>% 
  mutate(cantidad = n())

unique(comisarias2020$registro_seccional_descripcion)

comisarias2020 <- comisarias2020 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2020$registro_seccional_codigo,
            nombre_comisaria = comisarias2020$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/21663)

comisarias2020<- unique(comisarias2020)
#view(comisarias2020)



comisarias2020$nombre_comisaria = as.factor(comisarias2020$nombre_comisaria)

comisarias_top2020 <- comisarias2020 %>% filter(cantidad_robos >200)
#view(comisarias_top2020)
ggplot(comisarias_top2020, aes(x = cantidad_robos, y = reorder(nombre_comisaria, cantidad_robos, decreasing = TRUE), fill = nombre_comisaria)) + 
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "comisarias")

#2021
#view(autos2021)

autos_robos2021 <- autos2021 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")

#view(autos_robos2021)

comisarias2021 <- autos_robos2021 %>% 
  mutate(cantidad = n())

unique(comisarias2021$registro_seccional_descripcion)

#view(comisarias2021)

comisarias2021 <- comisarias2021 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2021$registro_seccional_codigo,
            nombre_comisaria = comisarias2021$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/30.074) #33,787 numero de autos robados en el año

comisarias2021 <- unique(comisarias2021)
#view(comisarias2021)

#2022
autos_robos2022<- autos2022 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA")
#view(autos_robos2022)
comisarias2022 <- autos_robos2022 %>% 
  mutate(cantidad = n())
#view(comisarias2022)
unique(comisarias2022$registro_seccional_descripcion)

comisarias2022 <- comisarias2022 %>% ungroup() %>% 
  summarise(codigo_comisaria = comisarias2022$registro_seccional_codigo,
            nombre_comisaria = comisarias2022$registro_seccional_descripcion,
            cantidad_robos = cantidad) %>% 
  mutate(porcentaje = cantidad_robos/8548)

comisarias2022<- unique(comisarias2022)
#view(comisarias2022)


comisarias2022$nombre_comisaria = as.factor(comisarias2022$nombre_comisaria)

comisarias_top2022 <- comisarias2022 %>% filter(cantidad_robos >100)
ggplot(comisarias_top2022, aes(x = cantidad_robos, y = reorder(nombre_comisaria, cantidad_robos, decreasing = TRUE), 
                               fill = nombre_comisaria)) + 
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "comisarias")

#Combinando df de comisarias
comisarias_top2022 <- comisarias2022 %>% filter(cantidad_robos >100)
comisarias_top2021 <- comisarias2021 %>% filter(cantidad_robos >200)
comisarias_top2020 <- comisarias2020 %>% filter(cantidad_robos >200)
comisarias_top2019 <- comisarias2019 %>% filter(cantidad_robos >200)
comisarias_top2018 <- comisarias2018 %>% filter(cantidad_robos >200)

#view(comisarias_top2022)
#view(comisarias_top2021)
#view(comisarias_top2020)
#view(comisarias_top2019)
#view(comisarias_top2018)

comisarias_top <- rbind(comisarias_top2018, comisarias_top2019, comisarias_top2020, comisarias_top2021,
                        comisarias_top2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos))
  #filter(cantidad_robos_totales >600)

view(comisarias_top)

nombrestop <- unique(comisarias_top$nombre_comisaria)
#view(nombrestop)

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

#view(la_matanza_10)

ggplot(la_matanza_10, aes(x = año, y = cantidad_robos, fill = cantidad_robos)) +
  geom_bar(position = "dodge",  stat = "identity") + 
  labs(title = "Cantidad de robos de autos en la comisaria La matanza N°10",
       subtitle = "Por año, desde 2018 hasta actualidad", x = "Año", y = "Cantidad de robos de autos",
       fill = "Cantidad")

#
matanza0918<-autos_robos2018%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')
matanza0919<-autos_robos2019%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')
matanza0920<-autos_robos2020%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')
matanza0921<-autos_robos2021%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')
matanza0922<-autos_robos2022%>%
  filter(registro_seccional_descripcion=='LA MATANZA Nº 09')

matanza0920 <-  matanza0920[,!names(matanza0920) %in% c("automotor_tipo_codigo")]
matanza0919 <-  matanza0919[,!names(matanza0919) %in% c("automotor_tipo_codigo")]
matanza0918 <-  matanza0918[,!names(matanza0918) %in% c("automotor_tipo_codigo")]
matanza0921 <-  matanza0921[,!names(matanza0921) %in% c("automotor_tipo_codigo")]
matanza0922 <-  matanza0922[,!names(matanza0922) %in% c("automotor_tipo_codigo")]

matanza9 <- rbind(matanza0920,matanza0921,matanza0919,matanza0918,matanza0922)
matanza9<-matanza9%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
  mutate(anio=year(tramite_fecha)) %>% 
  ungroup() %>% 
  group_by(anio) %>% 
  mutate(cantidad = n())

#view(matanza9)

matanza9$anio = as.factor(matanza9$anio)

matanza9u <-matanza9%>%summarise(anio = unique(anio),
                                 cantidad = cantidad)
m9u <- unique(matanza9u)

m9u %>% ggplot() + geom_point(aes(x = anio, y = cantidad)) +
  labs(x = "Año", y = "Cantidad de robos", title = "Distribucion de robos de autos por año", 
       subtitle = "En la comisaria La matanza N° 09")


#comisarias_top <- comisarias_top %>% 
#  mutate(cantidad_robos2018 = comisarias2018$cantidad_robos)
ggplot(comisarias_top, aes(x = cantidad_robos_totales, y = reorder(nombre_comisaria, cantidad_robos_totales) , fill = (cantidad_robos_totales))) + 
  geom_bar(position = "dodge", stat = "identity") +
  labs(x = "Robos de autos", y = "Comisaria", 
       title = "Cantidad de robos de autos por comisarias", subtitle = "Desde el 2018 hasta la actualidad")



#Autos recuperados 2018
autos_rec2018 <- autos2018 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "COMUNICACIÓN DE RECUPERO")


autos_rec2018 <- autos_rec2018 %>% 
  mutate(cantidad_recuperos = n())

comisarias_rec2018 <- autos_rec2018 %>% ungroup() %>% 
  summarise(codigo_comisaria = autos_rec2018$registro_seccional_codigo,
            nombre_comisaria = autos_rec2018$registro_seccional_descripcion,
            cantidad_recuperos = cantidad_recuperos)

comisarias_rec2018 <- unique(comisarias_rec2018)

#Autos recuperados 2019
autos_rec2019 <- autos2019 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "COMUNICACIÓN DE RECUPERO")


autos_rec2019 <- autos_rec2019 %>% 
  mutate(cantidad_recuperos = n())

comisarias_rec2019<- autos_rec2019 %>% ungroup() %>% 
  summarise(codigo_comisaria = autos_rec2019$registro_seccional_codigo,
            nombre_comisaria = autos_rec2019$registro_seccional_descripcion,
            cantidad_recuperos = cantidad_recuperos)

comisarias_rec2019 <- unique(comisarias_rec2019)
#view(comisarias_rec2019)


#Autos recuperados 2020
autos_rec2020 <- autos2020 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "COMUNICACIÓN DE RECUPERO")


autos_rec2020 <- autos_rec2020 %>% 
  mutate(cantidad_recuperos = n())

comisarias_rec2020<- autos_rec2020 %>% ungroup() %>% 
  summarise(codigo_comisaria = autos_rec2020$registro_seccional_codigo,
            nombre_comisaria = autos_rec2020$registro_seccional_descripcion,
            cantidad_recuperos = cantidad_recuperos)

comisarias_rec2020 <- unique(comisarias_rec2020)
#view(comisarias_rec2020)

#Autos recuperados 2021
autos_rec2021 <- autos2021 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "COMUNICACIÓN DE RECUPERO")


autos_rec2021 <- autos_rec2021 %>% 
  mutate(cantidad_recuperos = n())

comisarias_rec2021<- autos_rec2021 %>% ungroup() %>% 
  summarise(codigo_comisaria = autos_rec2021$registro_seccional_codigo,
            nombre_comisaria = autos_rec2021$registro_seccional_descripcion,
            cantidad_recuperos = cantidad_recuperos)

comisarias_rec2021 <- unique(comisarias_rec2021)
#view(comisarias_rec2021)

#Autos recuperados 2022
autos_rec2022 <- autos2022 %>% group_by(registro_seccional_descripcion) %>%
  filter(tramite_tipo == "COMUNICACIÓN DE RECUPERO")


autos_rec2022 <- autos_rec2022 %>% 
  mutate(cantidad_recuperos = n())

comisarias_rec2022<- autos_rec2022 %>% ungroup() %>% 
  summarise(codigo_comisaria = autos_rec2022$registro_seccional_codigo,
            nombre_comisaria = autos_rec2022$registro_seccional_descripcion,
            cantidad_recuperos = cantidad_recuperos)

comisarias_rec2022 <- unique(comisarias_rec2022)
#view(comisarias_rec2022)


#Combinamos datasets de comisarias con robos y de recuperaciones

comisarias_top_rec <- rbind(comisarias_rec2018, comisarias_rec2019, comisarias_rec2020, comisarias_rec2021,
                        comisarias_rec2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_recuperos_totales = sum(cantidad_recuperos))

#view(comisarias_top_rec)

#Combinamos dataset de comisaria top rec y robos, por top robados

comisarias_top_robo_rec <- merge(comisarias_top, comisarias_top_rec, by = "nombre_comisaria")

#view(comisarias_top_robo_rec)

ggplot(comisarias_top_robo_rec, aes(x = cantidad_robos_totales, y = reorder(nombre_comisaria, cantidad_robos_totales) ,
                           fill = desc(cantidad_recuperos_totales))) + 
  geom_bar(position = "dodge", stat = "identity") +
  labs(x = "Robos de autos", y = "Comisaria", 
       title = "Cantidad de robos de autos por comisarias", subtitle = "Desde el 2018 hasta la actualidad",
       fill = "Cantidad de recuperos")

#Combinamos dataset de comisaria top rec y robos, por top recuperados
comisarias_10_rec <- rbind(comisarias_rec2018, comisarias_rec2019, comisarias_rec2020, comisarias_rec2021,
                            comisarias_rec2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_recuperos_totales = sum(cantidad_recuperos))%>% 
  filter(cantidad_recuperos_totales>67)
#view(comisarias_10_rec)
comisariass<- rbind(comisarias2018, comisarias2019, comisarias2020, comisarias2021,
                        comisarias2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos)) 


comisarias_top_rec <- merge(comisarias_10_rec , comisariass, by = "nombre_comisaria")

#view(comisarias_top_rec)

ggplot(comisarias_top_rec, aes(x = cantidad_recuperos_totales, y = reorder(nombre_comisaria, cantidad_recuperos_totales) ,
                                    fill = desc(cantidad_robos_totales))) + 
  geom_bar(position = "dodge", stat = "identity") +
  labs(x = "Recuperos de autos", y = "Comisaria", 
       title = "Cantidad de recuperos de autos por comisarias", subtitle = "Desde el 2018 hasta la actualidad",
       fill = "Cantidad de robos")
#view(autos2019)
# IDEA : Density ridges por fechas
autos2019<-autos2019%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
           mutate(anio=year(tramite_fecha))
autos2020<-autos2020%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
  mutate(anio=year(tramite_fecha))
autos2021<-autos2021%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
  mutate(anio=year(tramite_fecha))
autos2022<-autos2022%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
  mutate(anio=year(tramite_fecha))
autos2018<-autos2018%>%
  group_by(tramite_fecha)%>%
  mutate(mes=month(tramite_fecha))%>%
  mutate(anio=year(tramite_fecha))
glimpse(autos2020)


autos2018 <-  autos2018[,!names(autos2018) %in% c("automotor_tipo_codigo")]
autos2019 <-  autos2019[,!names(autos2019) %in% c("automotor_tipo_codigo")]
autos2020 <- autos2020[,!names(autos2020) %in% c("automotor_tipo_codigo")]
autos2021 <- autos2021[,!names(autos2021) %in% c("automotor_tipo_codigo")]
autos2022 <- autos2022[,!names(autos2022) %in% c("automotor_tipo_codigo")]

autos<-rbind(autos2018,autos2019,autos2020,autos2021,autos2022)
#view(autos)

autos[autos$tramite_tipo == "DENUNCIA DE ROBO O HURTO / RETENCION INDEBIDA", "tramite_tipo"] <- "DENUNCIA DE ROBO O HURTO"

#view(autos)

#Creacion de mapa de delito

library(sf)

#barrios <- st_read('https://raw.githubusercontent.com/esalvatierra/DGBCABA20/master/CABA_barrios.geojson')
#view(barrios)
#
#barrios %>%
 # ggplot() +
  #geom_sf() +
  #theme_bw()

municipios <- st_read('C:/Users/matia/ICD/Datasets/circuitos-electorales.geojson')

municipios %>% filter(municipio_nombre == "La Matanza" )

view(municipios)

municipios %>% 
  ggplot(aes(fill = municipio_nombre)) +
  geom_sf() +
  theme_bw() +
  coord_sf(ylim = c( -34.2, -35),
           xlim = c(-59,-57.6))

#view(autos_robos2018)

library("rjson")




#Robos de capital
#comisarias_juntas<-rbind(comisarias2018,comisarias2019,comisarias2020,comisarias2021,comisarias2022)
#robos_totales<-rbind(autos_robos2018,autos_robos2019,autos_robos2020,autos_robos2021,autos_robos2022)

#view(robos_totales)
#robos_capital<-robos_totales%>%
 # filter(registro_seccional_provincia=='Ciudad Autónoma de Bs.As.')%>%
  #group_by(registro_seccional_descripcion)
#robos_capital <- robos_capital %>% 
 # mutate(cantidad = n())
#view(robos_capital)
#robos_capital <- robos_capital %>% ungroup() %>% 
 # summarise(codigo_comisaria = robos_capital$registro_seccional_codigo,
  #          nombre_comisaria = robos_capital$registro_seccional_descripcion,
   #         cantidad_robos = cantidad)

#robos_capital <- unique(robos_capital)

#Creo nuevo data para cambiar nombres de comisarias al nombre de su municipio y mergear con el mapa

comisariasMuni <- rbind(comisarias2018, comisarias2019, comisarias2020, comisarias2021, comisarias2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos))

#LA MATANZA
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 09", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 01", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 02", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 03", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 04", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 05", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 06", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 07", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 08", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 10", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 11", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 12", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 13", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 14", "nombre_comisaria"] <- "La Matanza"
comisariasMuni[comisariasMuni$nombre_comisaria == "LA MATANZA Nº 15", "nombre_comisaria"] <- "La Matanza"


#LOMAS DE ZAMORA
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 1", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 2", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 3", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 4", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 5", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 6", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 7", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 8", "nombre_comisaria"] <- "Lomas de Zamora"
comisariasMuni[comisariasMuni$nombre_comisaria == "LOMAS DE ZAMORA Nº 9", "nombre_comisaria"] <- "Lomas de Zamora"

#MALVINAS ARGENTINAS
comisariasMuni[comisariasMuni$nombre_comisaria == "MALVINAS ARGENTINAS Nº 3", "nombre_comisaria"] <- "Malvinas Argentinas"
comisariasMuni[comisariasMuni$nombre_comisaria == "MALVINAS ARGENTINAS Nº 2 (EX. SAN MIGUEL NRO. 5)", "nombre_comisaria"] <- "Malvinas Argentinas"
comisariasMuni[comisariasMuni$nombre_comisaria == "MALVINAS ARGENTINAS Nº 1 (EX. SAN MIGUEL NRO. 4)", "nombre_comisaria"] <- "Malvinas Argentinas"

#SAN VICENTE
#comisariasMuni[comisariasMuni$nombre_comisaria == "SAN VICENTE", "nombre_comisaria"] <- "San Vicente"

#MERLO
comisariasMuni[comisariasMuni$nombre_comisaria == "MERLO Nº 1", "nombre_comisaria"] <- "Merlo"
comisariasMuni[comisariasMuni$nombre_comisaria == "MERLO Nº 2", "nombre_comisaria"] <- "Merlo"
comisariasMuni[comisariasMuni$nombre_comisaria == "MERLO Nº 3", "nombre_comisaria"] <- "Merlo"
comisariasMuni[comisariasMuni$nombre_comisaria == "MERLO Nº 4", "nombre_comisaria"] <- "Merlo"
comisariasMuni[comisariasMuni$nombre_comisaria == "MERLO Nº 5", "nombre_comisaria"] <- "Merlo"

#ESTEBAN ECHEVERRIA
comisariasMuni[comisariasMuni$nombre_comisaria == "ESTEBAN ECHEVERRIA Nº 1", "nombre_comisaria"] <- "Esteban Echeverría"
comisariasMuni[comisariasMuni$nombre_comisaria == "ESTEBAN ECHEVERRIA Nº 2", "nombre_comisaria"] <- "Esteban Echeverría"
comisariasMuni[comisariasMuni$nombre_comisaria == "ESTEBAN ECHEVERRIA Nº 3", "nombre_comisaria"] <- "Esteban Echeverría"
comisariasMuni[comisariasMuni$nombre_comisaria == "ESTEBAN ECHEVERRIA Nº 4", "nombre_comisaria"] <- "Esteban Echeverría"

#ADROGUE a ALMIRANTE BROWN
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 1", "nombre_comisaria"] <- "Almirante Brown"
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 2", "nombre_comisaria"] <- "Almirante Brown"
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 3", "nombre_comisaria"] <- "Almirante Brown"
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 4", "nombre_comisaria"] <- "Almirante Brown"
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 5", "nombre_comisaria"] <- "Almirante Brown"
comisariasMuni[comisariasMuni$nombre_comisaria == "ADROGUE Nº 6", "nombre_comisaria"] <- "Almirante Brown"

#JOSÉ C. PAZ
comisariasMuni[comisariasMuni$nombre_comisaria == "JOSE C. PAZ Nº 1", "nombre_comisaria"] <- "José C. Paz"
comisariasMuni[comisariasMuni$nombre_comisaria == "JOSE C. PAZ Nº 2", "nombre_comisaria"] <- "José C. Paz"
comisariasMuni[comisariasMuni$nombre_comisaria == "JOSE C. PAZ Nº 3", "nombre_comisaria"] <- "José C. Paz"

#MORENO
comisariasMuni[comisariasMuni$nombre_comisaria == "MORENO Nº 1", "nombre_comisaria"] <- "Moreno"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORENO Nº 2", "nombre_comisaria"] <- "Moreno"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORENO Nº 3", "nombre_comisaria"] <- "Moreno"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORENO Nº 4", "nombre_comisaria"] <- "Moreno"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORENO Nº 5", "nombre_comisaria"] <- "Moreno"

#MORON
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 01", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 02", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 03", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 04", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 05", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 06", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 07", "nombre_comisaria"] <- "Morón"
comisariasMuni[comisariasMuni$nombre_comisaria == "MORON Nº 04 (EX. MORON Nº 9)", "nombre_comisaria"] <- "Morón"


#SAN MARTIN
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 1", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 2", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 3", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 4", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 5", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 6", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 7", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 8", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MARTIN Nº 9", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "GENERAL SAN MARTIN Nº 1", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "GENERAL SAN MARTIN Nº 2", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "GENERAL SAN MARTIN Nº 3", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "LIB.GRAL.SAN MARTIN", "nombre_comisaria"] <- "General San Martín"
comisariasMuni[comisariasMuni$nombre_comisaria == "LIB. GRAL. SAN MARTIN", "nombre_comisaria"] <- "General San Martín"

#SAN MIGUEL
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MIGUEL Nº 1", "nombre_comisaria"] <- "San Miguel"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MIGUEL Nº 2", "nombre_comisaria"] <- "San Miguel"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN MIGUEL Nº 3", "nombre_comisaria"] <- "San Miguel"

#TRES DE FEBRERO
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 1", "nombre_comisaria"] <- "Tres de Febrero"
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 2", "nombre_comisaria"] <- "Tres de Febrero"
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 3", "nombre_comisaria"] <- "Tres de Febrero"
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 4", "nombre_comisaria"] <- "Tres de Febrero"
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 5", "nombre_comisaria"] <- "Tres de Febrero"
comisariasMuni[comisariasMuni$nombre_comisaria == "TRES DE FEBRERO Nº 6", "nombre_comisaria"] <- "Tres de Febrero"

#FLORENCIO VARELA
comisariasMuni[comisariasMuni$nombre_comisaria == "FLORENCIO VARELA Nº 1", "nombre_comisaria"] <- "Florencio Varela"
comisariasMuni[comisariasMuni$nombre_comisaria == "FLORENCIO VARELA Nº 2", "nombre_comisaria"] <- "Florencio Varela"
comisariasMuni[comisariasMuni$nombre_comisaria == "FLORENCIO VARELA Nº 3", "nombre_comisaria"] <- "Florencio Varela"

#LANUS
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 1", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 2", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 3", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 4", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 5", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 6", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 7", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 8", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 9", "nombre_comisaria"] <- "Lanús"
comisariasMuni[comisariasMuni$nombre_comisaria == "LANUS Nº 10", "nombre_comisaria"] <- "Lanús"

#QUILMES
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 1", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 2", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 3", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 4", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 5 (EX 9)", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 6", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 7", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 8", "nombre_comisaria"] <- "Quilmes"
comisariasMuni[comisariasMuni$nombre_comisaria == "QUILMES Nº 9", "nombre_comisaria"] <- "Quilmes"

#AVELLANEDA
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 1", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 2", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 3", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 4", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 5", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 6", "nombre_comisaria"] <- "Avellaneda"
comisariasMuni[comisariasMuni$nombre_comisaria == "AVELLANEDA Nº 7", "nombre_comisaria"] <- "Avellaneda"

#LA PLATA
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 01", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 02", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 03", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 04", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 05", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 06", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 07", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 08", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 09", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 10", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 11", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 12", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 13", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 14", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 15", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 16", "nombre_comisaria"] <- "La Plata"
#comisariasMuni[comisariasMuni$nombre_comisaria == "LA PLATA Nº 17", "nombre_comisaria"] <- "La Plata"

#OLIVOS A VICENTE LOPEZ
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 01", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 02", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 03", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 04", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 05", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 06", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 07", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 08", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 09", "nombre_comisaria"] <- "Vicente López"
comisariasMuni[comisariasMuni$nombre_comisaria == "OLIVOS Nº 10", "nombre_comisaria"] <- "Vicente López"

#HURLINGHAM
comisariasMuni[comisariasMuni$nombre_comisaria == "HURLINGHAM Nº 1 (EX. MORON Nº 4)", "nombre_comisaria"] <- "Hurlingham"
comisariasMuni[comisariasMuni$nombre_comisaria == "HURLINGHAM Nº 2 (EX. MORON Nº 10)", "nombre_comisaria"] <- "Hurlingham"
comisariasMuni[comisariasMuni$nombre_comisaria == "HURLINGHAM Nº 3", "nombre_comisaria"] <- "Hurlingham"
comisariasMuni[comisariasMuni$nombre_comisaria == "HURLINGHAM N° 3", "nombre_comisaria"] <- "Hurlingham"

#PILAR
#comisariasMuni[comisariasMuni$nombre_comisaria == "PILAR Nº 1", "nombre_comisaria"] <- "Pilar"
#comisariasMuni[comisariasMuni$nombre_comisaria == "PILAR Nº 2", "nombre_comisaria"] <- "Pilar"
#comisariasMuni[comisariasMuni$nombre_comisaria == "PILAR Nº 3", "nombre_comisaria"] <- "Pilar"
#comisariasMuni[comisariasMuni$nombre_comisaria == "PILAR Nº 4", "nombre_comisaria"] <- "Pilar"
#comisariasMuni[comisariasMuni$nombre_comisaria == "PILAR Nº 5", "nombre_comisaria"] <- "Pilar"

#SAN ISIDRO
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 01", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 02", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 03", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 04", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 05", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 06", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 07", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 08", "nombre_comisaria"] <- "San Isidro"
comisariasMuni[comisariasMuni$nombre_comisaria == "SAN ISIDRO Nº 09", "nombre_comisaria"] <- "San Isidro"

#ITUZAINGO
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO Nº 1 (EX. MORON Nº 8)", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGÓ Nº 2 (EX. MORÓN Nº 11)", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO Nº 1", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO Nº 2", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO Nº 3", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO Nº 4", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO N°2", "nombre_comisaria"] <- "Ituzaingó"
comisariasMuni[comisariasMuni$nombre_comisaria == "ITUZAINGO", "nombre_comisaria"] <- "Ituzaingó"

#TIGRE
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 1", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 2", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 3", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 4", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 5", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE Nº 6", "nombre_comisaria"] <- "Tigre"
comisariasMuni[comisariasMuni$nombre_comisaria == "TIGRE N° 6", "nombre_comisaria"] <- "Tigre"

comisariasMuni <- comisariasMuni %>%  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos_totales))

comisariasMuni<-rename(comisariasMuni,municipio_nombre=nombre_comisaria)

#EZEIZA
comisariasMuni[comisariasMuni$municipio_nombre == "EZEIZA Nº 1 (EX. ESTEBAN ECHEVERRIA NO 4)", "municipio_nombre"] <- "Ezeiza"
comisariasMuni[comisariasMuni$municipio_nombre == "EZEIZA Nº 2", "municipio_nombre"] <- "Ezeiza"

#BERAZATEGUI
comisariasMuni[comisariasMuni$municipio_nombre == "BERAZATEGUI Nº 1", "municipio_nombre"] <- "Berazategui"
comisariasMuni[comisariasMuni$municipio_nombre == "BERAZATEGUI Nº 2", "municipio_nombre"] <- "Berazategui"
comisariasMuni[comisariasMuni$municipio_nombre == "BERAZATEGUI Nº 3", "municipio_nombre"] <- "Berazategui"
comisariasMuni[comisariasMuni$municipio_nombre == "BERAZATEGUI Nº 4", "municipio_nombre"] <- "Berazategui"
comisariasMuni[comisariasMuni$municipio_nombre == "BERAZATEGUI Nº 5", "municipio_nombre"] <- "Berazategui"

#SAN FERNANDO
comisariasMuni[comisariasMuni$municipio_nombre == "SAN FERNANDO Nº 1", "municipio_nombre"] <- "San Fernando"
comisariasMuni[comisariasMuni$municipio_nombre == "SAN FERNANDO Nº 2", "municipio_nombre"] <- "San Fernando"
comisariasMuni[comisariasMuni$municipio_nombre == "SAN FERNANDO Nº 3", "municipio_nombre"] <- "San Fernando"
comisariasMuni[comisariasMuni$municipio_nombre == "SAN FERNANDO Nº 4", "municipio_nombre"] <- "San Fernando"



comisariasMuni <- comisariasMuni %>%  group_by(municipio_nombre) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos_totales))

view(comisariasMuni)


munis <- left_join(municipios, comisariasMuni, by = "municipio_nombre")
view(munis)

munis$municipio_nombre = as.factor(munis$municipio_nombre)

 
g1 <- ggplot(munis, aes(fill = cantidad_robos_totales), colors = "red") +
  geom_sf() +
  theme_bw() +
  coord_sf(ylim = c( -34.2, -35), xlim = c(-59,-57.6)) + 
  labs(title = "Distribucion de cantidad de robos de autos por partido de GBA",
       fill = "Cantidad de robos", x = "Latitud", y = "Longitud") +
  theme(plot.title = element_text(size=30), legend.title = element_text(size = 20),
        legend.text = element_text(size = 15), axis.title.x = element_text(size = 15),
        axis.title.y = element_text(size = 15))

g1

"TODO: ver si podemos hacer de municipios y no de departamentos"

municipios2 <- st_read('C:/Users/matia/ICD/Datasets/municipios.geojson')

view(municipios2)

comisariasMuni2 <- comisariasMuni
colnames(comisariasMuni2)[1] <- "nombre"
view(comisariasMuni2)


munis2 <- left_join(municipios2, comisariasMuni2, by = "nombre")

view(munis2)
munis2$nombre = as.factor(munis2$nombre)


g2 <-  ggplot(munis2, aes(fill = cantidad_robos_totales), colors = "red") +
  geom_sf() +
  theme_bw() +
  coord_sf(ylim = c( -34.2, -35),
           xlim = c(-59,-57.6)) +
  geom_sf_text(aes(label = nombre), colour = "white")  

g3 <- geom_sf_text(data = munis2, aes(label = nombre, size = 100), colour = "orange", ) 

g1 + g3

view(autos)


#Bar plot de comisarias de la matanza

comisariasLM <- rbind(comisarias2018, comisarias2019, comisarias2020, comisarias2021, comisarias2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_robos_totales = sum(cantidad_robos))

comisariasLM1 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 01")
comisariasLM2 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 02")
comisariasLM3 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 03")
comisariasLM4 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 04")
comisariasLM5 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 05")
comisariasLM6 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 06")
comisariasLM7 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 07")
comisariasLM8 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 08")
comisariasLM9 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 09")
comisariasLM10 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 10")
comisariasLM11 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 11")
comisariasLM12 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 12")
comisariasLM13 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 13")
comisariasLM14 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 14")
comisariasLM15 <- comisariasLM %>% filter(nombre_comisaria == "LA MATANZA Nº 15")


comisariasLM <- rbind(comisariasLM1, comisariasLM2, comisariasLM3, comisariasLM4, comisariasLM5,
                      comisariasLM6, comisariasLM7, comisariasLM8, comisariasLM9,
                      comisariasLM10, comisariasLM11, comisariasLM12, comisariasLM13,
                      comisariasLM14, comisariasLM15)
view(comisariasLM)

comisarias_recLM <- rbind(comisarias_rec2018, comisarias_rec2019, comisarias_rec2020, comisarias_rec2021,
                            comisarias_rec2022) %>% 
  group_by(nombre_comisaria) %>% 
  summarise(cantidad_recuperos_totales = sum(cantidad_recuperos))

comisariasLM2 <- merge(comisariasLM, comisarias_recLM, by = "nombre_comisaria")
view(comisariasLM2)

#cantidad de robos por comisarias
ggplot(data = comisariasLM2, aes(y = reorder(nombre_comisaria, cantidad_robos_totales, decreasing = FALSE),
                                x = cantidad_robos_totales, fill = "red")) +
  geom_bar(position = "dodge", stat = "identity") + 
  labs(title = "Robos de autos por comisaria", x = "Robos totales",
       y = "Comisarias", subtitle = "En el municipio de La Matanza") + 
  theme(plot.title = element_text(size=30),
        plot.subtitle = element_text(size = 20),
        axis.title = element_text(size = 30),
        axis.text = element_text(size = 20))
#cantidad de recupéros por comisarias
ggplot(data = comisariasLM2, aes(y = reorder(nombre_comisaria, cantidad_recuperos_totales, decreasing = FALSE),
                                 x = cantidad_recuperos_totales)) +
  geom_bar(position = "dodge", stat = "identity", fill = "#56B4E9") + 
  labs(title = "Robos de autos por comisaria", x = "Recuperos totales",
       y = "Comisarias", subtitle = "En el municipio de La Matanza") + 
  theme(plot.title = element_text(size=30),
        plot.subtitle = element_text(size = 20),
        axis.title = element_text(size = 30),
        axis.text = element_text(size = 20))

autos2 <- autos %>% group_by(tramite_tipo, registro_seccional_descripcion)

autosLM1 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 01")
autosLM2 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 02")
autosLM3 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 03")
autosLM4 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 04")
autosLM5 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 05")
autosLM6 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 06")
autosLM7 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 07")
autosLM8 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 08")
autosLM9 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 09")
autosLM10 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 10")
autosLM11 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 11")
autosLM12 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 12")
autosLM13 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 13")
autosLM14 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 14")
autosLM15 <- autos2 %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 15")


autosLM <- rbind(autosLM1, autosLM2, autosLM3, autosLM4, autosLM5, autosLM6,
                 autosLM7, autosLM8, autosLM9, autosLM10, autosLM11, autosLM12, autosLM12,
                 autosLM13, autosLM14, autosLM15)

ggplot(data = autosLM, aes(y = registro_seccional_descripcion, fill = tramite_tipo)) +
  geom_bar(position = "dodge") + 
  labs(title = "Robos de autos por comisaria", x = "Robos totales",
       y = "Comisarias", subtitle = "En el municipio de La Matanza") + 
  theme(plot.title = element_text(size=30),
        axis.title = element_text(size = 30),
        axis.text = element_text(size = 20))


#MODELADO
mod1 <- lm(cantidad_recuperos_totales ~ log(cantidad_robos_totales), comisariasLM2)

mod2 <- lm(cantidad_recuperos_totales ~ cantidad_robos_totales + I(cantidad_robos_totales^2), comisariasLM2)

grid <- add_predictions(comisariasLM2, mod1)

view(grid)

g3 <- ggplot(grid) + 
  geom_point( aes(x = cantidad_robos_totales, y = cantidad_recuperos_totales)) +
  labs(title = "Cantidad de recuperos dependiendo de cantidad de robos",
       subtitle = "En La Matanza", x = "Robos totales", y = "Recuperos totales")

g3 + geom_smooth(aes(cantidad_robos_totales, pred), color = "red", size = 1.2)
 

summary(mod1)

#LA MATANZA 9 modelado
m9unique<-matanza9%>% ungroup() %>% 
  summarise(cantidad,anio)

m9unique<-unique(m9unique)

m9unique$anio = as.integer(m9unique$anio)

mod1 <- lm(cantidad ~ anio, m9unique)

grid <- add_predictions(m9unique, mod1)

g6 <- ggplot(m9unique, aes(x = anio, y = cantidad)) + geom_point() + 
  labs(title = "Distribucion de robos de autos por año",
       subtitle= "En la comisaria La Matanza N°09", y = "Cantidad de robos",
       x = "Año")

g6 + geom_line(data = grid, aes(anio, pred), color = "red", size = 1.2)

grid


#AUTO MAS ROBADO
unique(autos$automotor_modelo_descripcion)

autos_modelo <- autos %>% group_by(automotor_modelo_descripcion, registro_seccional_descripcion) %>% 
  summarise(cantidad = n()) %>% filter(registro_seccional_descripcion == "LA MATANZA Nº 09")

view(autos_modelo)

#LIMPIO AUTO GOL
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND 1.6", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND 1.6 MSI", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.4 L", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GLI", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND 1.6 GP", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL 1.6 MI", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.9 SD", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GLD", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL 1.6D", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL.", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.0L MI PLUS", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL 1.9 SD", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL PLUS 1.6D", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6  012", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6 012", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6 012 /2000", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6 5P (0132) 01A", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6(0270)    002", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6/2004", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.6/2010", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.9 SD 5P (0212) 01A", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL 1.9 SD/2000", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL 1.6MI", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GL/93", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GLI 1.8", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL GLI 1.8 /97", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND 1.6I MOTION", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND HIGHLINE 1.6 MSI", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "GOL TREND TRENDLINE 1.6 GAS 101CV MQ", "automotor_modelo_descripcion"] <- "GOL"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "WV GOL GLI 1.6", "automotor_modelo_descripcion"] <- "GOL"


#CORSA CLASSIC
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4P SUPER 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GL 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 3P AA+DIR 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC SW BASE+AC 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GL 1.6 M.P.F.I.", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 1.8L 4P GL AA+DIR GAS", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 DOOR WIND 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 3P BASE 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4P BASE 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC SW BASE +AC 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 4 P GL AA+DIR GAS 1.8", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PUERTAS GL A/A Y D/P", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PUERTAS WIND 1.6 LTS", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 1.4", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 PTAS GL 1.4N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 PTAS GLS 1.4N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4P SUP 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GLS 1.6 M.P.F.I.", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GLS 16V 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA  4PUERTAS GL", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS CITY 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS WIND 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS WIND 1.6", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3DOOR WIND 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3PTAS CITY 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PTAS GLS 1.7 D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PTAS. GLS 1.7D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PTAS. WIND 1.6 LTS", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PTAS. WIND 1.7 D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4 PTAS.WIND 1.7D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4P GL1.7 DIESEL A", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4P WIND 1.7 D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 4PTAS GLS 1.7 DIESEL", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 3 P BASE 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 3 PTAS GL 1.4N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 3P CARGO 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 P BASE 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 P SUPER 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 PTAS BASE 1.4N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4 PTAS GL 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4P BASE 1.7D", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC 4P SUPER 1.6 N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA COMBO 1.7", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GL 1.6 MPFI 3P (AA+DP)", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GL 1.6 MPFI 4P C/AA", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GL 1.7 DIESEL", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA GLS 1.6 M P F I", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 4 P GL AA+DIR GAS 1.8 2007", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 4 PTAS GL DTI 1.7", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 4P CD GAS 1.8", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 4P GL AA+DIR GAS 1.8", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 5P GL AA+DIR GAS 1.8", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA II 5P GL AA+DIR GAS 1.8/2003", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA WAGON GL 1.6 MPFI", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA WAGON GLS 16V", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA WIND 1.6 M.P.F.I.5P.", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS WIND 1.6N.", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS.CITY 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA 3 PTAS WIND 1.6N", "automotor_modelo_descripcion"] <- "CORSA CLASSIC"

autos_modelo[autos_modelo$automotor_modelo_descripcion == "CORSA CLASSIC", "automotor_modelo_descripcion"] <- "CORSA"

#PALIO
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO (326) ATTRACTIVE 5P 1.4 8V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO FIRE 1.4", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO FIRE 1.4 5P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO S 1.3 MPI (3P)", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO (326) ESSENCE 5P 1.6 16V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO 1.4 FIRE", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ELD 3P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO FIRE 1242 MPI 16V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO FIRE 5P 1.4 8V BE", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO 1.6", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ADVENTURE 1.6", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ADVENTURE 1.7TD", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO EL 3P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO EL 4P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ELD 5P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ELX 1.4 8V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO ELX 1242 FIRE 16V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO EX TD", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO HL 4P", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO HLX 1.8 MPI 8V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO WEEKEND 16V MPI", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO WEEKEND ADVENTURE 1.6 16V", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO YOUNG 1.3 MPI", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO WEEKEND 1.4", "automotor_modelo_descripcion"] <- "PALIO"
autos_modelo[autos_modelo$automotor_modelo_descripcion == "PALIO FIRE 5P 1.4 8V BENZ EOBD", "automotor_modelo_descripcion"] <- "PALIO"



autos_modelo <- autos_modelo %>%  group_by(automotor_modelo_descripcion) %>% 
  summarise(cantidad = sum(cantidad))


autos_modelo_top3 <- autos_modelo %>% filter(cantidad >= 48)

ggplot(autos_modelo_top3, aes(x = automotor_modelo_descripcion, y = cantidad) ) +
  geom_bar(position = "dodge", stat = "identity") + 
  labs(title = "3 Modelos de autos mas robados", subtitle = "En la jurisdiccion de la comisaria de La Matanza N°09",
       x = "Modelo de auto", y = "Cantidad de veces robado")



