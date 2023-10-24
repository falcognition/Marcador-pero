# WITH RANDOM SLOPES

# V1 --T/C vs D1/D2   w/participant and item as rfact

df <- Ventana_1
attach(df)
modelov1nomit <- lmer(Tiempo ~ Juntas + (1 + Juntas | Participante) + (1 + Juntas | Item))
summary(modelov1nomit)
anova(modelov1nomit)
emmeans(modelov1nomit, pairwise ~ Juntas)
boxplot(Tiempo ~ Imagen * MD)
boxplot(Tiempo ~ Juntas)
boxplot(Tiempo ~ TCDD)
coef(modelov1nomit)
AIC(modelov1nomit)
detach(df)



# V1--T-C-D1/D2   w/participant and item as rfact
df <- Ventana_1
attach(df)
modelov2Anomit <- lmer(Tiempo ~ TCDD + (1 + TCDD | Participante) + (1 + TCDD | Item))
summary(modelov2Anomit)
anova(modelov2Anomit)
emmeans(modelov2Anomit, pairwise ~ TCDD)
boxplot(Tiempo ~ TCDD)
boxplot(Tiempo ~ Juntas)
boxplot(Tiempo ~ TCDD)
boxplot(Tiempo ~ TCDD * MD)
coef(modelov2Anomit)
AIC(modelov2Anomit)
report(modelov2Anomit)
detach(df)


# V2 --T/C vs D1/D2   w/participant and item as rfact

df <- Ventana_2
attach(df)
modelov1nomit <- lmer(Tiempo ~ Juntas + (1 + Juntas | participante) + (1 + Juntas | Item))
summary(modelov1nomit)
anova(modelov1nomit)
emmeans(modelov1nomit, pairwise ~ Juntas)
boxplot(Tiempo ~ imagen * marcador)
boxplot(Tiempo ~ Juntas)
coef(modelov1nomit)
AIC(modelov1nomit)
detach(df)



# V2--T-C-D1/D2   w/participant and item as rfact
df <- Ventana_2
attach(df)
modelov2Anomit <- lmer(Tiempo ~ TCDD + (1 + TCDD | Participante) + (1 + TCDD | Item))
summary(modelov2Anomit)
anova(modelov2Anomit)
emmeans(modelov2Anomit, pairwise ~ TCDD)
boxplot(Tiempo ~ TCDD)
boxplot(Tiempo ~ Juntas)
boxplot(Tiempo ~ TCDD)
boxplot(Tiempo ~ TCDD * MD)
coef(modelov2Anomit)
AIC(modelov2Anomit)
report(modelov2Anomit)
detach(df)


# V4 T--C--D1/D2   w/particioant and intem as rfact
df <- Ventana_4
attach(df)
modeloV4nomit <- lmer(Tiempo ~ TCDD * Contexto * MD + (1 + TCDD | Participante) + (1 + MD | Participante) + (1 + Contexto | Participante)+ (1 + TCDD | Item) + (1 + MD | Item) + (1 + Contexto | Item))
summary(modeloV4nomit)
anova(modeloV4nomit)
plotmo(modeloV4nomit, type = "diag", show.values = TRUE)
boxplot(Tiempo ~ Imagen * MD)
boxplot(Tiempo ~ TCDD * MD)
emmeans(modeloV4nomit, pairwise ~ TCDD * MD)
coef(modeloV4nomit)
AIC(modeloV4nomit)
report (modeloV4nomit)
detach(df)


# V6 T--C--D1/D2   w/particioant and intem as rfact
df <- Ventana_6
attach(df)
modeloV6nomit <- lmer(Tiempo ~ TCDD * Contexto * MD + (1 + TCDD | Participante) + (1 + MD | Participante) + (1 + TCDD | Item) + (1 + MD | Item))
summary(modeloV6nomi)
anova(modeloV6nomi)
plotmo(mmodeloV6nomit, type = "diag", show.values = TRUE)
boxplot(Tiempo ~ Imagen * MD)
boxplot(Tiempo ~ TCDD * MD)
emmeans(odeloV6nomit ~ TCDD * MD)
coef(odeloV6nomit)
AIC(odeloV6nomit)
report (odeloV6nomit)
detach(df)

# V7 T--C--D1/D2   w/particioant and intem as rfact
df <- Ventana_7
attach(df)
modeloV7nomit <- lmer(Tiempo ~ TCDD * Contexto * MD + (1 + TCDD | Participante) + (1 + MD | Participante) + (1 + TCDD | Item) + (1 + MD | Item))
summary(modeloV7nomit)
anova(modeloV7nomit)
plotmo(modeloV7nomit, type = "diag", show.values = TRUE)
boxplot(Tiempo ~ Imagen * MD)
boxplot(Tiempo ~ TCDD * MD)
emmeans(modeloV7nomit ~ TCDD * MD)
coef(modeloV7nomit)
AIC(modeloV7nomit)
report (modeloV7nomit)
detach(df)