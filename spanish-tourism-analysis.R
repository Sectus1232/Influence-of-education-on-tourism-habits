library(tidyverse)
library(ggplot2)
library(lubridate)
library(scales) # Necesario para el formato de porcentaje (%)
library(ggridges)
library(broom)
library(dplyr)
library(tidyr)
library(carData)
library(effects)
library(vcd)
library(hexbin)
library(tidytext)
# Datos del INE ----
## CREACIÓN Y DESCARGA DEL CONJUNTO DE DATOS  --------

#Primero, una vez descargados los datos del 2025 del INE, cargamos el conjunto de datos.

### Meses 2025 

# Enero2025 <- read.csv("FU_A2025MM01V.csv",sep =";")
# Febrero2025 <- read.csv("FU_A2025MM02V.csv",sep =";")
# Marzo2025 <- read.csv("FU_A2025MM03V.csv",sep =";")
# Abril2025 <- read.csv("FU_A2025MM04V.csv",sep =";")
# Mayo2025 <- read.csv("FU_A2025MM05V.csv",sep =";")
# Junio2025 <- read.csv("FU_A2025MM06V.csv",sep =";")
# Julio2025 <- read.csv("FU_A2025MM07V.csv",sep =";")
# Agosto2025 <- read.csv("FU_A2025MM08V.csv",sep =";")
# Septiembre2025 <- read.csv("FU_A2025MM09V.csv",sep =";")
# Octubre2025 <- read.csv("FU_A2025MM10V.csv",sep =";")
# Noviembre2025 <- read.csv("FU_A2025MM11V.csv",sep =";")
# Diciembre2025 <- read.csv("FU_A2025MM12V.csv",sep =";")
# 
# ANO2025 <- rbind(Enero2025,Febrero2025,Marzo2025,Abril2025,Mayo2025,Junio2025,Julio2025,Agosto2025,Septiembre2025,
# Octubre2025,Noviembre2025,Diciembre2025)
# write.csv(ANO2025, "AÑO2025.csv", row.names = FALSE)

### Meses 2024

# Enero2024 <- read.csv("FU_A2024MM01V.csv",sep =";")
# Febrero2024 <- read.csv("FU_A2024MM02V.csv",sep =";")
# Marzo2024 <- read.csv("FU_A2024MM03V.csv",sep =";")
# Abril2024 <- read.csv("FU_A2024MM04V.csv",sep =";")
# Mayo2024 <- read.csv("FU_A2024MM05V.csv",sep =";")
# Junio2024 <- read.csv("FU_A2024MM06V.csv",sep =";")
# Julio2024 <- read.csv("FU_A2024MM07V.csv",sep =";")
# Agosto2024 <- read.csv("FU_A2024MM08V.csv",sep =";")
# Septiembre2024 <- read.csv("FU_A2024MM09V.csv",sep =";")
# Octubre2024 <- read.csv("FU_A2024MM10V.csv",sep =";")
# Noviembre2024 <- read.csv("FU_A2024MM11V.csv",sep =";")
# Diciembre2024 <- read.csv("FU_A2024MM12V.csv",sep =";")
# 
# ANO2024 <- rbind(Enero2024,Febrero2024,Marzo2024,Abril2024,Mayo2024,Junio2024,Julio2024,Agosto2024,Septiembre2024
#                  ,Octubre2024,Noviembre2024,Diciembre2024)
# write.csv(ANO2024, "AÑO2024.csv", row.names = FALSE)

### Meses 2023

# Enero2023 <- read.csv("FU_A2023MM01V.csv",sep =";")
# Febrero2023 <- read.csv("FU_A2023MM02V.csv",sep =";")
# Marzo2023 <- read.csv("FU_A2023MM03V.csv",sep =";")
# Abril2023 <- read.csv("FU_A2023MM04V.csv",sep =";")
# Mayo2023 <- read.csv("FU_A2023MM05V.csv",sep =";")
# Junio2023 <- read.csv("FU_A2023MM06V.csv",sep =";")
# Julio2023 <- read.csv("FU_A2023MM07V.csv",sep =";")
# Agosto2023 <- read.csv("FU_A2023MM08V.csv",sep =";")
# Septiembre2023 <- read.csv("FU_A2023MM09V.csv",sep =";")
# Octubre2023 <- read.csv("FU_A2023MM10V.csv",sep =";")
# Noviembre2023 <- read.csv("FU_A2023MM11V.csv",sep =";")
# Diciembre2023 <- read.csv("FU_A2023MM12V.csv",sep =";")
# 
# ANO2023 <- rbind(Enero2023,Febrero2023,Marzo2023,Abril2023,Mayo2023,Junio2023,Julio2023,Agosto2023,Septiembre2023
#                  ,Octubre2023,Noviembre2023,Diciembre2023)

# write.csv(ANO2023, "AÑO2023.csv", row.names = FALSE)

### Meses 2022

# Enero2022 <- read.csv("FU_A2022MM01V.csv",sep =";")
# Febrero2022 <- read.csv("FU_A2022MM02V.csv",sep =";")
# Marzo2022 <- read.csv("FU_A2022MM03V.csv",sep =";")
# Abril2022 <- read.csv("FU_A2022MM04V.csv",sep =";")
# Mayo2022 <- read.csv("FU_A2022MM05V.csv",sep =";")
# Junio2022 <- read.csv("FU_A2022MM06V.csv",sep =";")
# Julio2022 <- read.csv("FU_A2022MM07V.csv",sep =";")
# Agosto2022 <- read.csv("FU_A2022MM08V.csv",sep =";")
# Septiembre2022 <- read.csv("FU_A2022MM09V.csv",sep =";")
# Octubre2022 <- read.csv("FU_A2022MM10V.csv",sep =";")
# Noviembre2022 <- read.csv("FU_A2022MM11V.csv",sep =";")
# Diciembre2022 <- read.csv("FU_A2022MM12V.csv",sep =";")
# 
# ANO2022 <- rbind(Enero2022,Febrero2022,Marzo2022,Abril2022,Mayo2022,Junio2022,Julio2022,Agosto2022,Septiembre2022,
#  Octubre2022,Noviembre2022,Diciembre2022)
# 
#  write.csv(ANO2022, "AÑO2022.csv", row.names = FALSE)

### Meses 2021

# Enero2021 <- read.csv("FU_A2021MM01V.csv",sep =";")
# Febrero2021 <- read.csv("FU_A2021MM02V.csv",sep =";")
# Marzo2021 <- read.csv("FU_A2021MM03V.csv",sep =";")
# Abril2021 <- read.csv("FU_A2021MM04V.csv",sep =";")
# Mayo2021 <- read.csv("FU_A2021MM05V.csv",sep =";")
# Junio2021 <- read.csv("FU_A2021MM06V.csv",sep =";")
# Julio2021 <- read.csv("FU_A2021MM07V.csv",sep =";")
# Agosto2021 <- read.csv("FU_A2021MM08V.csv",sep =";")
# Septiembre2021 <- read.csv("FU_A2021MM09V.csv",sep =";")
# Octubre2021 <- read.csv("FU_A2021MM10V.csv",sep =";")
# Noviembre2021 <- read.csv("FU_A2021MM11V.csv",sep =";")
# Diciembre2021 <- read.csv("FU_A2021MM12V.csv",sep =";")
# 
# ANO2021 <- rbind(Enero2021,Febrero2021,Marzo2021,Abril2021,Mayo2021,Junio2021,Julio2021,Agosto2021,Septiembre2021,
#  Octubre2021,Noviembre2021,Diciembre2021)
# 
#  write.csv(ANO2021, "AÑO2021.csv", row.names = FALSE)

### Meses 2020

# Enero2020 <- read.csv("FU_A2020MM01V.csv",sep =";")
# Febrero2020 <- read.csv("FU_A2020MM02V.csv",sep =";")
# Marzo2020 <- read.csv("FU_A2020MM03V.csv",sep =";")
# Abril2020 <- read.csv("FU_A2020MM04V.csv",sep =";")
# Mayo2020 <- read.csv("FU_A2020MM05V.csv",sep =";")
# Junio2020 <- read.csv("FU_A2020MM06V.csv",sep =";")
# Julio2020 <- read.csv("FU_A2020MM07V.csv",sep =";")
# Agosto2020 <- read.csv("FU_A2020MM08V.csv",sep =";")
# Septiembre2020 <- read.csv("FU_A2020MM09V.csv",sep =";")
# Octubre2020 <- read.csv("FU_A2020MM10V.csv",sep =";")
# Noviembre2020 <- read.csv("FU_A2020MM11V.csv",sep =";")
# Diciembre2020 <- read.csv("FU_A2020MM12V.csv",sep =";")
# 
# ANO2020 <- rbind(Enero2020,Febrero2020,Marzo2020,Abril2020,Mayo2020,Junio2020,Julio2020,Agosto2020,Septiembre2020,
#  Octubre2020,Noviembre2020,Diciembre2020)
# 
#  write.csv(ANO2020, "AÑO2020.csv", row.names = FALSE)

### Meses 2019

# Enero2019 <- read.csv("FU_A2019MM01V.csv",sep =";")
# Febrero2019 <- read.csv("FU_A2019MM02V.csv",sep =";")
# Marzo2019 <- read.csv("FU_A2019MM03V.csv",sep =";")
# Abril2019 <- read.csv("FU_A2019MM04V.csv",sep =";")
# Mayo2019 <- read.csv("FU_A2019MM05V.csv",sep =";")
# Junio2019 <- read.csv("FU_A2019MM06V.csv",sep =";")
# Julio2019 <- read.csv("FU_A2019MM07V.csv",sep =";")
# Agosto2019 <- read.csv("FU_A2019MM08V.csv",sep =";")
# Septiembre2019 <- read.csv("FU_A2019MM09V.csv",sep =";")
# Octubre2019 <- read.csv("FU_A2019MM10V.csv",sep =";")
# Noviembre2019 <- read.csv("FU_A2019MM11V.csv",sep =";")
# Diciembre2019 <- read.csv("FU_A2019MM12V.csv",sep =";")
# 
# ANO2019 <- rbind(Enero2019,Febrero2019,Marzo2019,Abril2019,Mayo2019,Junio2019,Julio2019,Agosto2019,Septiembre2019,
#  Octubre2019,Noviembre2019,Diciembre2019)
# 
#  write.csv(ANO2019, "AÑO2019.csv", row.names = FALSE)

### Meses 2018

# Enero2018 <- read.csv("FU_A2018MM01V.csv",sep =";")
# Febrero2018 <- read.csv("FU_A2018MM02V.csv",sep =";")
# Marzo2018 <- read.csv("FU_A2018MM03V.csv",sep =";")
# Abril2018 <- read.csv("FU_A2018MM04V.csv",sep =";")
# Mayo2018 <- read.csv("FU_A2018MM05V.csv",sep =";")
# Junio2018 <- read.csv("FU_A2018MM06V.csv",sep =";")
# Julio2018 <- read.csv("FU_A2018MM07V.csv",sep =";")
# Agosto2018 <- read.csv("FU_A2018MM08V.csv",sep =";")
# Septiembre2018 <- read.csv("FU_A2018MM09V.csv",sep =";")
# Octubre2018 <- read.csv("FU_A2018MM10V.csv",sep =";")
# Noviembre2018 <- read.csv("FU_A2018MM11V.csv",sep =";")
# Diciembre2018 <- read.csv("FU_A2018MM12V.csv",sep =";")
# 
# ANO2018 <- rbind(Enero2018,Febrero2018,Marzo2018,Abril2018,Mayo2018,Junio2018,Julio2018,Agosto2018,Septiembre2018,
#  Octubre2018,Noviembre2018,Diciembre2018)
# 
#  write.csv(ANO2018, "AÑO2018.csv", row.names = FALSE)

### Meses 2017

# Enero2017 <- read.csv("FU_A2017MM01V.csv",sep =";")
# Febrero2017 <- read.csv("FU_A2017MM02V.csv",sep =";")
# Marzo2017 <- read.csv("FU_A2017MM03V.csv",sep =";")
# Abril2017 <- read.csv("FU_A2017MM04V.csv",sep =";")
# Mayo2017 <- read.csv("FU_A2017MM05V.csv",sep =";")
# Junio2017 <- read.csv("FU_A2017MM06V.csv",sep =";")
# Julio2017 <- read.csv("FU_A2017MM07V.csv",sep =";")
# Agosto2017<- read.csv("FU_A2017MM08V.csv",sep =";")
# Septiembre2017 <- read.csv("FU_A2017MM09V.csv",sep =";")
# Octubre2017 <- read.csv("FU_A2017MM10V.csv",sep =";")
# Noviembre2017 <- read.csv("FU_A2017MM11V.csv",sep =";")
# Diciembre2017 <- read.csv("FU_A2017MM12V.csv",sep =";")
# 
# ANO2017 <- rbind(Enero2017,Febrero2017,Marzo2017,Abril2017,Mayo2017,Junio2017,Julio2017,Agosto2017,Septiembre2017,
#  Octubre2017,Noviembre2017,Diciembre2017)
# 
#  write.csv(ANO2017, "AÑO2017.csv", row.names = FALSE)

### Meses 2016

# Enero2016 <- read.csv("FU_A2016MM01V.csv",sep =";")
# Febrero2016 <- read.csv("FU_A2016MM02V.csv",sep =";")
# Marzo2016 <- read.csv("FU_A2016MM03V.csv",sep =";")
# Abril2016 <- read.csv("FU_A2016MM04V.csv",sep =";")
# Mayo2016 <- read.csv("FU_A2016MM05V.csv",sep =";")
# Junio2016 <- read.csv("FU_A2016MM06V.csv",sep =";")
# Julio2016 <- read.csv("FU_A2016MM07V.csv",sep =";")
# Agosto2016<- read.csv("FU_A2016MM08V.csv",sep =";")
# Septiembre2016 <- read.csv("FU_A2016MM09V.csv",sep =";")
# Octubre2016 <- read.csv("FU_A2016MM10V.csv",sep =";")
# Noviembre2016 <- read.csv("FU_A2016MM11V.csv",sep =";")
# Diciembre2016 <- read.csv("FU_A2016MM12V.csv",sep =";")
# 
# ANO2016 <- rbind(Enero2016,Febrero2016,Marzo2016,Abril2016,Mayo2016,Junio2016,Julio2016,Agosto2016,Septiembre2016,
#  Octubre2016,Noviembre2016,Diciembre2016)
# 
#  write.csv(ANO2016, "AÑO2016.csv", row.names = FALSE)

### Meses 2015


# Febrero2015 <- read.csv("FU_A2015MM02V.csv",sep =";")
# Marzo2015 <- read.csv("FU_A2015MM03V.csv",sep =";")
# Abril2015 <- read.csv("FU_A2015MM04V.csv",sep =";")
# Mayo2015 <- read.csv("FU_A2015MM05V.csv",sep =";")
# Junio2015 <- read.csv("FU_A2015MM06V.csv",sep =";")
# Julio2015 <- read.csv("FU_A2015MM07V.csv",sep =";")
# Agosto2015<- read.csv("FU_A2015MM08V.csv",sep =";")
# Septiembre2015 <- read.csv("FU_A2015MM09V.csv",sep =";")
# Octubre2015 <- read.csv("FU_A2015MM10V.csv",sep =";")
# Noviembre2015 <- read.csv("FU_A2015MM11V.csv",sep =";")
# Diciembre2015 <- read.csv("FU_A2015MM12V.csv",sep =";")
# 
# ANO2015 <- rbind(Febrero2015,Marzo2015,Abril2015,Mayo2015,Junio2015,Julio2015,Agosto2015,Septiembre2015,
#  Octubre2015,Noviembre2015,Diciembre2015)
# 
#  write.csv(ANO2015, "AÑO2015.csv", row.names = FALSE)


#Cargamos el conjunto de datos directamente tras haberlo descargado.

ANO2025 = read.csv("AÑO2025.csv")
ANO2024 = read.csv("AÑO2024.csv")
ANO2023 = read.csv("AÑO2023.csv")
ANO2022 = read.csv("AÑO2022.csv")
ANO2021 = read.csv("AÑO2021.csv")
ANO2020 = read.csv("AÑO2020.csv")
ANO2019 = read.csv("AÑO2019.csv")
ANO2018 = read.csv("AÑO2018.csv")
ANO2017 = read.csv("AÑO2017.csv")
ANO2016 = read.csv("AÑO2016.csv")
ANO2015 = read.csv("AÑO2015.csv")

DATOS = rbind(ANO2025,ANO2024,ANO2023,ANO2022,ANO2021,ANO2020,ANO2019,ANO2018,ANO2017,
              ANO2016,ANO2015)
# write.csv(DATOS, "DATOS.csv", row.names = FALSE)

read.csv("DATOS.csv")

# 1. Definimos tu estilo personalizado
mi_estilo_present <- function() {
  theme_minimal(base_family = "serif") +
    theme(
      plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
      plot.subtitle = element_text(size = 10, color = "#7f8c8d", hjust = 0.5, margin = margin(b=25)),
      plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
      axis.text = element_text(size = 10, color = "#2c3e50"),
      axis.title = element_text(face = "bold", size = 11),
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      legend.position = "bottom",
      legend.title = element_blank(),
      plot.margin = margin(30, 30, 30, 30)
    )
}

# 2. Lo aplicamos como tema por defecto para TODOS los gráficos
theme_set(mi_estilo_present())

##BREVE COMENTARIO SOBRE EL COMPORTAMIENTO DE EL NIVEL DE ESTUDIOS POR EDAD ----
Estud_Edad <- DATOS %>% 
  select(NIVELEST,EDAD) %>%
  mutate( Nivel_Estudios = factor(NIVELEST,
                                  levels = c(1,2,3,4),
                                  labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
  ) %>%
  #Eliminamos valores no contestados respecto al nivel de estudios y las pernoctaciones del viaje
  
  filter(!is.na(Nivel_Estudios),
         !is.na(EDAD))


g_estud_demog_pres <- ggplot(Estud_Edad, aes(x = EDAD, fill = Nivel_Estudios, color = Nivel_Estudios)) +
  # Usamos densidad con transparencia para ver los solapamientos generacionales
  geom_density(alpha = 0.4, linewidth = 0.8) +
  
  # Tus colores manuales para mantener la coherencia visual
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  
  labs(
    title = "ESTRUCTURA GENERACIONAL POR NIVEL EDUCATIVO",
    subtitle = "La densidad revela el predominio de población jubilada en los niveles básicos \ny de población activa en los estudios superiores.",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
    x = "Edad del Encuestado (Años)",
    y = "Densidad de Población"
  ) +
  
  # Tu tema profesional para la presentación de LaTeX
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#7f8c8d", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    axis.text = element_text(size = 10, color = "#2c3e50"),
    axis.title = element_text(face = "bold", size = 11),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    legend.position = "bottom", # Aquí la leyenda es útil para identificar las "montañas"
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )

g_estud_demog <-  ggplot(Estud_Edad, aes(x = EDAD, fill = Nivel_Estudios, color = Nivel_Estudios)) +
  # Usamos densidad con transparencia para ver los solapamientos generacionales
  geom_density(alpha = 0.4, linewidth = 0.8) +
  
  # Tus colores manuales para mantener la coherencia visual
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  
  labs(
    x = "Edad del Encuestado (Años)",
    y = "Densidad de Población"
  ) +
  
  # Tu tema profesional para la presentación de LaTeX
  theme_minimal(base_family = "serif") +
  theme(
    axis.text = element_text(size = 10, color = "#2c3e50"),
    axis.title = element_text(face = "bold", size = 11),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    legend.position = "bottom", # Aquí la leyenda es útil para identificar las "montañas"
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )
g_estud_demog
ggsave("Estud_demog.pdf", 
       width = 8, 
       height = 6, 
       device = cairo_pdf)

g_estud_demog_pres

ggsave("Estud_demog_pres.pdf", g_estud_demog_pres, 
       width = 18, 
       height = 8, 
       device = cairo_pdf())





## ANÁLISIS DE LA RELACIÓN ENTRE LOS ESTUDIOS Y LA DURACIÓN DE LOS VIAJES ----

# En primer lugar, realizamos un filtrado del conjunto de datos para poder trabajar con las varibles deseadas.
# A su vez, introducimos una serie de variables que añaden etiquetas a las variables del INE. 

Estud_Pernoc <- DATOS %>%
  
  # Realizamos la selección de las variables de interés
  
  select(NIVELEST,NPERNOC) %>%
  
  # Añadimos las etiquetas cualitativas a los niveles educativos empleando la función muatet del parquete
  # dplyr ,agrupando los dos grupos de educación secundaria en una única categoría.
  
  mutate( Nivel_Estudios = factor(NIVELEST,
                                  levels = c(1,2,3,4),
                                  labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
  ) %>%
  #Eliminamos valores no contestados respecto al nivel de estudios y las pernoctaciones del viaje
  
  filter(!is.na(Nivel_Estudios) &!is.na(NPERNOC))

#Ahora, realizamos un breve resumen de las variables recogidas
summary(Estud_Pernoc)

resumen_est_per <- Estud_Pernoc %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Casos = n(),                                   # Sacamos la proporción de personas en cada grupo educativo.
    Minimo = min(NPERNOC),                         # Hallamos el mínimo de noches en un viaje por grupo.
    Mediana = median(NPERNOC),                     # Idem para la mediana por grupo
    Media = round(mean(NPERNOC), 2),               # Idem para la media
    Maximo = max(NPERNOC),                         # Idem para el máximo
    `Cuantil 0.75` = quantile(NPERNOC, 0.75),      # Idem para el cuantil de orden 3/4
    `Desv. Típica` = round(sd(NPERNOC), 2)         #Finalmente lo aplicamos para el desvío
  )

resumen_est_per  


# Ahora, realizamos un boxplot para poder ver con mayor detalle la tendencia de los grupos, aunque se aprecia
# por el resumen anterior que los cuantiles son valores muy bajos mientras que existen valores atípicos de hasta
# 360 días. Por ello, eliminamos del gráfico los valores atípicos y extremos para poder interpretar mejor las tendencias generales


g_est_per_boxplot_titulo <- ggplot(data = Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  
  ## BOXPLOT ##
  
  geom_boxplot(outlier.shape =NA, width = 0.5,color = "#2c3e50",
               linewidth = 0.8, alpha = 0.8, median.linewidth =  4) + 
  
  ## Añadimos marcador de la media
  
  stat_summary(fun = mean, geom = "point",shape = 23, size = 3.5,
               fill = "limegreen",color = "black",stroke = 1.2) +
  
  ## Reducimos la escala hasta los 15 viajes
  coord_cartesian(ylim = c(0, 15)) + 
  
  ## Añadimos colores distintos a las cajas
  
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  
  ## Añadimos título y modificamos los ejes
  
  labs(
    title = "DINÁMICA DE PERMANENCIA \n POR NIVEL ACADÉMICO",
    subtitle = "Comparativa de la duración media (diamante verde) y mediana (línea negra)",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.\nNota: Se han omitido los valores atípicos para mejorar la legibilidad.",
    x = NULL,
    y = "Número de Noches"
  ) +
  
  ## Hacemos una serie de modificaciones estéticaspara se integre mejor en la presentación de latex.
  
  theme_minimal(base_family = "serif") +
  theme(
    
    #Modificamos el estilo del título y su tipografía
    
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    
    # Cambiamos el color y tipografía de la nota
    
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    # Ajustamos los ejes y la tipografía
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    
    # Añadimos un mallado de líneas horizontales 
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
    # ajustamos el plot a un margen de 30 x 30 
    legend.position = "none",
    plot.margin = margin(30, 30, 30, 30)
  )

g_est_per_boxplot_titulo

#Guardamos el gráfico en formato pdf
ggsave("Dinámica_permanencia_pres.pdf",plot = g_est_per_boxplot_titulo,width = 6, height = 4.5, device=cairo_pdf() )


#Repetimos el gráfico sin título de cara a su inclusión en el informe final#

g_est_per_boxplot <- ggplot(data = Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  
  ## BOXPLOT ##
  
  geom_boxplot(outlier.shape =NA, width = 0.5,color = "#2c3e50",
               linewidth = 0.8, alpha = 0.8, fatten = 4) + 
  
  ## Añadimos marcador de la media
  
  stat_summary(fun = mean, geom = "point",shape = 23, size = 3.5,
               fill = "limegreen",color = "black",stroke = 1.2) +
  
  ## Reducimos la escala hasta los 15 viajes
  coord_cartesian(ylim = c(0, 15)) + 
  
  ## Añadimos colores distintos a las cajas
  
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  
  ## Modificamos los ejes
  
  labs(
    x = NULL,
    y = "Número de Noches"
  ) +
  
  ## Hacemos una serie de modificaciones estéticaspara se integre mejor en la presentación de latex.
  
  theme_minimal(base_family = "serif") +
  theme(
    
    # Ajustamos los ejes y la tipografía
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    
    # Añadimos un mallado de líneas horizontales 
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
    # ajustamos el plot a un margen de 30 x 30 
    legend.position = "none",
    plot.margin = margin(30, 30, 30, 30)
  )

g_est_per_boxplot

ggsave("Dinámica_permanencia.pdf",plot = g_est_per_boxplot, width = 15, height = 10,units = "cm", device="pdf" )

# Guardamos el gráfico en menores dimensiones

g_est_per_boxplot_peque <- ggplot(Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  geom_boxplot(outlier.shape = NA, width = 0.5, color = "#2c3e50") + 
  stat_summary(fun = mean, geom = "point", shape = 23, size = 2, fill = "limegreen") +
  coord_cartesian(ylim = c(0, 15)) +
  scale_fill_manual(values = c("red", "orange", "#3498db")) +
  labs(y = "Nº Noches", x = NULL) + # Simplificamos el nombre del eje Y
  theme_minimal(base_size = 10, base_family = "serif") + # Letra pequeña pero legible
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    axis.text.x = element_text(lineheight = 0.8), # Ajusta espacio entre líneas del texto
    plot.margin = margin(5, 10, 5, 5, "pt") # Ajusta márgenes para que no se corte
  )

# Lo guardamos para dimensiones de media página
ggsave("Dinamica_permanencia_peque.pdf", plot = g_est_per_boxplot_peque, width = 7.5, height = 6, units = "cm")

#Ahora hacemos un diagrama de violín para ver cómo se comportan los valores atípicos y la densidad de viajes


g_est_per_viol_titulo <- ggplot(Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  
  # Violín con el peso visual de tu función (alpha 0.5 y sin bordes)
  geom_violin(width = 0.85,trim = TRUE, alpha = 0.5, color = NA, scale = "width") +
  
  # Boxplot minimalista (casi una línea) para no tapar la silueta
  geom_boxplot(outlier.shape = NA, width = 0.07, color = "#2c3e50", alpha = 0.4, linewidth = 0.2) +
  
  # Escala logarítmica ajustada a pernoctaciones
  scale_y_log10(breaks = c(1, 2, 5, 10, 20, 50, 100),
                labels = c("1", "2", "5", "10", "20", "50", "100")) + 
  
  # Tus colores manuales de referencia
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  
  labs(
    title = "DINÁMICA DE PERMANENCIA: DISTRIBUCIÓN",
    subtitle = "Se emplea escala semilogarítmica para comparar mejor datos extremos",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
    x = NULL,
    y = "Número de Noches (Escala Log)"
  ) +
  
  # Formato semejante a la tipografía de Latex
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#7f8c8d", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#2c3e50"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    legend.position = "none",
    plot.margin = margin(30, 30, 30, 30)
  )

g_est_per_viol_titulo

ggsave("Densidad_permanencia_pres.pdf",plot = g_est_per_viol_titulo,width = 6, height = 4.5, device=cairo_pdf() )


g_est_per_viol <- ggplot(Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  
  # Violín con el peso visual de tu función (alpha 0.5 y sin bordes)
  geom_violin(width = 0.85,trim = TRUE, alpha = 0.5, color = NA, scale = "width") +
  
  # Boxplot minimalista (casi una línea) para no tapar la silueta
  geom_boxplot(outlier.shape = NA, width = 0.07, color = "#2c3e50", alpha = 0.4, fatten = 2) +
  
  # Escala logarítmica ajustada a pernoctaciones
  scale_y_log10(breaks = c(1, 2, 5, 10, 20, 50, 100),
                labels = c("1", "2", "5", "10", "20", "50", "100")) + 
  
  # Tus colores manuales de referencia
  scale_fill_manual(values = c("Primaria o inferior"= "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  
  labs(
    x = NULL,
    y = "Número de Noches (Escala Log)"
  ) +
  
  # Estructura del dibujo
  theme_minimal(base_family = "serif") +
  theme(
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#2c3e50"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    legend.position = "none",
    plot.margin = margin(30, 30, 30, 30)
  )


g_est_per_viol
ggsave("Densidad_permanencia.pdf",plot = g_est_per_viol,width = 15, height = 10,units = "cm", device="pdf" )


g_est_per_viol_peque <- ggplot(Estud_Pernoc, aes(x = Nivel_Estudios, y = NPERNOC, fill = Nivel_Estudios)) +
  geom_violin(width = 0.85, trim = TRUE, alpha = 0.5, color = NA, scale = "width") +
  geom_boxplot(outlier.shape = NA, width = 0.07, color = "#2c3e50", alpha = 0.4, fatten = 2) +
  
  scale_y_log10(breaks = c(1, 2, 5, 10, 20, 50, 100)) + 
  
  # CLAVE: Los nombres aquí deben ser idénticos a los labels de arriba
  scale_fill_manual(values = setNames(c("red", "orange", "#3498db"), 
                                      c("Primaria o inferior", "Secundaria", "Superiores"))) + 
  
  labs(x = NULL, y = "Nº Noches (Log)") +
  theme_minimal(base_size = 10, base_family = "serif") + # Letra pequeña pero legible
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    axis.text.x = element_text(lineheight = 0.8), # Ajusta espacio entre líneas del texto
    plot.margin = margin(5, 10, 5, 5, "pt") # Ajusta márgenes para que no se corte
  )


g_est_per_viol_peque
ggsave("Densidad_permanencia_peque.pdf",plot = g_est_per_viol_peque,width = 7.5, height = 7,units ="cm", device="pdf" )




# Ahora, realizamos un test chi^2 de homogeneidad entre los distintos grupos para ver dónde se producen exacta
# mente las mayores diferencias. 

# Filtramos para ello el conjunto de datos:

Estud_Pernoc_Agrup <- Estud_Pernoc %>%
  mutate(Clases = case_when(
    NPERNOC <= 6  ~ as.character(NPERNOC),
    NPERNOC >= 7  & NPERNOC <= 10 ~ "7-10",
    NPERNOC >= 11 & NPERNOC <= 14 ~ "11-14",
    NPERNOC >= 15 ~ "15+",
    TRUE ~ "Otros"
  ))

# Definimos el orden de aparición de las categorías en las tablas y reordenamos el filtrado anterior

orden_cat <- c("1", "2", "3", "4", "5", "6", "7-10", "11-14", "15+")
Estud_Pernoc_Agrup$Clases <- factor(Estud_Pernoc_Agrup$Clases, levels = orden_cat)

# Definimos las muestras observadas, valores muestrales individuales, esperadas...

Oij <- table(Estud_Pernoc_Agrup$Nivel_Estudios, Estud_Pernoc_Agrup$Clases)
ni_dot <- rowSums(Oij)
n_dotj <- colSums(Oij)
n_total <- sum(Oij)
Eij<- outer(ni_dot, n_dotj) / n_total

# Visualizamos ambas tablas para ver las diferencias
Oij
Eij

# Calculamos las diferencias entre las observadas y las esperadas, cocientando por las esperadas para analizar
# dichas diferencias en proporción sin que haya influencia del tamaño muestral
Diferencias <- (Oij - Eij)/sqrt(Eij)

# Consideramos los datos para hacer un mapa de calor de las diferencias y poder observar los factores principales de dis
# crepancias.

dif_est_noches <- as.data.frame(as.table(Diferencias))
colnames(dif_est_noches) <- c("Estudios", "Noches", "Diferencia")

# Realizamos el mapa de calor

g_dif_est_noches_calor_título <- ggplot(dif_est_noches, aes(x = Noches, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Texto de residuos significativos con la misma fuente serif
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    title = "ANÁLISIS DE DIFERENCIAS",
    subtitle = "Diferencias entre las muestras observadas y las esperadas bajo homogeneidad distribucional",
    x = "Rango de Noches", 
    y = NULL
  ) +
  
  # Aplicamos tu tema personalizado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#2c3e50",hjust = 0.5),
    plot.subtitle = element_text(size = 11, color = "#7f8c8d", margin = margin(b=15), hjust = 0.5),
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )
g_dif_est_noches_calor_título 
ggsave("Calor_permanencia_pres.pdf",plot = g_dif_est_noches_calor_título ,width = 15, height = 7, device=cairo_pdf )


#Repetimos el gráfico sin título para exportarlo al informe

g_dif_est_noches_calor <- ggplot(dif_est_noches, aes(x = Noches, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Implementación de las diferencias
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    x = "Rango de Noches", 
    y = NULL
  ) +
  
  # Aplicamos tu tema personalizado
  theme_minimal(base_family = "serif") +
  theme(
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )
g_dif_est_noches_calor
ggsave("Calor_permanencia.pdf",plot = g_dif_est_noches_calor ,width = 20, height = 10,units = "cm", device="pdf" )


### ANÁLISIS DE VIAJES ATÍPICOS ----

# Definimos 'Atípico' como más de 15 noches.
umbral_atipico <- 15

Estud_Pernoc_atipicos <- Estud_Pernoc %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Total_Grupo = n(),
    Casos_Atipicos = sum(NPERNOC > umbral_atipico),
    Prop_Atipicos = (Casos_Atipicos / Total_Grupo) * 100 # Porcentaje
  )

g_prop_viaj_larg_titulo = ggplot(Estud_Pernoc_atipicos, aes(x = reorder(Nivel_Estudios, Prop_Atipicos), y = Prop_Atipicos, fill = Prop_Atipicos)) +
  geom_col(width = 0.7, color = "white", linewidth = 0.2) +
  
  # Gradiente de intensidad: de azul (baja incidencia) a rojo (alta incidencia)
  scale_fill_gradient(low = "#4575b4", high = "#d73027") +
  
  # Añadimos el porcentaje exacto encima de cada barra para haverlo más visual
  
  geom_text(aes(label = paste0(round(Prop_Atipicos, 2), "%")), 
            hjust = -0.2, family = "serif", fontface = "bold", size = 4) +
  coord_flip() + # Horizontal para leer mejor los niveles educativos
  scale_y_continuous(limits = c(0, max(Estud_Pernoc_atipicos$Prop_Atipicos) * 1.2), expand = c(0,0)) +
  labs(
    title = "PROPENSIÓN AL VIAJE DE LARGA DURACIÓN",
    subtitle = paste("Porcentaje de viajeros que superan las", umbral_atipico, "pernoctaciones"),
    caption = "Nota: El análisis porcentual elimina el sesgo del tamaño de muestra por grupo.",
    x = NULL,
    y = "Incidencia de Viajes Atípicos (%)"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#1a1a1a",hjust = 0.5),
    plot.subtitle = element_text(face = "italic", size = 10, color = "grey40", margin = margin(b=15), hjust = 0.5),
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    legend.position = "none"
  )
g_prop_viaj_larg_titulo
ggsave("Prop_viaj_largo_pres.pdf",plot = g_prop_viaj_larg_titulo ,width = 15, height = 7, device=cairo_pdf())


g_prop_viaj_larg = ggplot(Estud_Pernoc_atipicos, aes(x = reorder(Nivel_Estudios, Prop_Atipicos), y = Prop_Atipicos, fill = Prop_Atipicos)) +
  geom_col(width = 0.7, color = "white", linewidth = 0.2) +
  
  # Gradiente de intensidad: de azul (baja incidencia) a rojo (alta incidencia)
  scale_fill_gradient(low = "#4575b4", high = "#d73027") +
  
  # Añadimos el porcentaje exacto encima de cada barra para haverlo más visual
  
  geom_text(aes(label = paste0(round(Prop_Atipicos, 2), "%")), 
            hjust = -0.2, family = "serif", fontface = "bold", size = 4) +
  coord_flip() + # Horizontal para leer mejor los niveles educativos
  scale_y_continuous(limits = c(0, max(Estud_Pernoc_atipicos$Prop_Atipicos) * 1.2), expand = c(0,0)) +
  labs(
    x = NULL,
    y = "Incidencia de Viajes Atípicos (%)"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    legend.position = "none"
  )
g_prop_viaj_larg
ggsave("Prop_viaj_largo.pdf",plot = g_prop_viaj_larg ,width = 15, height = 7,units = "cm", device="pdf")

# A partir de esto, conjeturamos que esta disparidad en los viajes atípicos puede deberse a un factor de edad, emn particular
# a una propensión por parte de los jubilados a viajar durante más tiempo

# En primer lugar, realizamos un breve resumen para ver las proporciones de viajes largos

Estud_larg_edad <- DATOS %>%
  filter(NPERNOC > 15) %>% # Filtramos solo viajes largos
  mutate(Nivel_Estudios = factor(NIVELEST, levels=c(1,2,3,4), 
                                 labels=c("Primaria","Secundaria","Secundaria","Superiores"))) %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Edad_Media_Atipicos = mean(EDAD, na.rm = TRUE),
    Mediana_Edad = median(EDAD, na.rm = TRUE)
  ) 
print(Estud_larg_edad)


#Seguidamente, filtramos el conjunto de datos con el que vamos a trabajar

Estud_Pernoc_Edad <- DATOS %>%
  select(NIVELEST, NPERNOC, EDAD) %>%
  mutate(
    Nivel_Estudios = factor(NIVELEST,
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores"))
  ) %>%
  # Filtramos NAs en las tres variables para evitar el grupo "NA" de tu tabla
  filter(!is.na(Nivel_Estudios), !is.na(NPERNOC), !is.na(EDAD))
Pernoc_edad_larga <- Estud_Pernoc_Edad %>% filter(NPERNOC > 15)

# Modelo de regresión lineal para cada uno de los niveles

datos_filtrados <- Estud_Pernoc_Edad%>% filter(NPERNOC >= 15)

# Correlación global
cor_edad <- cor(datos_filtrados$EDAD, datos_filtrados$NPERNOC, method = "pearson")
print(paste("Correlación Edad-Pernoctaciones:", round(cor_edad, 4)))


tabla_cor <- datos_filtrados %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Correlacion_Pearson = cor(EDAD, NPERNOC),
    n = n() # Tamaño de la muestra por grupo
  )
print(tabla_cor)



datos_grafico <- Estud_Pernoc_Edad %>% filter(NPERNOC >= 15)

g_corr_edad_larg_dur_titulo<- ggplot(datos_grafico, aes(x = EDAD, y = NPERNOC, color = Nivel_Estudios)) +
  # Puntos con jitter sutil y mucha transparencia para evitar el caos visual
  geom_bin2d(bins = 50,alpha = 0.15, size = 1, width = 0.3) +
  
  # Línea de regresión lineal formal (negra para contraste)
  geom_smooth(method = "lm", color = "#2c3e50", fill = "grey80", linewidth = 1, se = TRUE) +
  
  # Facetado limpio con etiquetas en negrita
  facet_wrap(~Nivel_Estudios) +
  
  # Escala logarítmica sutil para manejar los valores extremos (200+ noches)
  scale_y_log10(breaks = c(15, 30, 60, 120, 240, 360),
                labels = c("15", "30", "60", "120", "240", "360")) +
  
  # Colores predefinidos previamente
  scale_color_manual(values = c("Primaria" = "red",   # Naranja (tu color llamativo)
                                "Secundaria" = "orange", # Azul formal
                                "Superiores" = "#3498db")) + # Verde bosque
  
  labs(
    title = "CORRELACIÓN ENTRE EDAD Y ESTANCIAS PROLONGADAS",
    subtitle = "Análisis segmentado por nivel educativo para pernoctaciones \u2265 15 noches",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE (2025).\nNota: Las áreas sombreadas representan el intervalo de confianza al 95%.",
    x = "Edad del Viajero (años)",
    y = "Número de Noches (escala log)"
  ) +
  
  # Estilo de título
  theme_minimal(base_family = "serif") +
  theme(
    legend.position = "none", # Quitamos la leyenda porque los títulos de los paneles ya informan
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    strip.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    plot.title = element_text(face = "bold", size = 16, margin = margin(b=10), hjust = 0.5),
    plot.subtitle = element_text(size = 11, color = "grey30", margin = margin(b=20), hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.spacing = unit(1.5, "lines"),
    axis.title = element_text(face = "bold", size = 10),
    plot.margin = margin(20, 20, 20, 20)
  )
g_corr_edad_larg_dur_titulo
ggsave("Correlacion_edad_larga_dur_pres.pdf",plot = g_corr_edad_larg_dur_titulo ,width = 15, height = 7, device=cairo_pdf())


g_corr_edad_larg_dur<- ggplot(datos_grafico, aes(x = EDAD, y = NPERNOC, color = Nivel_Estudios)) +
  # Puntos con jitter sutil y mucha transparencia para evitar el caos visual
  geom_hex(alpha = 0.15, size = 1, width = 0.3) +
  
  # Línea de regresión lineal formal (negra para contraste)
  geom_smooth(method = "lm", color = "#2c3e50", fill = "grey80", linewidth = 1, se = TRUE) +
  
  # Facetado limpio con etiquetas en negrita
  facet_wrap(~Nivel_Estudios) +
  
  # Escala logarítmica sutil para manejar los valores extremos (200+ noches)
  scale_y_log10(breaks = c(15, 30, 60, 120, 240, 360),
                labels = c("15", "30", "60", "120", "240", "360")) +
  
  # Colores predefinidos previamente
  scale_color_manual(values = c("Primaria" = "red",   # Naranja (tu color llamativo)
                                "Secundaria" = "orange", # Azul formal
                                "Superiores" = "#3498db")) + # Verde bosque
  
  labs(
    x = "Edad del Viajero (años)",
    y = "Número de Noches (escala log)"
  ) +
  
  # Tema de alta fidelidad para LaTeX
  theme_minimal(base_family = "serif") +
  theme(
    legend.position = "none", # Quitamos la leyenda porque los títulos de los paneles ya informan
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    strip.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid.minor = element_blank(),
    panel.spacing = unit(1.5, "lines"),
    axis.title = element_text(face = "bold", size = 10),
    plot.margin = margin(20, 20, 20, 20)
  )
g_corr_edad_larg_dur
ggsave("Correlacion_edad_larga_dur.pdf",plot = g_corr_edad_larg_dur ,width = 15, height = 10,units = "cm", device="pdf")


#Análsis por motivación


Estud_Motivo_Atipicos <- DATOS %>%
  filter(NPERNOC >= 15) %>% # Nos centramos solo en los atípicos
  mutate(
    Nivel_Estudios = factor(NIVELEST, levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    Tipo_Motivo = case_when(
      MOTIV == 8 ~ "Familiar/Amigos",
      MOTIV %in% c(6, 12) ~ "Salud/Bienestar",
      MOTIV %in% c(1, 2, 3, 4, 5, 7) ~ "Ocio Puro",
      MOTIV %in% c(16, 17, 18) ~ "Profesional",
      TRUE ~ "Otros"
    )
  ) %>%
  # Eliminamos los valores que no han quedado registrados
  filter(!is.na(Nivel_Estudios), !is.na(Tipo_Motivo))

# Tabla para ver el porcentaje de cada motivo dentro de los atípicos por grupo

tabla_comparativa <- Estud_Motivo_Atipicos %>%
  group_by(Nivel_Estudios, Tipo_Motivo) %>%
  summarise(n = n(), .groups = "drop") %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = round((n / sum(n)) * 100, 2))

# Reestructaramos el formato de la tabla
tabla_final <- tabla_comparativa %>%
  select(-n) %>% 
  pivot_wider(names_from = Tipo_Motivo, values_from = Porcentaje)

# Mostrar resultado
print(tabla_final)
# Generamos la tabla limpia y ordenada
tabla_final_limpia <- Estud_Motivo_Atipicos %>%
  
  group_by(Nivel_Estudios, Tipo_Motivo) %>%
  summarise(n = n(), .groups = "drop") %>%
  group_by(Nivel_Estudios) %>%
  mutate(pct = round(n / sum(n) * 100, 2)) %>%
  select(-n) %>%
  
  # Pasamos nuevamente a formato ancho
  pivot_wider(names_from = Tipo_Motivo, values_from = pct, values_fill = 0) %>%
  
  #  Reordenamos las columnas manualmente para dejar "Otros" al final
  select(Nivel_Estudios, `Familiar/Amigos`, `Ocio Puro`, `Salud/Bienestar`,`Profesional` ,`Otros`)

# Mostramos el resultado
print(tabla_final_limpia)


library(ggplot2)
library(tidyr)
library(dplyr)
library(forcats)

# Pasamos a formato largo para el gráfico
tabla_plot_atipicos <- tabla_final_limpia %>%
  pivot_longer(cols = -Nivel_Estudios, names_to = "Tipo_Motivo", values_to = "Porcentaje") %>%
  # Forzamos el orden: Otros al final de la barra
  mutate(Tipo_Motivo = fct_relevel(Tipo_Motivo, "Otros", after = Inf))

g_motiv_atip <- ggplot(tabla_plot_atipicos, aes(y = Nivel_Estudios, x = Porcentaje, fill = fct_rev(Tipo_Motivo))) +
  geom_col(position = "fill", width = 0.7) +
  # Escala de colores fríos (puedes probar "YlGnBu" para variar un poco los tonos)
  scale_fill_viridis_d(option = "viridis", direction = 1) + 
  scale_x_continuous(labels = scales::percent_format()) +
  labs(
    title = "MOTIVOS DE VIAJES DE LARGA DURACIÓN (>= 15 PERNOCTACIONES)",
    subtitle = "Distribución proporcional por nivel educativo en estancias prolongadas",
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    caption = "Fuente: Elaboración propia basada en DATOS (Filtro NPERNOC >= 15)",
    fill = "Motivo"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 14, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )

ggsave("Motivos_atipicos.pdf",g_motiv_atip,width=15,height=7,device=cairo_pdf())


Estud_Aloj_Atipicos <- DATOS %>%
  filter(NPERNOC >= 15) %>% # Analizamos solo los viajes largos
  mutate(
    Nivel_Estudios = factor(NIVELEST, levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    Tipo_Gasto = ifelse(as.numeric(ALOJAPRIN) <= 9, "De Mercado (Pago)", "No de Mercado (Gratis/Propia)")
  ) %>%
  filter(!is.na(Nivel_Estudios))

# Tabla de proporciones para comparar los tres grupos
tabla_aloj <- Estud_Aloj_Atipicos %>%
  group_by(Nivel_Estudios, Tipo_Gasto) %>%
  summarise(n = n()) %>%
  mutate(pct = (n / sum(n)) * 100)

print(tabla_aloj)
g_alof_atip <- ggplot(tabla_aloj, aes(y = Nivel_Estudios, x = pct, fill = Tipo_Gasto)) +
  geom_col(position = "fill", width = 0.6, color = "white", linewidth = 0.3) +
  # Usamos Viridis con solo 2 niveles para máximo contraste
  scale_fill_viridis_d(option = "viridis", direction = 1, begin = 0.2, end = 0.8) + 
  scale_x_continuous(labels = scales::percent_format()) +
  labs(
    title = "TIPO DE ALOJAMIENTO EN VIAJES LARGOS",
    subtitle = "Comparativa entre alojamiento de mercado (pago) y no de mercado",
    x = "Proporción de Viajes (%)",
    y = NULL,
    caption = "Fuente: Elaboración propia | Viajes >= 15 pernoctaciones",
    fill = "Tipo de Gasto"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 14, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    plot.margin = margin(30, 30, 30, 30)
  )

ggsave("Alojamiento_atípicos.pdf",g_alof_atip,width=15,height=7,device=cairo_pdf())


# 1. Filtrado y preparación de datos
Estud_Final_Atipicos <- DATOS %>%
  filter(NPERNOC >= 15) %>%
  mutate(
    Nivel_Estudios = factor(NIVELEST, levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    # Filtramos según la imagen: 3 = Jubilado
    Situacion_Economica = ifelse(RELAECON == 3, "Jubilado", "No Jubilado")
  ) %>%
  filter(!is.na(Nivel_Estudios))

# 2. Tabla de proporciones porcentuales
tabla_jubilados <- Estud_Final_Atipicos %>%
  group_by(Nivel_Estudios, Situacion_Economica) %>%
  summarise(n = n(), .groups = "drop") %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = round((n / sum(n)) * 100, 2))

# 3. Gráfico de barras apiladas al 100%
g_traba_atipic <- ggplot(tabla_jubilados, aes(y = Nivel_Estudios, x = Porcentaje, fill = Situacion_Economica)) +
  geom_col(position = "fill", width = 0.65, color = "white", linewidth = 0.3) +
  # Usamos la escala Viridis invertida para coherencia
  scale_fill_viridis_d(option = "viridis", direction = 1, begin = 0.3, end = 0.7) + 
  scale_x_continuous(labels = scales::percent_format()) +
  labs(
    title = "PROPORCIÓN DE JUBILADOS EN VIAJES LARGOS",
    subtitle = "Comparativa por nivel de estudios (Estancias >= 15 noches)",
    x = "Frecuencia Relativa (%)",
    y = NULL,
    caption = "Fuente: Elaboración propia | Variable RELAECON",
    fill = "Situación"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 14, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    plot.margin = margin(30, 30, 30, 30)
  )

ggsave("Trabajo_atipico.pdf",g_traba_atipic,width=15,height=7,device=cairo_pdf())




Estud_Final_Atipicos <- DATOS %>%
  filter(NPERNOC >= 15) %>%
  mutate(
    Nivel_Estudios = factor(NIVELEST, levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    Es_Jubilado = ifelse(RELAECON == 3, "Jubilado", "Otros (Activos/Inactivos)"),
    Es_Gratis = ifelse(as.numeric(ALOJAPRIN) >= 10, "No de Mercado", "De Mercado")
  )

# Tabla por alojamiento y situación laboral
resumen_final <- Estud_Final_Atipicos %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Pct_Jubilados = mean(RELAECON == 3, na.rm = TRUE) * 100,
    Pct_NoMercado = mean(as.numeric(ALOJAPRIN) >= 10, na.rm = TRUE) * 100
  )

print(resumen_final)



g_atip_motiv_titulo <- ggplot(Estud_Motivo_Atipicos, aes(y = Nivel_Estudios, fill = Tipo_Motivo)) + 
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  
  # Cambiamos a la paleta YlGnBu (Amarillo-Verde-Azul)
  # direction = -1 para que el motivo principal (Familiar) sea el color más intenso (Azul oscuro)
  scale_fill_brewer(palette = "YlGnBu", direction = -1) + 
  
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  labs(
    title = "PROPORCIONES DE MOTIVOS EN VIAJES LARGOS",
    subtitle = "Gradiente de intensidad: los colores oscuros representan motivos sociales y de cuidados",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE",
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    fill = "Motivo del Viaje"
  ) +
  
  theme_minimal(base_family = "serif") + 
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#1a1a1a", margin = margin(b = 8)),
    plot.subtitle = element_text(face = "italic", size = 11, color = "grey40", margin = margin(b = 20)),
    plot.caption = element_text(size = 8, color = "grey60", margin = margin(t = 15)),
    panel.grid.major.y = element_blank(), 
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(face = "bold", color = "#2c3e50", size = 10),
    legend.position = "bottom",
    plot.margin = margin(20, 20, 20, 20)
  )

g_atip_motiv_titulo
ggsave("Propo_atip_motiv_present.pdf",plot = g_atip_motiv_titulo ,width = 7, height = 4.5, device=cairo_pdf())

g_atip_motiv = ggplot(Estud_Motivo_Atipicos, aes(y = Nivel_Estudios, fill = Tipo_Motivo)) + 
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  
  # Cambiamos a la paleta YlGnBu (Amarillo-Verde-Azul)
  # direction = -1 para que el motivo principal (Familiar) sea el color más intenso (Azul oscuro)
  scale_fill_brewer(palette = "YlGnBu", direction = -1) + 
  
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  labs(
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    fill = "Motivo del Viaje"
  ) +
  
  theme_minimal(base_family = "serif") + 
  theme(
    panel.grid.major.y = element_blank(), 
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(face = "bold", color = "#2c3e50", size = 10),
    legend.position = "bottom",
    plot.margin = margin(20, 20, 20, 20)
  )

g_atip_motiv
ggsave("Propo_atip_motiv.pdf",plot = g_atip_motiv ,width = 15, height = 10,units = "cm", device="pdf")


####Mapas de Calor de los tests \chi^2 -----


Estud_Analisis_Final <- DATOS %>%
  select(NIVELEST, NPERNOC, EDAD, ALOJAPRIN, RELAECON,MOTIV) %>%
  mutate(
    # Agrupamos niveles de estudio
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    # Variable para el Test Chi-cuadrado (Dicotómica)
    Tipo_Alojamiento = ifelse(as.numeric(ALOJAPRIN) >= 10, "No de Mercado", "De Mercado"),
    Situacion_Laboral = ifelse(RELAECON == 3, "Jubilado", "No Jubilado"),
    Tipo_Motivo = case_when(
      MOTIV == 8 ~ "Familiar/Amigos",
      MOTIV %in% c(6, 12) ~ "Salud/Bienestar",
      MOTIV %in% c(1, 2, 3, 4, 5, 7) ~ "Ocio Puro",
      MOTIV %in% c(16, 17, 18) ~ "Profesional",
      TRUE ~ "Otros"
    )
  ) %>%
  # Limpiamos NAs para que los tests sean exactos
  filter(!is.na(Nivel_Estudios), 
         !is.na(NPERNOC), 
         !is.na(Tipo_Alojamiento),
         !is.na(Situacion_Laboral), 
         !is.na(Tipo_Motivo),
         NPERNOC > 15)


# --- TEST 1: Nivel_Estudios vs Tipo_Alojamiento ---
tabla_aloj <- table(Estud_Analisis_Final$Nivel_Estudios, Estud_Analisis_Final$Tipo_Alojamiento)
tabla_aloj
E_aloj <- outer(rowSums(tabla_aloj), colSums(tabla_aloj)) / sum(tabla_aloj)
D2_aloj <- sum((tabla_aloj - E_aloj)^2 / E_aloj)
gl_aloj <- (nrow(tabla_aloj) - 1) * (ncol(tabla_aloj) - 1)
p_aloj <- 1 - pchisq(D2_aloj, gl_aloj)
Dif_aloj <- (tabla_aloj - E_aloj) / sqrt(E_aloj)
Dif_aloj
# --- TEST 2: Nivel_Estudios vs Tipo_Motivo ---
tabla_motiv <- table(Estud_Analisis_Final$Nivel_Estudios, Estud_Analisis_Final$Tipo_Motivo)
E_motiv <- outer(rowSums(tabla_motiv), colSums(tabla_motiv)) / sum(tabla_motiv)
D2_motiv <- sum((tabla_motiv - E_motiv)^2 / E_motiv)
gl_motiv <- (nrow(tabla_motiv) - 1) * (ncol(tabla_motiv) - 1)
p_motiv <- 1 - pchisq(D2_motiv, gl_motiv)
Dif_motiv <- (tabla_motiv - E_motiv) / sqrt(E_motiv)
Dif_motiv
# --- TEST 3: Nivel_Estudios vs Situacion_Laboral ---
tabla_lab <- table(Estud_Analisis_Final$Nivel_Estudios, Estud_Analisis_Final$Situacion_Laboral)
E_lab <- outer(rowSums(tabla_lab), colSums(tabla_lab)) / sum(tabla_lab)
D2_lab <- sum((tabla_lab - E_lab)^2 / E_lab)
gl_lab <- (nrow(tabla_lab) - 1) * (ncol(tabla_lab) - 1)
p_lab <- 1 - pchisq(D2_lab, gl_lab)
Dif_lab <- (tabla_lab - E_lab) / sqrt(E_lab)
Dif_lab
# Mostrar resultados
cat("Resultados Pernoctaciones > 15:\n")
cat("Alojamiento: D2 =", D2_aloj, "| p-valor =", p_aloj, "\n")
cat("Motivo:      D2 =", D2_motiv, "| p-valor =", p_motiv, "\n")
cat("Laboral:     D2 =", D2_lab, "| p-valor =", p_lab, "\n")
dif_est_motivos_atip <- as.data.frame(as.table(Dif_motiv))
dif_est_aloja_atip = as.data.frame(as.table(Dif_aloj))
dif_est_labor_atip = as.data.frame(as.table(Dif_lab))
dif_est_aloja_atip 
dif_est_motivos_atip 
colnames(dif_est_motivos_atip) <- c("Estudios", "Motivos", "Diferencia")
colnames(dif_est_aloja_atip) <- c("Estudios", "Alojamiento","Diferencia")
colnames(dif_est_labor_atip) <- c("Estudios", "Ocupacion", "Diferencia")
g_calor_motiv_atip <- ggplot(dif_est_motivos_atip, aes(x = Motivos, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Texto de residuos significativos con la misma fuente serif
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    title = "DIFERENCIAS EN MOTIVOS",
    subtitle = "Diferencias entre las muestras observadas y las esperadas bajo homogeneidad distribucional",
    x = "Motivación de los viajes", 
    y = NULL
  ) 
g_calor_aloj_atip <- ggplot(dif_est_aloja_atip, aes(x = Alojamiento, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Texto de residuos significativos con la misma fuente serif
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    title = "DIFERENCIAS EN ALOJAMIENTO",
    subtitle = "Diferencias entre las muestras observadas y las esperadas bajo homogeneidad distribucional",
    x = "Motivación de los viajes", 
    y = NULL
  ) +
  
  # Aplicamos tu tema personalizado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#2c3e50"),
    plot.subtitle = element_text(size = 11, color = "#7f8c8d", margin = margin(b=15)),
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )
g_calor_trabajo_atip <- ggplot(dif_est_labor_atip, aes(x = Ocupacion, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Texto de residuos significativos con la misma fuente serif
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    title = "DIFERENCIAS EN OCUPACIÓN",
    subtitle = "Diferencias entre las muestras observadas y las esperadas bajo homogeneidad distribucional",
    x = "Motivación de los viajes", 
    y = NULL
  ) +
  
  # Aplicamos tu tema personalizado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#2c3e50"),
    plot.subtitle = element_text(size = 11, color = "#7f8c8d", margin = margin(b=15)),
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )
ggsave("Calor_motivos_atipicos.pdf",g_calor_motiv_atip,width = 15,height = 7,device = cairo_pdf())
ggsave("Calor_aloja_atipicos.pdf",g_calor_aloj_atip,width = 6,height = 4.5,device = cairo_pdf())
ggsave("Calor_trabajo_atipicos.pdf",g_calor_trabajo_atip,width = 6,height = 4.5,device = cairo_pdf())

##ANÁLISIS DEL GASTO----

# En primer lugar, realizamos un filtrado de los datos. Nos percatamos de que estos se ecncuentran separados por comas
# por lo que forzamos la separación por puntos para que R lo interprete como una variable numérica

Estud_gasto <- DATOS %>%
  select(NIVELEST,GASTOFI_TOTAL,GASTOFI_TRANS,GASTOFI_ALOJA,
         GASTOFI_BAREST,GASTOFI_ACT,GASTOFI_BIENDUR,GASTOFI_RESTO,ANYO,MES) %>%
  mutate( Nivel_Estudios = factor(NIVELEST,
                                  levels = c(1,2,3,4),
                                  labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
          
          Gasto_Total_Euros = as.numeric(gsub(",", ".", GASTOFI_TOTAL)),
          Gasto_Transporte_Euros = as.numeric(gsub(",", ".", GASTOFI_TRANS)),
          Gasto_Alojamiento_Euros = as.numeric(gsub(",", ".", GASTOFI_ALOJA)),
          Gasto_Bares_Euros = as.numeric(gsub(",", ".", GASTOFI_BAREST)),
          Gasto_Cultural_Euros = as.numeric(gsub(",", ".", GASTOFI_ACT)),
          Gasto_Bienes_Euros = as.numeric(gsub(",", ".", GASTOFI_BIENDUR))
  ) %>%
  filter(!is.na(Nivel_Estudios),
         !is.na(Gasto_Total_Euros),
         !is.na(Gasto_Transporte_Euros),
         !is.na(Gasto_Alojamiento_Euros),
         !is.na(Gasto_Bares_Euros),
         !is.na(Gasto_Cultural_Euros),
         !is.na(Gasto_Bienes_Euros)
  )

# Ahora, hacemoDATOS# Ahora, hacemos un breve resumen de las variables MES# Ahora, hacemoDATOS# Ahora, hacemos un breve resumen de las variables que hemos seleccionado

summary(Estud_gasto)

resumen_gastos <- Estud_gasto %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Casos = n(),
    # Calculamos la media para todas las variables de gasto de una vez
    across(
      c(Gasto_Total_Euros, Gasto_Transporte_Euros, Gasto_Alojamiento_Euros, 
        Gasto_Bares_Euros, Gasto_Cultural_Euros, Gasto_Bienes_Euros),
      list(
        Media = ~round(mean(.), 2),
        Mediana = ~median(.),
        SD = ~round(sd(.), 2),
        Max = ~max(.)
      ),
      .names = "{.col}_{.fn}" # Esto crea nombres como Gasto_Total_Euros_Media
    )
  )

resumen_gastos

Gasto_temporal <- Estud_gasto %>%
  mutate(
    # Creamos una fecha ficticia (día 1 de cada mes) para el eje X
    Fecha = make_date(year = ANYO, month = MES, day = 1)
  ) %>%
  group_by(Fecha, Nivel_Estudios) %>%
  summarise(
    Gasto_Medio = mean(Gasto_Total_Euros, na.rm = TRUE),
     Gasto_Mediana = median(Gasto_Total_Euros, na.rm = TRUE),
    .groups = 'drop'
  )

# 2. Creación del gráfico
g_gast_mediana_pres = ggplot(Gasto_temporal, aes(x = Fecha, y = Gasto_Mediana, color = Nivel_Estudios)) +
  
  # Franja COVID-19 (Sombreado estético)
  annotate("rect", 
           xmin = as.Date("2020-03-01"), xmax = as.Date("2021-06-01"), 
           ymin = -Inf, ymax = Inf, 
           fill = "#ecf0f1", alpha = 0.8) +
  
  # Líneas de tendencia (Mediana)
  geom_line(size = 1.2, alpha = 0.8) +
  
  # Puntos para marcar los meses
  geom_point(size = 2) +
  
  # Escalas y Colores idénticos a tu gráfico de referencia
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  
  labs(
    title = "EVOLUCIÓN TEMPORAL: GASTO TURÍSTICO",
    subtitle = "Mediana de gasto mensual por nivel educativo con impacto COVID-19 (2015-2025).",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
    x = "Línea Temporal (Años)",
    y = "Mediana de Gasto (€)"
  ) +
  
  # Estilo Exacto solicitado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )
g_gast_media_pres = ggplot(grafico_temporal, aes(x = Fecha, y = Gasto_Media, color = Nivel_Estudios)) +
  
  # Franja COVID-19 (Sombreado estético)
  annotate("rect", 
           xmin = as.Date("2020-03-01"), xmax = as.Date("2021-06-01"), 
           ymin = -Inf, ymax = Inf, 
           fill = "#ecf0f1", alpha = 0.8) +
  
  # Líneas de tendencia (Mediana)
  geom_line(size = 1.2, alpha = 0.8) +
  
  # Puntos para marcar los meses
  geom_point(size = 2) +
  
  # Escalas y Colores idénticos a tu gráfico de referencia
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  
  labs(
    title = "EVOLUCIÓN TEMPORAL: GASTO TURÍSTICO",
    subtitle = "Mediana de gasto mensual por nivel educativo con impacto COVID-19 (2015-2025).",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
    x = "Línea Temporal (Años)",
    y = "Mediana de Gasto (€)"
  ) +
  
  # Estilo Exacto solicitado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )

g_gast_mediana = ggplot(Gasto_temporal, aes(x = Fecha, y = Gasto_Mediana, color = Nivel_Estudios)) +
  
  # Franja COVID-19 (Sombreado estético)
  annotate("rect", 
           xmin = as.Date("2020-03-01"), xmax = as.Date("2021-06-01"), 
           ymin = -Inf, ymax = Inf, 
           fill = "#ecf0f1", alpha = 0.8) +
  
  # Líneas de tendencia (Mediana)
  geom_line(size = 1.2, alpha = 0.8) +
  
  # Puntos para marcar los meses
  geom_point(size = 2) +
  
  # Escalas y Colores idénticos a tu gráfico de referencia
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  
  labs(
    x = "Línea Temporal (Años)",
    y = "Mediana de Gasto (€)"
  ) +
  
  # Estilo Exacto solicitado
  theme_minimal(base_family = "serif") +
  theme(
    
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )
g_gast_media = ggplot(grafico_temporal, aes(x = Fecha, y = Gasto_Media, color = Nivel_Estudios)) +
  
  # Franja COVID-19 (Sombreado estético)
  annotate("rect", 
           xmin = as.Date("2020-03-01"), xmax = as.Date("2021-06-01"), 
           ymin = -Inf, ymax = Inf, 
           fill = "#ecf0f1", alpha = 0.8) +
  
  # Líneas de tendencia (Mediana)
  geom_line(size = 1.2, alpha = 0.8) +
  
  # Puntos para marcar los meses
  geom_point(size = 2) +
  
  # Escalas y Colores idénticos a tu gráfico de referencia
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  
  labs(
    x = "Línea Temporal (Años)",
    y = "Mediana de Gasto (€)"
  ) +
  
  # Estilo Exacto solicitado
  theme_minimal(base_family = "serif") +
  theme(
    
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )

g_gast_mediana_pres
ggsave("Gasto_temporal_mediana_pres.pdf",plot = g_gast_mediana_pres ,width = 15, height = 7, device=cairo_pdf() )
g_gast_media_pres
ggsave("Gasto_temporal_media_pres.pdf",plot = g_gast_media_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_mediana
ggsave("Gasto_temporal_mediana.pdf", 
       plot = g_gast_mediana, 
       width = 30,      # Aumentamos el ancho
       height = 12.5, 
       units = "cm", 
       device = "pdf")
g_gast_media
ggsave("Gasto_temporal_media.pdf",plot = g_gast_media ,width = 15, height = 10,units = "cm", device="pdf" )




Estud_gasto_largo <- Estud_gasto %>%
  # Añadimos Gasto_Total_Euros a la selección
  select(Nivel_Estudios, Gasto_Total_Euros, Gasto_Transporte_Euros, Gasto_Alojamiento_Euros, 
         Gasto_Bares_Euros, Gasto_Cultural_Euros, Gasto_Bienes_Euros) %>%
  pivot_longer(cols = starts_with("Gasto_"), 
               names_to = "Tipo_Gasto", 
               values_to = "Euros") %>%
  mutate(Tipo_Gasto = str_remove_all(Tipo_Gasto, "Gasto_|_Euros"))


# Usamos el dataframe 'long' que creamos antes
ggplot(Estud_gasto_largo, aes(x = Euros, fill = Nivel_Estudios)) +
  
  # Histograma de densidad con los colores de tu gráfico original
  geom_histogram(aes(y = after_stat(density)), bins = 40, alpha = 0.4, color = "white", size = 0.2) +
  
  # Curva de densidad real (estilo suave como tus violines)
  geom_density(aes(color = Nivel_Estudios), size = 1, alpha = 0) +
  
  # Curva Normal Teórica (referencia en negro punteado para contrastar)
  stat_function(fun = dnorm, 
                args = list(mean = mean(Estud_gasto_largo$Euros, na.rm = TRUE), 
                            sd = sd(Estud_gasto_largo$Euros, na.rm = TRUE)),
                color = "#2c3e50", linetype = "dashed", size = 0.7) +
  
  # Facetamos por Gasto y Nivel para ver cada caso
  facet_grid(Tipo_Gasto ~ Nivel_Estudios, scales = "free") +
  
  # Tus colores manuales para mantener la identidad visual
  scale_fill_manual(values = c("Primaria o inferior" = "red", 
                               "Secundaria"          = "orange", 
                               "Superiores"          = "#3498db")) + 
  scale_color_manual(values = c("Primaria o inferior" = "red", 
                                "Secundaria"          = "orange", 
                                "Superiores"          = "#3498db")) +
  
  labs(
    title = "CONTRASTE DE NORMALIDAD: DISTRIBUCIÓN DEL GASTO",
    subtitle = "La curva sólida representa la densidad real; la línea discontinua, la distribución normal teórica.",
    caption = "Fuente: Elaboración propia.\nNota: La asimetría positiva justifica el uso de pruebas no paramétricas.",
    x = "Euros (€)",
    y = "Densidad"
  ) +
  
  # Modificamos el estilo de Latex
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#7f8c8d", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    strip.text = element_text(face = "bold", size = 10, color = "#2c3e50"),
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    axis.text = element_text(size = 8, color = "#2c3e50"),
    axis.title = element_text(face = "bold", size = 11),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    legend.position = "none",
    plot.margin = margin(30, 30, 30, 30)
  )

# Definimos la función para reutilizar el código
graficar_gasto_log_pres <- function(datos, variable_y, titulo_label) {
  ggplot(datos, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    # Violín con más peso visual
    geom_violin(trim = TRUE, alpha = 0.5, color = NA, scale = "width") +
    # Boxplot minimalista (casi una línea) para no tapar la forma del violín
    geom_boxplot(outlier.shape = NA, width = 0.07, color = "#2c3e50", alpha = 0.4, fatten = 2) +
    scale_y_continuous(
      trans = "pseudo_log", 
      # Usamos breaks fijos comunes para gasto, así evitamos el error de cálculo
      breaks = c(0, 1, 10, 100, 1000, 10000), 
      labels = scales::label_dollar(suffix = "€", prefix = "", big.mark = ".", decimal.mark = ",", accuracy = 1)
    ) + 
    scale_fill_manual(values = c("Primaria o inferior" = "red", 
                                 "Secundaria"          = "orange", 
                                 "Superiores"          = "#3498db")) + 
    
    
    labs(
      title = paste("ANÁLISIS ESTRATIFICADO:", toupper(titulo_label)),
      subtitle = "Escala logarítmica: la silueta destaca la desigualdad y el rango de gasto.",
      caption = "Fuente: Microdatos INE.", x = NULL, y = "Gasto (Escala Log)"
    ) +
    theme_minimal(base_family = "serif") +
    theme(
      
      #Modificamos el estilo del título y su tipografía
      
      plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
      plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
      
      # Cambiamos el color y tipografía de la nota
      
      plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
      
      # Ajustamos los ejes y la tipografía
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      
      # Añadimos un mallado de líneas horizontales 
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      
      # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
      # ajustamos el plot a un margen de 30 x 30 
      legend.position = "none",
      plot.margin = margin(30, 30, 30, 30)
    )
}

graficar_gasto_log <- function(datos, variable_y) {
  ggplot(datos, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    # Violín con más peso visual
    geom_violin(trim = TRUE, alpha = 0.5, color = NA, scale = "width") +
    # Boxplot minimalista (casi una línea) para no tapar la forma del violín
    geom_boxplot(outlier.shape = NA, width = 0.07, color = "#2c3e50", alpha = 0.4, fatten = 2) +
    scale_y_continuous(
      trans = "pseudo_log", 
      # Usamos breaks fijos comunes para gasto, así evitamos el error de cálculo
      breaks = c(0, 1, 10, 100, 1000, 10000), 
      labels = scales::label_dollar(suffix = "€", prefix = "", big.mark = ".", decimal.mark = ",", accuracy = 1)
    ) + 
    
    scale_fill_manual(values = c("Primaria o inferior" = "red", 
                                 "Secundaria"          = "orange", 
                                 "Superiores"          = "#3498db")) + 
    labs(
      x = NULL, y = "Gasto en Euros"
    ) +
    theme_minimal(base_family = "serif") +
    theme(
      
      # Ajustamos los ejes y la tipografía
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      
      # Añadimos un mallado de líneas horizontales 
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      
      # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
      # ajustamos el plot a un margen de 30 x 30 
      legend.position = "none",
      plot.margin = margin(30, 30, 30, 30)
    )
}
graficar_gasto_log_pequeno <- function(datos, variable_y) {
  
  # 1. Copia local para no alterar los datos originales
  datos_plot <- datos
  
  # 2. Forzar saltos de línea en las etiquetas para evitar choques
  etiqueta_1 <- "Primaria o\ninferior"
  etiqueta_2 <- "Secundaria"
  etiqueta_3 <- "Superiores"
  
  datos_plot$Nivel_Estudios <- factor(datos_plot$Nivel_Estudios, 
                                      levels = c("Primaria o inferior", "Secundaria", "Superiores"),
                                      labels = c(etiqueta_1, etiqueta_2, etiqueta_3))
  
  # 3. Generar el gráfico
  ggplot(datos_plot, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    geom_violin(trim = TRUE, alpha = 0.5, color = NA, scale = "width", width = 0.85) +
    geom_boxplot(outlier.shape = NA, width = 0.08, color = "#2c3e50", alpha = 0.4, fatten = 2) +
    
    scale_y_continuous(
      trans = "pseudo_log", 
      # Usamos breaks fijos comunes para gasto, así evitamos el error de cálculo
      breaks = c(0, 1, 10, 100, 1000, 10000), 
      labels = scales::label_dollar(suffix = "€", prefix = "", big.mark = ".", decimal.mark = ",", accuracy = 1)
    ) + 
    
    # Mapeo de colores con las nuevas etiquetas
    scale_fill_manual(values = setNames(c("red", "orange", "#3498db"), 
                                        c(etiqueta_1, etiqueta_2, etiqueta_3))) + 
    labs(x = NULL, y = "Gasto (Log)") +
    
    # Ajustes de tema para tamaño pequeño (7.5cm)
    theme_minimal(base_family = "serif", base_size = 11) + 
    theme(
      axis.text.x = element_text(face = "bold", color = "#2c3e50", lineheight = 0.8),
      axis.title.y = element_text(face = "bold", size = 10),
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.4),
      legend.position = "none",
      # Márgenes mínimos para aprovechar el espacio en LaTeX
      plot.margin = margin(5, 5, 5, 5, "pt") 
    )
}

graficar_gasto_lineal_pres <- function(datos, variable_y, titulo_label, limite_superior = 2500) {
  ggplot(datos, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    # Sin violín: Boxplot limpio y sólido para comparar medianas y cuartiles
    geom_boxplot(outlier.shape = NA, width = 0.4, color = "#2c3e50", alpha = 0.8, fatten = 3.5) +
    # Media: Rombo verde que destaca sobre la caja
    stat_summary(fun = mean, geom = "point", shape = 23, size = 3.5, 
                 fill = "limegreen", color = "#1a1a1a", stroke = 1) +
    coord_cartesian(ylim = c(0, limite_superior)) + 
    scale_y_continuous(labels = scales::dollar_format(suffix = "€", prefix = "")) +
    scale_fill_manual(values = c("Primaria o inferior" = "red", 
                                 "Secundaria"          = "orange", 
                                 "Superiores"          = "#3498db")) + 
    labs(
      title = paste("DETALLE DE POSICIÓN:", toupper(titulo_label)),
      subtitle = paste("Zoom lineal (0-", limite_superior, "€): comparativa directa de promedios."),
      caption = "Nota: Se omiten valores atípicos para favorecer la lectura del gasto medio.",
      x = NULL, y = "Gasto en Euros"
    ) +
    theme_minimal(base_family = "serif") +
    theme(
      
      #Modificamos el estilo del título y su tipografía
      
      plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
      plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
      
      # Cambiamos el color y tipografía de la nota
      
      plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
      
      # Ajustamos los ejes y la tipografía
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      
      # Añadimos un mallado de líneas horizontales 
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      
      # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
      # ajustamos el plot a un margen de 30 x 30 
      legend.position = "none",
      plot.margin = margin(30, 30, 30, 30)
    )
}

graficar_gasto_lineal <- function(datos, variable_y, limite_superior = 2500) {
  ggplot(datos, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    # Sin violín: Boxplot limpio y sólido para comparar medianas y cuartiles
    geom_boxplot(outlier.shape = NA, width = 0.4, color = "#2c3e50", alpha = 0.8, fatten = 3.5) +
    # Media: Rombo verde que destaca sobre la caja
    stat_summary(fun = mean, geom = "point", shape = 23, size = 3.5, 
                 fill = "limegreen", color = "#1a1a1a", stroke = 1) +
    coord_cartesian(ylim = c(0, limite_superior)) + 
    scale_y_continuous(labels = scales::dollar_format(suffix = "€", prefix = "")) +
    scale_fill_manual(values = c("Primaria o inferior" = "red", 
                                 "Secundaria"          = "orange", 
                                 "Superiores"          = "#3498db")) + 
    labs(
      x = NULL, y = "Gasto en Euros"
    ) +
    theme_minimal(base_family = "serif") +
    theme(
      
      # Ajustamos los ejes y la tipografía
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      
      # Añadimos un mallado de líneas horizontales 
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      
      # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
      # ajustamos el plot a un margen de 30 x 30 
      legend.position = "none",
      plot.margin = margin(30, 30, 30, 30)
    )
}
graficar_gasto_lineal_pequeno <- function(datos, variable_y, limite_superior = 2500) {
  
  # 1. Preparación de etiquetas con salto de línea (\n)
  datos_plot <- datos
  etiqueta_1 <- "Primaria o\ninferior"
  etiqueta_2 <- "Secundaria"
  etiqueta_3 <- "Superiores"
  
  datos_plot$Nivel_Estudios <- factor(datos_plot$Nivel_Estudios, 
                                      levels = c("Primaria o inferior", "Secundaria", "Superiores"),
                                      labels = c(etiqueta_1, etiqueta_2, etiqueta_3))
  
  # 2. Construcción del gráfico
  ggplot(datos_plot, aes(x = Nivel_Estudios, y = .data[[variable_y]], fill = Nivel_Estudios)) +
    # Boxplot un poco más ancho para compensar el tamaño pequeño (0.5)
    geom_boxplot(outlier.shape = NA, width = 0.5, color = "#2c3e50", alpha = 0.8, fatten = 3) +
    
    # Media: diamante ligeramente más pequeño (2.5) para no saturar la caja
    stat_summary(fun = mean, geom = "point", shape = 23, size = 2.5, 
                 fill = "limegreen", color = "#1a1a1a", stroke = 0.8) +
    
    coord_cartesian(ylim = c(0, limite_superior)) + 
    scale_y_continuous(labels = scales::dollar_format(suffix = "€", prefix = "")) +
    
    # Colores vinculados a las etiquetas con salto de línea
    scale_fill_manual(values = setNames(c("red", "orange", "#3498db"), 
                                        c(etiqueta_1, etiqueta_2, etiqueta_3))) + 
    labs(x = NULL, y = "Gasto (€)") +
    
    # Tema optimizado para paralelo (base_size 11)
    theme_minimal(base_family = "serif", base_size = 11) + 
    theme(
      axis.text.x = element_text(face = "bold", color = "#2c3e50", lineheight = 0.8),
      axis.title.y = element_text(face = "bold", size = 10),
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.4),
      legend.position = "none",
      # Margen reducido (5pt) para que el gráfico no flote
      plot.margin = margin(5, 5, 5, 5, "pt")
    )
}

#### Gráficas del gasto total ----
g_gast_tot_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Total_Euros', 'Total')
g_gast_tot_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Total_Euros','Total',1500)
g_gast_tot_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Total_Euros')
g_gast_tot_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Total_Euros',1500)
g_gast_tot_distr_peque <-graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Total_Euros')
g_gast_tot_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Total_Euros',1000)


g_gast_tot_distr_pres
ggsave("Gasto_distrib_tot_pres.pdf",plot = g_gast_tot_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_tot_densidad_pres
ggsave("Gasto_densidad_tot_pres.pdf",plot = g_gast_tot_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_tot_distr
ggsave("Gasto_distribucion_tot.pdf",plot = g_gast_tot_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_tot_densidad
ggsave("Gasto_densidad_tot.pdf",plot = g_gast_tot_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_tot_distr_peque
ggsave("Gasto_distribucion_tot_peque.pdf",plot = g_gast_tot_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_tot_densidad_peque 
ggsave("Gasto_densidad_tot_peque.pdf",plot = g_gast_tot_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 

#### Gráficas del gasto  respecto del transporte----

g_gast_trans_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Transporte_Euros', 'Transporte')
g_gast_trans_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Transporte_Euros','Transporte',300)
g_gast_trans_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Transporte_Euros')
g_gast_trans_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Transporte_Euros',300)
g_gast_trans_distr_peque <- graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Transporte_Euros')
g_gast_trans_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Transporte_Euros',300)

g_gast_trans_distr_pres
ggsave("Gasto_distribucion_trans_pres.pdf",plot = g_gast_trans_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_trans_densidad_pres
ggsave("Gasto_densidad_trans_pres.pdf",plot = g_gast_trans_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_trans_distr
ggsave("Gasto_distribucion_trans.pdf",plot = g_gast_trans_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_trans_densidad
ggsave("Gasto_densidad_trans.pdf",plot = g_gast_trans_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_trans_distr_peque
ggsave("Gasto_distribucion_trans_peque.pdf",plot = g_gast_trans_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_trans_densidad_peque 
ggsave("Gasto_densidad_trans_peque.pdf",plot = g_gast_trans_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 

#### Gráficas del gasto total respecto del alojamiento----
g_gast_alojanul_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Alojamiento_Euros', 'Alojamiento')
g_gast_alojanul_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Alojamiento_Euros','Alojamiento',500)
g_gast_alojanul_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Alojamiento_Euros')
g_gast_alojanul_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Alojamiento_Euros',500)
g_gast_alojanul_distr_peque <- graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Alojamiento_Euros')
g_gast_alojanul_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Alojamiento_Euros',300)

g_gast_alojanul_distr_pres
ggsave("Gasto_distribucion_alojanul_pres.pdf",plot = g_gast_alojanul_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_alojanul_densidad_pres
ggsave("Gasto_densidad_alojanul_pres.pdf",plot = g_gast_alojanul_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_alojanul_distr
ggsave("Gasto_distribucion_alojanul.pdf",plot = g_gast_alojanul_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_alojanul_densidad
ggsave("Gasto_densidad_alojanul.pdf",plot = g_gast_alojanul_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_alojanul_distr_peque
ggsave("Gasto_distribucion_alojanul_peque.pdf",plot = g_gast_alojanul_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_alojanul_densidad_peque 
ggsave("Gasto_densidad_alojanul_peque.pdf",plot = g_gast_alojanul_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 
graficar_gasto_log(Estud_gasto,'Gasto_Alojamiento_Euros')

### Gráficas alojamiento no nulo ----
Estud_gasto_alojamiento <- Estud_gasto %>% filter(Gasto_Alojamiento_Euros > 0)

g_gast_aloja_distr_pres <- graficar_gasto_log_pres(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros', 'Alojamiento \n de pago')
g_gast_aloja_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros','Alojamiento \n de pago',700)
g_gast_aloja_distr <- graficar_gasto_log(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros')
g_gast_aloja_densidad <- graficar_gasto_lineal(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros',700)
g_gast_aloja_distr_peque <- graficar_gasto_log_pequeno(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros')
g_gast_aloja_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto_alojamiento,'Gasto_Alojamiento_Euros',700)

g_gast_aloja_distr_pres
ggsave("Gasto_distribucion_aloja_pres.pdf",plot = g_gast_aloja_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_aloja_densidad_pres
ggsave("Gasto_densidad_aloja_pres.pdf",plot = g_gast_aloja_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_aloja_distr
ggsave("Gasto_distribucion_aloja.pdf",plot = g_gast_aloja_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_aloja_densidad
ggsave("Gasto_densidad_aloja.pdf",plot = g_gast_aloja_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_aloja_distr_peque
ggsave("Gasto_distribucion_aloja_peque.pdf",plot = g_gast_aloja_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_aloja_densidad_peque 
ggsave("Gasto_densidad_aloja_peque.pdf",plot = g_gast_aloja_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 

###Gráficas gasto bares ---- 
g_gast_bar_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Bares_Euros', 'Restauración')
g_gast_bar_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Bares_Euros','Restauración',250)
g_gast_bar_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Bares_Euros')
g_gast_bar_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Bares_Euros',200)
g_gast_bar_distrb_peque <-graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Bares_Euros')
g_gast_bar_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Bares_Euros',350)


g_gast_bar_distr_pres
ggsave("Gasto_distribucion_bar_pres.pdf",plot = g_gast_bar_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_bar_densidad_pres
ggsave("Gasto_densidad_bar_pres.pdf",plot = g_gast_bar_densidad_peque ,width = 6, height = 4.5, device="pdf" )

g_gast_bar_distr
ggsave("Gasto_distribucion_bar.pdf",plot = g_gast_bar_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_bar_densidad
ggsave("Gasto_densidad_bar.pdf",plot = g_gast_bar_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_bar_distrb_peque
ggsave("Gasto_distribucion_bar_peque.pdf",plot = g_gast_bar_distrb_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_bar_densidad_peque 
ggsave("Gasto_densidad_bar_peque.pdf",plot = g_gast_bar_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )

###Gráficas gasto cultural----
g_gast_cultnul_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Cultural_Euros', 'Cultura')
g_gast_cultnul_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Cultural_Euros','Cultura',100)
g_gast_cultnul_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Cultural_Euros')
g_gast_cultnul_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Cultural_Euros',100)
g_gast_cultnul_distr_peque <- graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Cultural_Euros')
g_gast_cultnul_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Cultural_Euros',100)

g_gast_cultnul_distr_pres
ggsave("Gasto_distribucion_cultnul_pres.pdf",plot = g_gast_cultnul_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_cultnul_densidad_pres
ggsave("Gasto_densidad_cultnul_pres.pdf",plot = g_gast_cultnul_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_cultnul_distr
ggsave("Gasto_distribucion_cultnul.pdf",plot = g_gast_cultnul_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_cultnul_densidad
ggsave("Gasto_densidad_cultnul.pdf",plot = g_gast_cultnul_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_cultnul_distr_peque
ggsave("Gasto_distribucion_cultnul_peque.pdf",plot = g_gast_cultnul_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_cultnul_densidad_peque 
ggsave("Gasto_densidad_cultnul_peque.pdf",plot = g_gast_cultnul_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 


####Gráficas cultural no nulo ----

Estud_gasto_cultural <- Estud_gasto %>% filter(Gasto_Cultural_Euros > 0)

g_gast_cult_distr_pres <- graficar_gasto_log_pres(Estud_gasto_cultural,'Gasto_Cultural_Euros', 'Cultura (efectivo)')
g_gast_cult_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto_cultural,'Gasto_Cultural_Euros','Cultura (efectivo)',200)
g_gast_cult_distr <- graficar_gasto_log(Estud_gasto_cultural,'Gasto_Cultural_Euros')
g_gast_cult_densidad <- graficar_gasto_lineal(Estud_gasto_cultural,'Gasto_Cultural_Euros',200)
g_gast_cult_distr_peque <- graficar_gasto_log_pequeno(Estud_gasto_cultural,'Gasto_Cultural_Euros')
g_gast_cult_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto_cultural,'Gasto_Cultural_Euros',200)

g_gast_cult_distr_pres
ggsave("Gasto_distribucion_cult_pres.pdf",plot = g_gast_cult_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_cult_densidad_pres
ggsave("Gasto_densidad_cult_pres.pdf",plot = g_gast_cult_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_cult_distr
ggsave("Gasto_distribucion_cult.pdf",plot = g_gast_cult_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_cult_densidad
ggsave("Gasto_densidad_cult.pdf",plot = g_gast_cult_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_cult_distr_peque
ggsave("Gasto_distribucion_cult_peque.pdf",plot = g_gast_cult_distr_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_cult_densidad_peque 
ggsave("Gasto_densidad_cult_peque.pdf",plot = g_gast_cult_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" ) 


#### Gráficas del gasto respecto de los bienes materiales ----
g_gast_biennul_distr_pres <- graficar_gasto_log_pres(Estud_gasto,'Gasto_Bienes_Euros', 'Bienes materiales')
g_gast_biennul_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto,'Gasto_Bienes_Euros','Bienes materiales',20)
g_gast_biennul_distr <- graficar_gasto_log(Estud_gasto,'Gasto_Bienes_Euros')
g_gast_biennul_densidad <- graficar_gasto_lineal(Estud_gasto,'Gasto_Bienes_Euros',20)
g_gast_biennul_distrb_peque <-graficar_gasto_log_pequeno(Estud_gasto,'Gasto_Bienes_Euros')
g_gast_biennul_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto,'Gasto_Bienes_Euros',20)


g_gast_biennul_distr_pres
ggsave("Gasto_distribucion_biennul_pres.pdf",plot = g_gast_biennul_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_biennul_densidad_pres
ggsave("Gasto_densidad_biennul_pres.pdf",plot = g_gast_biennul_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_biennul_distr
ggsave("Gasto_distribucion_biennul.pdf",plot = g_gast_biennul_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_biennul_densidad
ggsave("Gasto_densidad_biennul.pdf",plot = g_gast_biennul_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_biennul_distrb_peque
ggsave("Gasto_distribucion_biennul_peque.pdf",plot = g_gast_biennul_distrb_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_biennul_densidad_peque 
ggsave("Gasto_densidad_biennul_peque.pdf",plot = g_gast_biennul_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )

#### Gráfica del gasto respecto de los bienes materiales no nulos ----
Estud_gasto_bienes <- Estud_gasto %>% filter(Gasto_Bienes_Euros > 0)
g_gast_bien_distr_pres <- graficar_gasto_log_pres(Estud_gasto_bienes,'Gasto_Bienes_Euros', 'Bienes materiales')
g_gast_bien_densidad_pres <- graficar_gasto_lineal_pres(Estud_gasto_bienes,'Gasto_Bienes_Euros','Bienes materiales',1250)
g_gast_bien_distr <- graficar_gasto_log(Estud_gasto_bienes,'Gasto_Bienes_Euros')
g_gast_bien_densidad <- graficar_gasto_lineal(Estud_gasto_bienes,'Gasto_Bienes_Euros',1250)
g_gast_bien_distrb_peque <-graficar_gasto_log_pequeno(Estud_gasto_bienes,'Gasto_Bienes_Euros')
g_gast_bien_densidad_peque <- graficar_gasto_lineal_pequeno(Estud_gasto_bienes,'Gasto_Bienes_Euros',1250)


g_gast_bien_distr_pres
ggsave("Gasto_distribucion_bien_pres.pdf",plot = g_gast_bien_distr_pres ,width = 6, height = 4.5, device="pdf" )
g_gast_bien_densidad_pres
ggsave("Gasto_densidad_bien_pres.pdf",plot = g_gast_bien_densidad_pres ,width = 6, height = 4.5, device="pdf" )

g_gast_bien_distr
ggsave("Gasto_distribucion_bien.pdf",plot = g_gast_bien_distr ,width = 15, height = 10,units = "cm", device="pdf" )
g_gast_bien_densidad
ggsave("Gasto_densidad_bien.pdf",plot = g_gast_bien_densidad ,width = 15, height = 10,units = "cm", device="pdf" )

g_gast_bien_distrb_peque
ggsave("Gasto_distribucion_bien_peque.pdf",plot = g_gast_bien_distrb_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )
g_gast_bien_densidad_peque 
ggsave("Gasto_densidad_bien_peque.pdf",plot = g_gast_bien_densidad_peque ,width = 7.5, height = 6,units = "cm", device="pdf" )

### ANÁLISIS GASTO EN ALOJAMIENTO ----
Estud_gasto_aloj <- DATOS %>%
  select(NIVELEST,GASTOFI_TOTAL,GASTOFI_TRANS,GASTOFI_ALOJA,
         GASTOFI_BAREST,GASTOFI_ACT,GASTOFI_BIENDUR,GASTOFI_RESTO,ALOJAPRIN) %>%
  mutate( Nivel_Estudios = factor(NIVELEST,
                                  levels = c(1,2,3,4),
                                  labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
          
          Gasto_Total_Euros = as.numeric(gsub(",", ".", GASTOFI_TOTAL)),
          Gasto_Transporte_Euros = as.numeric(gsub(",", ".", GASTOFI_TRANS)),
          Gasto_Alojamiento_Euros = as.numeric(gsub(",", ".", GASTOFI_ALOJA)),
          Gasto_Bares_Euros = as.numeric(gsub(",", ".", GASTOFI_BAREST)),
          Gasto_Cultural_Euros = as.numeric(gsub(",", ".", GASTOFI_ACT)),
          Gasto_Bienes_Euros = as.numeric(gsub(",", ".", GASTOFI_BIENDUR)),
          Tipo_Mercado = ifelse(as.numeric(ALOJAPRIN) <= 9, "De Mercado", "No de Mercado")
  ) %>%
  filter(!is.na(Nivel_Estudios),
         !is.na(Gasto_Total_Euros),
         !is.na(Gasto_Transporte_Euros),
         !is.na(Gasto_Alojamiento_Euros),
         !is.na(Gasto_Bares_Euros),
         !is.na(Gasto_Cultural_Euros),
         !is.na(Gasto_Bienes_Euros),
         !is.na(Tipo_Mercado)
  )
tabla_validacion <- Estud_gasto_aloj %>%
  group_by(Nivel_Estudios, Tipo_Mercado) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = round(n / sum(n) * 100, 2))

print(tabla_validacion)

#### Análisis de gasto e ingresos ----
Estud_gasto_ingr <- DATOS %>%
  select(NIVELEST,GASTOFI_TOTAL,GASTOFI_TRANS,GASTOFI_ALOJA,
         GASTOFI_BAREST,GASTOFI_ACT,GASTOFI_BIENDUR,GASTOFI_RESTO,INGR_HOG) %>%
  mutate( Nivel_Estudios = factor(NIVELEST,
                                  levels = c(1,2,3,4),
                                  labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
          
          Gasto_Total_Euros = as.numeric(gsub(",", ".", GASTOFI_TOTAL)),
          Gasto_Transporte_Euros = as.numeric(gsub(",", ".", GASTOFI_TRANS)),
          Gasto_Alojamiento_Euros = as.numeric(gsub(",", ".", GASTOFI_ALOJA)),
          Gasto_Bares_Euros = as.numeric(gsub(",", ".", GASTOFI_BAREST)),
          Gasto_Cultural_Euros = as.numeric(gsub(",", ".", GASTOFI_ACT)),
          Gasto_Bienes_Euros = as.numeric(gsub(",", ".", GASTOFI_BIENDUR)),
  ) %>%
  filter(!is.na(Nivel_Estudios),
         !is.na(Gasto_Total_Euros),
         !is.na(Gasto_Transporte_Euros),
         !is.na(Gasto_Alojamiento_Euros),
         !is.na(Gasto_Bares_Euros),
         !is.na(Gasto_Cultural_Euros),
         !is.na(Gasto_Bienes_Euros),
         !is.na(INGR_HOG)
  )

Estud_gasto_ingr <- Estud_gasto_ingr %>%
  filter(INGR_HOG!= 9) %>% # Eliminamos "No contesta"
  mutate(Ingr_Num = as.numeric(INGR_HOG))


graficar_interaccion_ingresos_pres <- function(datos, variable_y, titulo_label) {
  
  
  ggplot(datos, aes(x = as.numeric(Ingr_Num), y = .data[[variable_y]], color = Nivel_Estudios)) +
    
    # Líneas de tendencia basadas en la mediana (más robustas que la media)
    stat_summary(fun = median, geom = "line", size = 1.2, alpha = 0.8) +
    
    # Puntos para marcar cada tramo de ingresos
    stat_summary(fun = median, geom = "point", size = 3) +
    
    # Escalas y Colores
    scale_x_continuous(breaks = 1:6, 
                       labels = c("<1k", "1-1.5k", "1.5-2.5k", "2.5-3.5k", "3.5-5k", ">5k")) +
    scale_color_manual(values = c("Primaria o inferior" = "red", 
                                  "Secundaria"          = "orange", 
                                  "Superiores"          = "#3498db")) +
    
    labs(
      title = paste("SENSIBILIDAD AL INGRESO:", toupper(titulo_label)),
      subtitle = "Evolución de la mediana de gasto según tramo de renta y nivel educativo.",
      caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
      x = "Tramo de Ingresos del Hogar",
      y = "Mediana de Gasto (€)"
    ) +
    
    # Estilo exacto solicitado
    theme_minimal(base_family = "serif") +
    theme(
      plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
      plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
      plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
      
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      
      # En este gráfico la leyenda SÍ es necesaria para distinguir las líneas
      legend.position = "bottom",
      legend.title = element_blank(),
      plot.margin = margin(30, 30, 30, 30)
    )
}

graficar_interaccion_ingresos <- function(datos, variable_y) {
  
  
  ggplot(datos, aes(x = as.numeric(Ingr_Num), y = .data[[variable_y]], color = Nivel_Estudios)) +
    
    # Líneas de tendencia basadas en la mediana (más robustas que la media)
    stat_summary(fun = median, geom = "line", size = 1.2, alpha = 0.8) +
    
    # Puntos para marcar cada tramo de ingresos
    stat_summary(fun = median, geom = "point", size = 3) +
    
    # Escalas y Colores
    scale_x_continuous(breaks = 1:6, 
                       labels = c("<1k", "1-1.5k", "1.5-2.5k", "2.5-3.5k", "3.5-5k", ">5k")) +
    scale_color_manual(values = c("Primaria o inferior" = "red", 
                                  "Secundaria"          = "orange", 
                                  "Superiores"          = "#3498db")) +
    
    labs(
      x = "Tramo de Ingresos del Hogar",
      y = "Mediana de Gasto (€)"
    ) +
    
    # Estilo exacto solicitado
    theme_minimal(base_family = "serif") +
    theme(
      
      axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
      axis.text.y = element_text(size = 10, color = "#7f8c8d"),
      axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
      axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
      
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
      # En este gráfico la leyenda SÍ es necesaria para distinguir las líneas
      legend.position = "bottom",
      legend.title = element_blank(),
      plot.margin = margin(30, 30, 30, 30)
    )
}

g_gast_ingr_tot_pres <- graficar_interaccion_ingresos_pres(Estud_gasto_ingr,"Gasto_Total_Euros","Gasto Total")
g_gast_ingr_tot<-graficar_interaccion_ingresos(Estud_gasto_ingr,"Gasto_Total_Euros")
g_gast_ingr_tot_pres
ggsave("Gasto_ingresos_tot_pres.pdf",plot = g_gast_ingr_tot_pres ,width = 16, height = 7, device=cairo_pdf() )
ggsave("Gasto_ingresos_tot.pdf",plot = g_gast_ingr_tot ,width = 15, height = 10,units = "cm", device="pdf" )


Estud_gasto_aloj_ingr <- Estud_gasto_ingr %>% filter(Gasto_Alojamiento_Euros > 0)

g_gast_ingr_aloj_pres <- graficar_interaccion_ingresos_pres(Estud_gasto_aloj_ingr,"Gasto_Alojamiento_Euros","Alojamiento")
g_gast_ingr_aloj<-graficar_interaccion_ingresos(Estud_gasto_aloj_ingr,"Gasto_Alojamiento_Euros")

g_gast_ingr_aloj_pres
g_gast_ingr_aloj
ggsave("Gasto_ingresos_aloj_pres.pdf",plot = g_gast_ingr_aloj_pres ,width = 15, height = 7, device="pdf" )
ggsave("Gasto_ingresos_aloj.pdf",plot = g_gast_ingr_aloj ,width = 15, height = 10,units = "cm", device="pdf")


Estud_gasto_cultural_ingr <- Estud_gasto_ingr %>% filter(Gasto_Cultural_Euros > 0)

g_gast_ingr_cult_pres <- graficar_interaccion_ingresos_pres(Estud_gasto_cultural_ingr,"Gasto_Cultural_Euros","Cultura")
g_gast_ingr_cult<-graficar_interaccion_ingresos(Estud_gasto_cultural_ingr,"Gasto_Cultural_Euros")

g_gast_ingr_cult_pres
g_gast_ingr_cult
ggsave("Gasto_ingresos_cult_pres.pdf",plot = g_gast_ingr_cult_pres ,width = 15, height = 7, device="pdf" )
ggsave("Gasto_ingresos_cult.pdf",plot = g_gast_ingr_cult ,width = 15, height = 10,units = "cm", device="pdf")


tabla_sesgo <- Estud_gasto_ingr %>%
  group_by(Nivel_Estudios, Ingr_Num) %>%
  summarise(n_viajes = n(), .groups = 'drop') %>%
  # Pasamos a formato ancho para ver la matriz de datos
  tidyr::pivot_wider(names_from = Ingr_Num, values_from = n_viajes)

print(tabla_sesgo)

# Visualización rápida del tamaño muestral

ggplot(Estud_gasto_ingr, aes(x = factor(Ingr_Num), fill = Nivel_Estudios)) +
  geom_bar(position = "dodge") +
  labs(title = "Distribución de la muestra por tramos de renta",
       x = "Tramo de Renta", y = "Número de observaciones (n)") +
  theme_minimal()


tabla_n <- Estud_gasto_ingr %>%
  filter(Ingr_Num != 9) %>%
  group_by(Ingr_Num, Nivel_Estudios) %>%
  summarise(N_Observaciones = n(), .groups = 'drop') %>%
  pivot_wider(names_from = Nivel_Estudios, values_from = N_Observaciones)

print(tabla_n)

tramo_central <- Estud_gasto_ingr %>% filter(Ingr_Num == 3)

kruskal.test(Gasto_Total_Euros ~ Nivel_Estudios, data = tramo_central)

# Post-hoc para confirmar que Superiores gasta significativamente más que los otros dos
library(FSA)
dunnTest(Gasto_Total_Euros ~ Nivel_Estudios, data = tramo_central, method = "bh")





## ANÁLISIS DE REGERESIÓN LINEAL
# Filtrar y ejecutar modelos para ALOJAMIENTO
modelos_alojamiento <- Estud_gasto_ingr %>%
  group_split(Nivel_Estudios) %>%
  purrr::map(~ lm(Gasto_Alojamiento_Euros ~ as.numeric(Ingr_Num), data = .))

# Ver resultados (el orden suele ser Primaria, Secundaria, Superiores)
names(modelos_alojamiento) <- levels(Estud_gasto$Nivel_Estudios)
summary(modelos_alojamiento$Primaria)
summary(modelos_alojamiento$Secundaria)
summary(modelos_alojamiento$Superiores)

# Filtrar y ejecutar modelos para CULTURA
modelos_cultura <- Estud_gasto_ingr %>%
  group_split(Nivel_Estudios) %>%
  purrr::map(~ lm(Gasto_Cultural_Euros ~ as.numeric(Ingr_Num), data = .))

names(modelos_cultura) <- levels(Estud_gasto$Nivel_Estudios)
summary(modelos_cultura$Primaria)
summary(modelos_cultura$Secundaria)
summary(modelos_cultura$Superiores)

##ANÁLISIS DE LOS DESTINOS----

# Realizamos el filtrado de los datos para poder hacer el estudio de los principales destinos

Estud_Pais = DATOS %>%
  select(NIVELEST,PAISDEST,NPERNOC,ANYO,MES)%>%
  mutate(
    Nivel_Estudios = factor(NIVELEST,
                            levels = c(1,2,3,4),
                            labels = c("Primaria o inferior","Secundaria","Secundaria","Superiores")),
    
    Destino = factor(PAISDEST,
                     levels = c(1,108,2,3,4),
                     labels = c("Europa","España","África","América","Asia y Oceanía"))
    
  ) %>%
  filter(!is.na(Nivel_Estudios),
         !is.na(Destino),
         !is.na(NPERNOC))  %>%
  mutate(Destino = forcats::fct_infreq(Destino))
# # ProseguimosDATOS# Proseguimos con un breve resumen de los datos
# # 1. Preparar los datos para la serie temporal
# evolucion_datos <- Estud_Pais %>%
#   group_by(ANYO, MES, Nivel_Estudios) %>%
#   summarise(Total_Viajes = n(), .groups = "drop") %>%
#   # Crear una fecha ficticia para el eje X
#   mutate(Fecha = make_date(year = ANYO, month = MES, day = 1))
# 
# # 2. Replicar el gráfico de evolución (similar a su Fig 3)
# ggplot(evolucion_datos, aes(x = Fecha, y = Total_Viajes, color = Nivel_Estudios)) +
#   geom_line(linewidth = 1) +
#   geom_point(size = 1.5) +
#   scale_color_manual(values = c("Primaria o inferior" = "red", 
#                                 "Secundaria" = "orange", 
#                                 "Superiores" = "#3498db")) +
#   labs(
#     title = "Evolución mensual del volumen de viajes por nivel educativo",
#     subtitle = "Basado en microdatos INE (2015-2025)",
#     x = "Año",
#     y = "Número de viajes registrados",
#     color = "Nivel de Estudios"
#   ) +
#   theme_minimal() +
#   theme(legend.position = "bottom")
# 
# evolucion_destino <- Estud_Pais %>%
#   # Simplificamos destino a Nacional vs Extranjero como hacían ellos
#   mutate(Tipo_Destino = ifelse(Destino == "España", "España", "Extranjero")) %>%
#   group_by(ANYO, MES, Nivel_Estudios, Tipo_Destino) %>%
#   summarise(n = n(), .groups = "drop_last") %>%
#   mutate(Porcentaje = (n / sum(n)) * 100,
#          Fecha = make_date(year = ANYO, month = MES, day = 1)) %>%
#   ungroup()
# 
# ggplot(filter(evolucion_destino, Tipo_Destino), 
#        aes(x = Fecha, y = Porcentaje, color = Nivel_Estudios)) +
#   geom_line(linewidth = 0.8, alpha = 0.7) +
#   geom_smooth(method = "loess", se = FALSE, linetype = "dashed", linewidth = 1.2) + # Tendencia suavizada
#   scale_color_manual(values = c("Primaria o inferior" = "#e74c3c", "Secundaria" = "#f39c12", "Superiores" = "#3498db")) +
#   labs(title = "Evolución de Viajes por España",
#        subtitle = "Porcentaje de participación por nivel educativo",
#        y = "% sobre el total mensual", x = "Año") +
#   theme_minimal()
# ggplot(filter(evolucion_destino, Tipo_Destino == "España"), 
#        aes(x = Fecha, y = Porcentaje, color = Nivel_Estudios)) +
#   geom_line(linewidth = 0.8, alpha = 0.7) +
#   geom_smooth(method = "loess", se = FALSE, linetype = "dashed", linewidth = 1.2) + # Tendencia suavizada
#   scale_color_manual(values = c("Primaria o inferior" = "#e74c3c", "Secundaria" = "#f39c12", "Superiores" = "#3498db")) +
#   labs(title = "Evolución de Viajes por España",
#        subtitle = "Porcentaje de participación por nivel educativo",
#        y = "% sobre el total mensual", x = "Año") +
#   theme_minimal()
# 
# ggplot(filter(evolucion_destino, Tipo_Destino == "Extranjero"), 
#        aes(x = Fecha, y = Porcentaje, color = Nivel_Estudios)) +
#   geom_line(linewidth = 0.8, alpha = 0.7) +
#   geom_smooth(method = "loess", se = FALSE, linetype = "dashed", linewidth = 1.2) +
#   scale_color_manual(values = c("Primaria o inferior" = "#e74c3c", "Secundaria" = "#f39c12", "Superiores" = "#3498db")) +
#   labs(title = "Evolución de Viajes al Extranjero",
#        subtitle = "Porcentaje de participación por nivel educativo",
#        y = "% sobre el total mensual", x = "Año") +
#   theme_minimal()
# 
# evolucion_global <- Estud_Pais %>%
#   group_by(ANYO, MES, Nivel_Estudios) %>%
#   summarise(n = n(), .groups = "drop_last") %>%
#   mutate(Porcentaje = (n / sum(n)) * 100,
#          Fecha = lubridate::make_date(year = ANYO, month = MES, day = 1)) %>%
#   ungroup()
# ggplot(evolucion_global, aes(x = Fecha, y = Porcentaje, color = Nivel_Estudios)) +
#   geom_line(linewidth = 0.6, alpha = 0.4) + # Líneas reales más tenues para resaltar la tendencia
#   geom_smooth(method = "loess", se = FALSE, linewidth = 1.5) + 
#   scale_color_manual(values = c("Primaria o inferior" = "#e74c3c", 
#                                 "Secundaria" = "#f39c12", 
#                                 "Superiores" = "#3498db")) +
#   labs(
#     title = "Evolución de la Participación en el Mercado Turístico",
#     subtitle = "Porcentaje de viajes totales por nivel educativo (2015-2025)",
#     y = "% sobre el total de viajes mensuales",
#     x = "Año",
#     color = "Nivel de Estudios"
#   ) +
#   theme_minimal(base_family = "serif") +
#   theme(legend.position = "bottom")
# # 1. Preparar los datos (Conteo absoluto)
# evolucion_absoluta <- Estud_Pais %>%
#   mutate(Tipo_Destino = ifelse(Destino == "España", "España", "Extranjero")) %>%
#   group_by(ANYO, MES, Nivel_Estudios, Tipo_Destino) %>%
#   summarise(Num_Viajeros = n(), .groups = "drop") %>%
#   mutate(Fecha = make_date(year = ANYO, month = MES, day = 1))
# 
# # 2. Gráfico (Ejemplo para España)
# ggplot(filter(evolucion_absoluta, Tipo_Destino == "España"), 
#        aes(x = Fecha, y = Num_Viajeros, color = Nivel_Estudios)) +
#   geom_line(alpha = 0.5) +
#   geom_smooth(method = "loess", se = FALSE, linewidth = 1.2) + # Línea de tendencia
#   scale_y_continuous(labels = scales::comma) + # Formato de miles
#   scale_color_manual(values = c("Primaria o inferior" = "red", "Secundaria" = "orange", "Superiores" = "#3498db")) +
#   labs(title = "Evolución del Volumen Absoluto de Viajes (España)",
#        y = "Número total de registros", x = "Año") +
#   theme_minimal()
# 
# ggplot(filter(evolucion_absoluta, Tipo_Destino == "Extranjero"), 
#        aes(x = Fecha, y = Num_Viajeros, color = Nivel_Estudios)) +
#   geom_line(alpha = 0.5) +
#   geom_smooth(method = "loess", se = FALSE, linewidth = 1.2) + # Línea de tendencia
#   scale_y_continuous(labels = scales::comma) + # Formato de miles
#   scale_color_manual(values = c("Primaria o inferior" = "red", "Secundaria" = "orange", "Superiores" = "#3498db")) +
#   labs(title = "Evolución del Volumen Absoluto de Viajes (España)",
#        y = "Número total de registros", x = "Año") +
#   theme_minimal()
# tabla_resumen <- Estud_Pais %>%
#   group_by(Nivel_Estudios, Destino) %>%
#   summarise(n = n(), .groups = 'drop') %>%
#   group_by(Nivel_Estudios) %>%
#   mutate(Porcentaje = n / sum(n)*100)
# 
# tabla_resumen
# 
# # Creamos la base para el ANOVA: Viajes por mes y nivel
# datos_anova <- Estud_Pais %>%
#   group_by(ANYO, MES, Nivel_Estudios) %>%
#   summarise(Num_Viajes = n(), .groups = "drop")
# 
# 
# # Ejecutar el modelo
# modelo_volumen <- aov(Num_Viajes ~ Nivel_Estudios, data = datos_anova)
# 
# # Ver la tabla ANOVA (Tu Tabla 5)
# summary(modelo_volumen)
# 
# # Test de Tukey (Tu Tabla 6)
# TukeyHSD(modelo_volumen)
# 
# 
# grafico_violin_data <- Estud_Pais %>%
#   mutate(Tipo_Destino = ifelse(Destino == "España", "España", "Extranjero")) %>%
#   group_by(ANYO, MES, Nivel_Estudios, Tipo_Destino) %>%
#   summarise(n = n(), .groups = "drop")
# 
# ggplot(grafico_violin_data, aes(x = Nivel_Estudios, y = n, fill = Tipo_Destino)) +
#   geom_violin(trim = FALSE, alpha = 0.7) +
#   geom_point(position = position_dodge(width = 0.9), size = 0.5, alpha = 0.3) +
#   scale_y_log10(breaks = c(10, 50, 100, 500, 1000, 3000, 5000)) +
#   labs(title = "Distribución del Volumen Mensual de Viajes",
#        y = "Frecuencia de viajes (n)", x = "Nivel de Estudios") +
#   theme_minimal()
# 
# # Dado a que hay una gran cantidad de porcentajes, juntamos visualmente los datos en aras
# # de facilitar la interpretación y lectura de los mismos.
# 
# 
# g_estud_paisdest_pres <- ggplot(Estud_Pais, aes(y = Nivel_Estudios, fill = Destino)) + 
#   geom_bar(position = "fill", color = "white", linewidth = 0.2) +
#   
#   # Usamos RdYlBu: Rojo (Cálido/Mayoría) -> Amarillo -> Azul (Frío/Minoría)
#   # Usamos direction = 1 para que el primer nivel (España) sea Rojo
#   scale_fill_brewer(palette = "RdYlBu", direction = 1) + 
#   
#   scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
#   
#   labs(
#     title = "ANÁLISIS PROPORCIONAL DE DESTINOS",
#     subtitle = "Jerarquía de colores: los tonos cálidos destacan el destino nacional predominante",
#     caption = "Fuente: Elaboración propia a partir de microdatos del INE",
#     x = "Frecuencia Relativa del Total (%)",
#     y = NULL,
#     fill = "Destino"
#   ) +
#   
#   theme_minimal(base_family = "serif") +
#   theme(
#     
#     #Modificamos el estilo del título y su tipografía
#     
#     plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
#     plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
#     
#     # Cambiamos el color y tipografía de la nota
#     
#     plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
#     
#     # Ajustamos los ejes y la tipografía
#     
#     axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
#     axis.text.y = element_text(size = 10, color = "#2c3e50"),
#     axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
#     
#     # Añadimos un mallado de líneas horizontales 
#     panel.grid.major.x = element_blank(),
#     panel.grid.minor = element_blank(),
#     panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
#     
#     # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
#     # ajustamos el plot a un margen de 30 x 30 
#     legend.position = "bottom",
#     plot.margin = margin(20, 20, 20, 20)
#   )

g_estud_paisdest <- g_estud_paisdest_pres <- ggplot(Estud_Pais, aes(y = Nivel_Estudios, fill = Destino)) + 
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  
  # Usamos RdYlBu: Rojo (Cálido/Mayoría) -> Amarillo -> Azul (Frío/Minoría)
  # Usamos direction = 1 para que el primer nivel (España) sea Rojo
  scale_fill_brewer(palette = "RdYlBu", direction = 1) + 
  
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  labs(
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    fill = "Destino"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    # Ajustamos los ejes y la tipografía
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#2c3e50"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    
    # Añadimos un mallado de líneas horizontales 
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    # Eliminamos la leyenda (por ser el gráfico en sí bastante autoexplicativo) y 
    # ajustamos el plot a un margen de 30 x 30 
    legend.position = "bottom",
    plot.margin = margin(20, 20, 20, 20)
  )

g_estud_paisdest_pres
ggsave("Destino_pres.pdf",plot = g_estud_paisdest_pres ,width = 15, height = 7, device="pdf" )
g_estud_paisdest
ggsave("Destino.pdf",plot = g_estud_paisdest ,width = 15, height = 10,units = "cm", device="pdf" )

### DESTINO EUROPEO ----
Estud_Europa <- Estud_Pais %>%
  filter(Destino == "Europa")
tabla_europa <- Estud_Europa %>%
  group_by(Nivel_Estudios) %>%
  summarise(Viajes_Europa = n()) %>%
  mutate(Porcentaje = round(Viajes_Europa / sum(Viajes_Europa) * 100, 2))

print(tabla_europa)

g_prop_educ_euro <-ggplot(tabla_europa, aes(x = Nivel_Estudios, y = Porcentaje, fill = Nivel_Estudios)) +
  geom_col(show.legend = FALSE, width = 0.7) +
  # Añadimos etiquetas de porcentaje sobre las barras para mayor claridad
  geom_text(aes(label = paste0(Porcentaje, "%")), 
            vjust = -0.5, fontface = "bold", family = "serif", color = "#2c3e50") +
  scale_fill_brewer(palette = "Blues") + # Una paleta azul coherente con el estilo
  labs(
    title = "DISTRIBUCIÓN DE VIAJEROS A EUROPA POR NIVEL DE ESTUDIOS",
    subtitle = "Proporción porcentual según el nivel educativo alcanzado",
    x = "Nivel de Estudios",
    y = "Porcentaje (%)",
    caption = "Fuente: Elaboración propia basada en los microdatos del INE"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.y = element_text(face = "bold", size = 13, margin = margin(r=15)),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "none", # En barras simples no suele ser necesaria
    plot.margin = margin(30, 30, 30, 30)
  )

ggsave("Proporción_estudios_europeo.pdf",g_prop_educ_euro,width = 15,height=7,device =cairo_pdf())
Estud_Actividades_Europa <- DATOS %>%
  filter(PAISDEST == 1) %>% # Seguimos en el contexto de Europa
  mutate(
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores"))
  ) %>%
  # Limpiamos todas las variables ACTI de una vez
  mutate(across(starts_with("ACTI_"), ~case_when(
    . == "1" ~ 1,      # Si es "1", es un SÍ
    . == "b" ~ 0,      # Si es "b", lo tratamos como NO (no realizada/no contesta)
    TRUE     ~ 0       # Cualquier otro valor (si existe) se considera NO
  )))

Estud_Actividades_Africa <- DATOS %>%
  filter(PAISDEST == 2) %>% # Pasamos al contexto de África
  mutate(
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores"))
  ) %>%
  # Limpiamos todas las variables ACTI de una vez
  mutate(across(starts_with("ACTI_"), ~case_when(
    . == "1" ~ 1,      # Si es "1", es un SÍ
    . == "b" ~ 0,      # Si es "b", lo tratamos como NO (no realizada/no contesta)
    TRUE     ~ 0       # Cualquier otro valor (si existe) se considera NO
  )))

# 2. Selección de las actividades más relevantes para el grupo de Secundaria
# Sugiero: Cultura, Ciudades, Gastronomía y Naturaleza
resumen_actividades_Europa <- Estud_Actividades_Europa %>%
  filter(!is.na(Nivel_Estudios)) %>% 
  group_by(Nivel_Estudios) %>%
  summarise(
    Cultura     = round(mean(ACTI_VISITASCULTU) * 100, 2),
    Ciudades    = round(mean(ACTI_CIUDADES) * 100, 2),
    Gastro      = round(mean(ACTI_GASTRO) * 100, 2),
    Naturaleza  = round(mean(ACTI_AREASNATU) * 100, 2),
    n_casos     = n()
  )
resumen_actividades_Africa <- Estud_Actividades_Africa %>%
  filter(!is.na(Nivel_Estudios)) %>% 
  group_by(Nivel_Estudios) %>%
  summarise(
    Cultura     = round(mean(ACTI_VISITASCULTU) * 100, 2),
    Ciudades    = round(mean(ACTI_CIUDADES) * 100, 2),
    Gastro      = round(mean(ACTI_GASTRO) * 100, 2),
    Naturaleza  = round(mean(ACTI_AREASNATU) * 100, 2),
    n_casos     = n()
  )
resumen_actividades_Europa
resumen_actividades_Africa

Estud_Paquete_Europa <- DATOS %>%
  filter(PAISDEST == 1) %>% 
  mutate(
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores")),
    # Convertimos a 1 (Sí), 0 (No) y tratamos "b" como NA
    Uso_Paquete = case_when(
      PAQUETE == "1" ~ 1,
      PAQUETE == "6" ~ 0,
      TRUE ~ NA_real_ 
    )
  ) %>%
  filter(!is.na(Nivel_Estudios))

# Calculamos ignorando los NA
tabla_paquete <- Estud_Paquete_Europa %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Porcentaje_Paquete = round(mean(Uso_Paquete, na.rm = TRUE) * 100, 2),
    n = n()
  )

print(tabla_paquete)
Estud_Motivo_Europa <- DATOS %>%
  filter(PAISDEST == 1) %>% 
  mutate(
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores")),
    
    # Convertimos a número para evitar problemas de "02" vs "2" o espacios
    M_Num = as.numeric(as.character(MOTIV)),
    
    Motivo_Detallado = case_when(
      M_Num == 2               ~ "Cultural",
      M_Num %in% c(1, 3:7)     ~ "Ocio/Vacaciones",
      M_Num == 8               ~ "Familia/Amigos",
      M_Num %in% 16:18         ~ "Negocios/Prof.",
      TRUE                     ~ "Otros"
    )
  ) %>%
  filter(!is.na(Nivel_Estudios))

# Generamos la tabla limpia
tabla_motivos_detallada <- Estud_Motivo_Europa %>%
  group_by(Nivel_Estudios, Motivo_Detallado) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = round(n / sum(n) * 100, 2)) %>%
  select(-n) %>%
  pivot_wider(names_from = Motivo_Detallado, values_from = Porcentaje)

print(tabla_motivos_detallada)


tabla_plot <- tabla_motivos_detallada %>%
  pivot_longer(cols = -Nivel_Estudios, names_to = "Motivo", values_to = "Porcentaje")

g_motiv_euro <- ggplot(tabla_plot, aes(y = Nivel_Estudios, x = Porcentaje, fill = fct_rev(Motivo))) +
  geom_col(position = "fill", width = 0.7) +
  # Escala de colores fríos (Azules y Verdes)
  scale_fill_brewer(palette = "GnBu") + 
  scale_x_continuous(labels = scales::percent_format()) +
  labs(
    title = "ANÁLISIS PROPORCIONAL DE MOTIVOS",
    subtitle = "Jerarquía de colores: los tonos sólidos destacan el motivo principal del viaje",
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    caption = "Fuente: Elaboración propia basada en DATOS",
    fill = "Motivo"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, color = "#7f8c8d"),
    axis.title.x = element_text(face = "bold", size = 11, color = "#2c3e50", margin = margin(t=15)),
    
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_blank(),
    plot.margin = margin(30, 30, 30, 30)
  )

ggsave("Proporción_motivos_europeo.pdf",g_motiv_euro,width = 15,height=7,device =cairo_pdf())

# 1. Creamos la tabla de frecuencias observadas (O)
# Usamos el dataframe que ya tienes filtrado para Europa
tabla_obs <- table(Estud_Motivo_Europa$Nivel_Estudios, Estud_Motivo_Europa$Motivo_Detallado)

# 2. Calculamos los totales (marginales)
n_total <- sum(tabla_obs)
marginal_filas <- rowSums(tabla_obs)
marginal_cols <- colSums(tabla_obs)

# 3. Calculamos las Frecuencias Esperadas (E)
# E = (Total Fila * Total Columna) / Total General
# Usamos el operador %*% (producto exterior) para hacerlo de golpe
tabla_esp <- (marginal_filas %*% t(marginal_cols)) / n_total

# 4. Calculamos el estadístico Chi-cuadrado (D) a mano
# Fórmula: Sumatorio de ((O - E)^2 / E)
residuos_cuadrado <- (tabla_obs - tabla_esp)^2 / tabla_esp
estadistico_D <- sum(residuos_cuadrado)

# 5. Calculamos el p-valor para la inferencia
# Grados de libertad: (filas - 1) * (cols - 1) = 2 * 4 = 8
gl <- (nrow(tabla_obs) - 1) * (ncol(tabla_obs) - 1)
p_valor <- pchisq(estadistico_D, df = gl, lower.tail = FALSE)

# Mostramos los resultados
cat("Estadístico Chi-cuadrado (D):", round(estadistico_D, 4), "\n")
cat("Grados de Libertad:", gl, "\n")
cat("p-valor:", p_valor, "\n")

# Residuos estandarizados (Pearson)
residuos_pearson <- (tabla_obs - tabla_esp) / sqrt(tabla_esp)
print(round(residuos_pearson, 2))



dif_dest_motivos<- as.data.frame(as.table(residuos_pearson))
dif_dest_motivos
colnames(dif_dest_motivos) <- c("Estudios", "Motivos", "Diferencia")
g_calor_dest_motiv <- ggplot(dif_dest_motivos, aes(x = Motivos, y = Estudios, fill = Diferencia)) +
  geom_tile(color = "white", linewidth = 0.8) +
  
  # Texto de residuos significativos con la misma fuente serif
  geom_text(aes(label = ifelse(abs(Diferencia) > 1.96, round(Diferencia, 1), "")), 
            family = "serif", size = 4, fontface = "bold", color = "#2c3e50") +
  
  # Gradiente refinado
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", 
                       midpoint = 0, name = "Diferencias") +
  
  labs(
    title = "DIFERENCIAS EN ALOJAMIENTO",
    subtitle = "Diferencias entre las muestras observadas y las esperadas bajo homogeneidad distribucional",
    x = "Motivación de los viajes", 
    y = NULL
  ) +
  
  # Aplicamos tu tema personalizado
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 16, color = "#2c3e50",hjust = 0.5),
    plot.subtitle = element_text(size = 11, color = "#7f8c8d", margin = margin(b=15), hjust = 0.5),
    axis.text.x = element_text(face = "bold", size = 11, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 11, color = "#2c3e50"),
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )

g_calor_dest_motiv 

ggsave("Calor_dest_motiv.pdf", g_calor_dest_motiv,width = 15, height = 7, device = cairo_pdf())




### DESTINO ESPAÑOL ----

Estud_España <- DATOS %>%
  filter(PAISDEST == 108) %>% 
  mutate(
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores")),
    # Limpiamos MOTIV y ALOJAPRIN para España
    M_Num = as.numeric(as.character(MOTIV)),
    Aloj_Num = as.numeric(as.character(ALOJAPRIN))
  ) %>%
  filter(!is.na(Nivel_Estudios))

#### ANÁLISIS POR COMUNIDAD AUTÓNOMA ----

Estud_CCAA <- DATOS %>%
  select(NIVELEST, CCAADEST,ALOJAPRIN) %>%
  mutate(
    # Limpiamos y convertimos a factor con los nombres de tu imagen
    CCAA = factor(as.numeric(as.character(CCAADEST)),
                  levels = 1:19,
                  labels = c("Andalucía", "Aragón", "Asturias", "Baleares", "Canarias", 
                             "Cantabria", "Castilla y León", "Castilla-La Mancha", 
                             "Cataluña", "Com. Valenciana", "Extremadura", "Galicia", 
                             "Madrid", "Murcia", "Navarra", "País Vasco", "La Rioja", 
                             "Ceuta", "Melilla")),
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4),
                            labels = c("Primaria o inferior", "Secundaria", "Secundaria", "Superiores"))
  )
# Eliminamos extranjeros (ya implícito al no estar el 0 en los niveles) y NAs
tabla_CCA <- Estud_CCAA %>%
filter(!is.na(CCAA), !is.na(Nivel_Estudios)) %>%
  # Calculamos porcentajes por grupo educativo
  group_by(Nivel_Estudios, CCAA) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = (n / sum(n)) * 100)

# 2. Generación del Mapa de Calor (Heatmap)
g_ccaa = ggplot(tabla_CCA, aes(x = Nivel_Estudios, y = CCAA, fill = Porcentaje)) +
  geom_tile(color = "white", linewidth = 0.3) +
  
  # Creamos facetas para poder asignar colores distintos por columna
  facet_wrap(~Nivel_Estudios, scales = "free_x") +
  
  # Definimos las tres escalas de color (necesitamos el paquete ggh4x o hacerlo por capas)
  # Como opción más directa y limpia, usamos una paleta que combine bien:
  scale_fill_distiller(palette = "YlOrRd", direction = 1, labels = scales::percent_format(scale = 1)) +
  
  labs(
    x = NULL, y = NULL, fill = "% Viajes"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    strip.text = element_text(face = "bold", size = 11),
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    axis.text.x = element_blank(), # Quitamos el texto del eje X porque ya está en el título de la faceta
    panel.grid = element_blank(),
    panel.spacing = unit(0, "lines"), # Pegamos las columnas
    legend.position = "right"
  )

g_ccaa_pres = ggplot(tabla_CCA, aes(x = Nivel_Estudios, y = CCAA, fill = Porcentaje)) +
  geom_tile(color = "white", linewidth = 0.3) +
  
  # Creamos facetas para poder asignar colores distintos por columna
  facet_wrap(~Nivel_Estudios, scales = "free_x") +
  
  # Definimos las tres escalas de color (necesitamos el paquete ggh4x o hacerlo por capas)
  # Como opción más directa y limpia, usamos una paleta que combine bien:
  scale_fill_distiller(palette = "YlOrRd", direction = 1, labels = scales::percent_format(scale = 1)) +
  
  labs(
    title = "DISTRIBUCIÓN GEOGRÁFICA NACIONAL",
    subtitle = "Intensidad de viajes por comunidad autónoma según nivel educativo.",
    x = NULL, y = NULL, fill = "% Viajes"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#7f8c8d", hjust = 0.5, margin = margin(b=20)),
    strip.text = element_text(face = "bold", size = 11),
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    axis.text.x = element_blank(), # Quitamos el texto del eje X porque ya está en el título de la faceta
    panel.grid = element_blank(),
    panel.spacing = unit(0, "lines"), # Pegamos las columnas
    legend.position = "right"
  )

g_ccaa_pres
ggsave("Destino_autonómico_pres.pdf",plot = g_ccaa_pres ,width = 15, height = 7, device="pdf" )
g_ccaa
ggsave("Destino_autonómico.pdf",plot = g_ccaa ,width = 15, height = 10,units = "cm", device="pdf" )

ccaa_clave <- c("La Rioja", "Castilla-La Mancha", "Castilla y León", "Cataluña", "Madrid")

Estud_Aloj_CCAA <- Estud_CCAA  %>% # El dataset con los nombres de CCAA
  filter(CCAA %in% ccaa_clave) %>%
  mutate(
    Tipo_Alojamiento = case_when(
      as.numeric(as.character(ALOJAPRIN)) <= 9 ~ "De Mercado (Hotel/Alquiler)",
      as.numeric(as.character(ALOJAPRIN)) >= 10 ~ "No de Mercado (Familia/Propia)"
    )
  ) %>%
  filter(!is.na(Tipo_Alojamiento),
         !is.na(Nivel_Estudios))

tabla_aloj_ccaa <- Estud_Aloj_CCAA %>%
  group_by(CCAA, Nivel_Estudios, Tipo_Alojamiento) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(CCAA, Nivel_Estudios) %>%
  mutate(Porcentaje = round(n / sum(n) * 100, 2)) %>%
  # Pasamos a formato ancho para comparar Mercado vs No Mercado fácilmente
  select(-n) %>%
  pivot_wider(names_from = Tipo_Alojamiento, values_from = Porcentaje)

print(tabla_aloj_ccaa)

datos_grafico_aloj <- Estud_Aloj_CCAA %>%
  filter(!is.na(Nivel_Estudios)) %>%
  group_by(CCAA, Nivel_Estudios, Tipo_Alojamiento) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(CCAA, Nivel_Estudios) %>%
  mutate(Porcentaje = n / sum(n)) # Calculamos la proporción (0 a 1)

ggplot(datos_grafico_aloj, aes(x = Nivel_Estudios, y = Porcentaje, fill = Tipo_Alojamiento)) +
  geom_bar(stat = "identity", position = "fill", color = "white", linewidth = 0.3) +
  
  facet_wrap(~CCAA, ncol = 3) +
  
  # Colores: Azul vibrante para Mercado y un Gris Seda (más elegante) para No de Mercado
  scale_fill_manual(values = c("De Mercado (Hotel/Alquiler)" = "#3498db", 
                               "No de Mercado (Familia/Propia)" = "#e0e0e0")) +
  
  scale_y_continuous(labels = scales::percent_format(), expand = c(0,0)) +
  
  labs(
    title = "ESTRUCTURA DEL ALOJAMIENTO POR DESTINO Y FORMACIÓN",
    subtitle = "Predominio del alojamiento no comercial en perfiles de estudios básicos.",
    caption = "Fuente: Elaboración propia a partir de microdatos del INE.",
    x = NULL, 
    y = "Proporción del Tipo de Alojamiento",
    fill = NULL # Eliminamos el título de la leyenda para mayor limpieza
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    legend.position = "bottom",
    # Limpieza de facetas
    strip.background = element_rect(fill = "#f8f9fa", color = NA),
    strip.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    # Títulos centrados y limpios
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5, color = "#1a1a1a"),
    plot.subtitle = element_text(size = 11, color = "grey40", hjust = 0.5, margin = margin(b=20)),
    # Etiquetas de estudios horizontales y nítidas
    axis.text.x = element_text(angle = 0, hjust = 0.5, size = 9.5, color = "#2c3e50", face = "bold"),
    axis.text.y = element_text(size = 9, color = "grey50"),
    # Mallado discreto
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.spacing = unit(2, "lines"),
    plot.margin = margin(30, 30, 30, 30)
  )

#### ANÁLISIS DE MOTIVOS ----

Estud_Motivo_ES <- Estud_España %>%
  mutate(
    # Aseguramos limpieza de la variable de motivo
    M_Num = as.numeric(as.character(MOTIV)),
    Motivo_Detallado = case_when(
      M_Num == 2           ~ "Cultural",
      M_Num %in% c(1, 3:7) ~ "Ocio/Vacaciones",
      M_Num == 8           ~ "Familia/Amigos",
      M_Num %in% 16:18     ~ "Negocios/Prof.",
      TRUE                 ~ "Otros"
    )
  )

tabla_motivos_es <- Estud_Motivo_ES %>%
  group_by(Nivel_Estudios, Motivo_Detallado) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(Nivel_Estudios) %>%
  mutate(Porcentaje = round(n / sum(n) * 100, 2)) %>%
  select(-n) %>%
  pivot_wider(names_from = Motivo_Detallado, values_from = Porcentaje)

print(tabla_motivos_es)


g_dest_esp_motivo <- ggplot(Estud_Motivo_ES, aes(y = Nivel_Estudios, fill = Motivo_Detallado)) + 
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  scale_fill_brewer(palette = "RdYlBu", direction = 1) + 
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  # Definimos Título y Subtítulo
  labs(
    title = "ANÁLISIS PROPORCIONAL DE MOTIVOS",
    subtitle = "Jerarquía de colores: los tonos cálidos destacan el motivo principal del viaje",
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    fill = "Motivo"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    # Estilo del Título (Centrado y en negrita)
    plot.title = element_text(hjust = 0.5, face = "bold", size = 14, color = "#2c3e50"),
    # Estilo del Subtítulo (Centrado e itálica)
    plot.subtitle = element_text(hjust = 0.5, size = 9, face = "italic", color = "#7f8c8d", margin = margin(b = 15)),
    
    axis.text.x = element_text(face = "bold", size = 10, color = "#2c3e50"),
    axis.text.y = element_text(size = 9, color = "#2c3e50"),
    axis.title.x = element_text(face = "bold", size = 10, color = "#2c3e50", margin = margin(t=10)),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    legend.title = element_text(face = "bold", size = 9),
    plot.margin = margin(20, 20, 20, 20)
  )


# Visualizar gráfico
g_dest_esp_motivo

ggsave("Proporcion_viajes_españa.pdf",g_dest_esp_motivo,width = 15, height = 7, device = cairo_pdf())



# 1. Tabla de frecuencias observadas (O) para España
O_es <- table(Estud_Motivo_ES$Nivel_Estudios, Estud_Motivo_ES$Motivo_Detallado)

# 2. Cálculo de marginales y total
n_tot_es <- sum(O_es)
marginal_filas_es <- rowSums(O_es)
marginal_cols_es <- colSums(O_es)

# 3. Cálculo de frecuencias esperadas (E)
# E = (Total Fila * Total Columna) / Total General
E_es <- (marginal_filas_es %*% t(marginal_cols_es)) / n_tot_es


# 4. Cálculo del estadístico D (Chi-cuadrado)
# D = Sumatorio de ((O - E)^2 / E)
D_estadistico_es <- sum((O_es - E_es)^2 / E_es)

# 5. Cálculo del p-valor
# gl = (3 filas - 1) * (5 columnas - 1) = 8
gl_es <- (nrow(O_es) - 1) * (ncol(O_es) - 1)
p_val_es <- pchisq(D_estadistico_es, df = gl_es, lower.tail = FALSE)

# Resultados
cat("Estadístico D (Chi-cuadrado):", round(D_estadistico_es, 4), "\n")
cat("Grados de libertad:", gl_es, "\n")
cat("p-valor:", p_val_es, "\n")

# 1. Calculamos los residuos de Pearson a mano
# Fórmula: (Observado - Esperado) / raíz(Esperado)
residuos_pearson_es <- (O_es - E_es) / sqrt(E_es)

# 2. Mostramos la tabla redondeada para facilitar la lectura
round(residuos_pearson_es, 2)


### RARA AVIS AFRICANA ----
nombres_ccaa <- c("Andalucía", "Aragón", "Asturias", "Baleares", "Canarias", 
                  "Cantabria", "Castilla y León", "Castilla-La Mancha", "Cataluña", 
                  "C. Valenciana", "Extremadura", "Galicia", "Madrid", "Murcia", 
                  "Navarra", "País Vasco", "La Rioja", "Ceuta", "Melilla")
Estud_Perfil <- DATOS %>%
  select(NIVELEST,PAISDEST,PAISNAC,MOTIV,INGR_HOG,CCAA_RESIDENCIA) %>% 
  # Filtramos por nivel de estudios primarios y destino África
  mutate(
    
    Nivel_Estudios = factor(NIVELEST,levels = c(1,2,3,4),labels=c("Primaria","Secundaria","Secundaria","Superior")),
    # Nacionalidad: 1=Esp, 2=Ext, 3=Doble
    Perfil_Nacionalidad = factor(PAISNAC, 
                                 levels = c(1, 2, 3), 
                                 labels = c("Española", "Extranjera", "Doble")),
    
    # Tramos de Renta según tu imagen (1 a 6 + NC)
    Tramo_Renta = factor(INGR_HOG, 
                         levels = c(1, 2, 3, 4, 5, 6, 9),
                         labels = c("<1.000€", "1.000-1.500€", "1.500-2.500€", 
                                    "2.500-3.500€", "3.500-5.000€", ">5.000€", "NC")),
    Comunidad_Residencia = factor(nombres_ccaa[CCAA_RESIDENCIA], levels = nombres_ccaa),
    Destino = factor(PAISDEST, 
                     levels = c(1, 108, 2, 3, 4),
                     labels = c("Europa", "España", "África", "América", "Resto del Mundo"))) %>%
   filter(!is.na(Tramo_Renta==9), !is.na(Nivel_Estudios))
 Primaria = Estud_Perfil %>% filter(NIVELEST==1)
 Superior = Estud_Perfil %>% filter(NIVELEST==4)

# 1. ¿Cuál es el perfil de nacionalidad de quienes van a África en este grupo?
tabla_nacionalidad_primaria <- Primaria %>%
  count(Perfil_Nacionalidad) %>%
  mutate(porcentaje = (n / sum(n)) * 100)

tabla_nacionalidad_superior <- Superior %>%
  count(Perfil_Nacionalidad) %>%
  mutate(porcentaje = (n / sum(n)) * 100)
# 2. ¿Cuál es el nivel de ingresos predominante en este flujo específico?

tabla_renta_africa_primaria <- Primaria %>%
  count(Tramo_Renta) %>%
  mutate(porcentaje = (n / sum(n)) * 100)

tabla_renta_europa_superior <- Superior %>%
  count(Tramo_Renta) %>%
  mutate(porcentaje = (n / sum(n)) * 100)

print(tabla_nacionalidad_primaria)
print(tabla_renta_africa_primaria)
print(tabla_nacionalidad_superior)
print(tabla_renta_europa_superior)


# 1. Unimos los datos etiquetando el nivel de estudios para la comparación
datos_grafico <- bind_rows(
  Primaria %>% mutate(Nivel_Grupo = "Primaria o inferior (Destino África)"),
  Superior %>% mutate(Nivel_Grupo = "Superiores/Universitarios (Destino Europa)")
)

# 2. Generamos el gráfico
g_comparativa_renta <- ggplot(datos_grafico, aes(y = Nivel_Grupo, fill = Tramo_Renta)) + 
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  
  # Usamos la paleta YlOrRd (Amarillo-Naranja-Rojo) para una escala progresiva de renta
  scale_fill_brewer(palette = "YlOrRd", direction = 1) + 
  
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  labs(
    title = "ANÁLISIS PROPORCIONAL DE RENTAS POR PERFIL",
    subtitle = "Comparativa de tramos de renta según nivel educativo y destino del viaje",
    x = "Frecuencia Relativa del Total (%)",
    y = NULL,
    fill = "Tramo de Renta"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 13, color = "#2c3e50"),
    plot.subtitle = element_text(hjust = 0.5, size = 9, face = "italic", color = "#7f8c8d", margin = margin(b = 15)),
    
    axis.text.x = element_text(face = "bold", size = 10, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, face = "bold", color = "#2c3e50"),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    plot.margin = margin(20, 20, 20, 20)
  )

g_comparativa_renta
ggsave("Proporcion_renta_áfrica.pdf",g_comparativa_renta,width = 15, height = 7, device = cairo_pdf())

Estud_Origen_Africa_Primaria <- Estud_Perfil %>%
  filter(NIVELEST == 1, Destino == "África")

# 2. Generamos la tabla de frecuencias por CCAA
datos_procedencia_total <- Estud_Perfil %>%
  filter(Destino == "África") %>%
  group_by(Nivel_Estudios, Comunidad_Residencia) %>%
  summarise(n = n(), .groups = 'drop') %>%
  group_by(Nivel_Estudios) %>%
  mutate(porcentaje = (n / sum(n)) * 100)

# 2. Gráfico comparativo con facetas
g_comparativo_ccaa <- ggplot(datos_procedencia_total, 
                             aes(x = porcentaje, 
                                 y = reorder_within(Comunidad_Residencia, porcentaje, Nivel_Estudios), 
                                 fill = porcentaje)) + 
  geom_col(color = "white", linewidth = 0.1) +
  
  # Facetado por Nivel de Estudios
  facet_wrap(~Nivel_Estudios, scales = "free_y") +
  
  scale_fill_distiller(palette = "YlOrRd", direction = 1) + 
  scale_x_continuous(labels = scales::label_percent(scale = 1), expand = c(0, 0.1)) +
  
  # Función para limpiar los nombres de los ejes al usar reorder_within
  scale_y_reordered() +
  
  labs(
    title = "COMPARATIVA GEOGRÁFICA SEGÚN NIVEL EDUCATIVO",
    subtitle = "Origen de los viajeros con destino África desglosado por formación académica",
    x = "Porcentaje de viajeros dentro de cada grupo (%)",
    y = NULL
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 14, color = "#2c3e50"),
    plot.subtitle = element_text(hjust = 0.5, size = 10, face = "italic", color = "#7f8c8d", margin = margin(b = 15)),
    
    # Estilo de las etiquetas de las facetas (los títulos de cada panel)
    strip.text = element_text(face = "bold", size = 11, color = "#2c3e50"),
    strip.background = element_rect(fill = "#ecf0f1", color = "white"),
    
    axis.text.y = element_text(size = 8),
    panel.spacing = unit(2, "lines"), # Espacio entre paneles
    legend.position = "none",
    plot.margin = margin(20, 20, 20, 20)
  )

print(g_comparativo_ccaa)

ggsave("Proporcion_comunidad_autonoma_General.pdf",g_comparativo_ccaa,width = 15, height = 7, device = cairo_pdf())


  Estud_Ceuta_Melilla <- DATOS %>%
  filter(CCAA_RESIDENCIA %in% c("18", "19")) %>% 
  mutate(
    # Creamos la variable de estudios agrupada que faltaba
    Nivel_Estudios = factor(NIVELEST, 
                            levels = c(1, 2, 3, 4), 
                            labels = c("Primaria", "Secundaria", "Secundaria", "Superiores")),
    # Marcamos si el destino es África (002)
    Es_Africa = ifelse(as.numeric(PAISDEST) == 2, "Sí", "No")
  ) %>%
  filter(!is.na(Nivel_Estudios)) # Limpiamos posibles NAs

# 2. Comparamos la propensión a viajar a África según estudios DENTRO de estas ciudades
tabla_comparativa <- Estud_Ceuta_Melilla %>%
  group_by(Nivel_Estudios) %>%
  summarise(
    Total_Viajes = n(),
    Viajes_a_Africa = sum(Es_Africa == "Sí", na.rm = TRUE),
    Propension_Africa_Pct = (Viajes_a_Africa / Total_Viajes) * 100
  )

print(tabla_comparativa)


g_propension_ceumel <- ggplot(Estud_Ceuta_Melilla, aes(y = Nivel_Estudios, fill = Es_Africa)) + 
  # Barras apiladas al 100%
  geom_bar(position = "fill", color = "white", linewidth = 0.2) +
  
  # Usamos una escala progresiva cálida. 
  # El "Sí" (viaje a África) destacará en un tono más intenso.
  scale_fill_manual(values = c("No" = "#fee090", "Sí" = "#d73027")) + 
  
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  
  labs(
    title = "PROPENSIÓN DE VIAJE A ÁFRICA: CEUTA Y MELILLA",
    subtitle = "Comparativa del peso de África como destino según el nivel educativo del residente",
    x = "Proporción sobre el total de viajes realizados (%)",
    y = NULL,
    fill = "¿Viaje a África?"
  ) +
  
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 13, color = "#2c3e50"),
    plot.subtitle = element_text(hjust = 0.5, size = 9, face = "italic", color = "#7f8c8d", margin = margin(b = 15)),
    
    axis.text.x = element_text(face = "bold", size = 10, color = "#2c3e50"),
    axis.text.y = element_text(size = 10, face = "bold", color = "#2c3e50"),
    
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.y = element_line(color = "#ecf0f1", linewidth = 0.5),
    
    legend.position = "bottom",
    plot.margin = margin(20, 20, 20, 20)
  )
ggsave("Viaje_ceumel_Africa.pdf",g_propension_ceumel,width = 15, height = 7, device = cairo_pdf())

# Creamos la tabla de contingencia para Ceuta y Melilla
tabla_inferencia_ceumel <- table(Estud_Ceuta_Melilla$Nivel_Estudios, 
                                 Estud_Ceuta_Melilla$Es_Africa)

# Ejecutamos el test
chisq.test(tabla_inferencia_ceumel)$residuals


residuos <- chisq.test(tabla_inferencia_ceumel)$residuals
df_residuos <- as.data.frame(residuos)
colnames(df_residuos) <- c("Nivel_Estudios", "Es_Africa", "Residuo")

g_calor_viaj_afric_ceumel <- ggplot(df_residuos, aes(x = Es_Africa, y = Nivel_Estudios, fill = Residuo)) +
  geom_tile(color = "white", linewidth = 0.8) +
  # Añadimos los valores numéricos sobre las celdas
  geom_text(aes(label = round(Residuo, 1)), family = "serif", fontface = "bold", size = 5) +
  # Escala divergente: Rojo (Negativo) - Blanco (0) - Azul (Positivo)
  scale_fill_gradient2(low = "#e74c3c", mid = "white", high = "#3498db", midpoint = 0) +
  labs(
    title = "DIFERENCIAS EN VIAJES A ÁFRICA",
    subtitle = "Diferencias entre frecuencias observadas y esperadas (Test Chi-cuadrado)",
    x = "¿Viaja a África?",
    y = "Nivel de Estudios",
    caption = "Valores positivos (azul) indican una frecuencia mayor a la esperada por azar",
    fill = "Diferencia"
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title = element_text(face = "bold", size = 15, color = "#2c3e50", hjust = 0.5),
    plot.subtitle = element_text(size = 10, color = "#2c3e50", hjust = 0.5, margin = margin(b=25)),
    plot.caption = element_text(size = 9, color = "#bdc3c7", face = "italic"),
    
    axis.text.x = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.text.y = element_text(face = "bold", size = 12, color = "#2c3e50"),
    axis.title = element_text(face = "bold", size = 11, color = "#2c3e50"),
    
    panel.grid = element_blank(),
    legend.position = "right",
    plot.margin = margin(30, 30, 30, 30)
  )
ggsave("Calor_Africa_ceumel.pdf",g_calor_viaj_afric_ceumel,width=15,height=7,device=cairo_pdf())
