# PARA EVITAR EL ERROR DONDE NO UBICA ALGUNA DE LAS VARIABLES, ASEGURARSE DE ELEGIR LA CELDA "EL NOMBRE DE LAS VARIABLES ESTÁ ARRIBA"



# Marcador:  MODELO REGRESIÓN LINEAL w/participant as rfact 
df <- cntxt.data
attach(df)
modelocntxtpar <- lmer(Tiempo ~  MD * Contexto * Imagen + (1 + MD | Participante)  + (1 + Contexto | Participante) + (1 + Imagen | Participante))
summary(modelocntxtpar)
anova(modelocntxtpar)
boxplot(Tiempo ~ Imagen * MD)
boxplot(Tiempo ~ Imagen * Contexto)
boxplot(Tiempo ~ Imagen * Contexto * MD)
emmeans(modelocntxtpar ~ Imagen * MD)
emmeans(modelocntxtpar ~ Imagen * Contexto)
AIC(modelocntxtpar)
detach(df)

