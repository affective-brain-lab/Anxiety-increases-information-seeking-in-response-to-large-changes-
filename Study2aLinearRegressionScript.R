library(tidyverse)
library(lm.beta)
library(mediation)
library(mediation)
library(ggplot2)
library(tidyverse)



data<- read.csv(".csv")

data$Gender<- factor(data$Gender)
is.factor(data$Gender)


fit.full<-lm(vWTP~Trait.Anxiety+ Age + Gender,data=data)
summary(fit.full)

fit.full<-lm(WTPsignedmarketchange~Trait.Anxiety+ Age + Gender,data=data)
summary(fit.full)

fit.fullabs<-lm(WTPabsmarketchange~Trait.Anxiety+ Age + Gender,data=data)
summary(fit.fullabs)


