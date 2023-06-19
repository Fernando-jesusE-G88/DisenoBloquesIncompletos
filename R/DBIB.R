#'Diseño de bloques incompletos balanceados
#'
#'Realiza un calculo de anova para un diseño de bloques incompletos
#'
#'@param T (vector) Tratamientos
#'@param B (vector) Bloques
#'@return Una tabla anova de un DBIB
#'@export


Dis_BIB <- function (T, B) {
  bloques <- as.factor(DATOSTB$BLOQUES)
  tratamientos <- as.factor(DATOSTB$TRATAMIENTOS)
  str(DATOSTB)

  mod1 <- lm(TRATAMIENTOS~ BLOQUES)
  anova1 <- aov (mod1)
  summary(anova1)

  library(car)
  anovaDS<- Anova(mod1 , type="II")

  anovaDS
}

