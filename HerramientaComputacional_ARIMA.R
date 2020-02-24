#librerias
library(astsa)
library(stats)

#datos
datos <- read.xlsx('Desktop/ITESO/9no Semestre/Microestructuras y Sistemas de Trading/Módulo 1/AUDUSD.xlsx')
serie<-ts(datos$Cierre)

plot(serie)


# Pronostico
ajuste<- sarima(serie, 2,0,0)
sarima.for(serie, 2,0,0, n.ahead = 10)

prueba<-Box.test(resid(ajuste$fit),type="Ljung-Box")
prueba
