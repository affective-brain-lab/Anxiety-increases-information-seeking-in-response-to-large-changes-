library(tidyverse)
library(lm.beta)
library(mediation)
library(mediation)
library(ggplot2)
library(tidyverse)


data<- read.csv(".csv")

data$Gender<- factor(data$Gender)
is.factor(data$Gender)

data$Group<- factor(data$Group)
is.factor(data$Group)

fit.full<-lm(WTPsignesMarketChange~STAI_CHANGE+Group+ Age + Gender,data=data)
summary(fit.full)


fit.fullabs<-lm(WTPabsMarketChange~STAI_CHANGE+Group+ Age + Gender,data=data)
summary(fit.fullabs)


fit.fullabs<-lm(vWTP~STAI_CHANGE+Group+ Age + Gender,data=data)
summary(fit.fullabs)


