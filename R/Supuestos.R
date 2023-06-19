# SUPUESTOS

res2 <- mod2$residuals
shapiro.test(res2)

bartlett.test(res2, tratamientos)

boxplot (bloques~tratamientos)
