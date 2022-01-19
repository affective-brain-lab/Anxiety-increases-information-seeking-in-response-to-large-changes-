library(tidyverse)
library(lm.beta)
library(mediation)
library(mediation)
library("readxl")
install.packages("readxl")

data <- read.csv(".csv")
library("ggplot2")




mod1 <- lm(COVID19Consumption ~ Anxiety_factor_STAI+Age + Gender.1.Male+
             Education+HouseholdIncome+PoliticalOrientation+
             Ethnicity+HealthCareInsuranceSatisfaction+Dependents,data=data)
summary(mod1)

mod1 <- lm(COVID19Consumption ~ Anxiety_factor_noSTAI+Age + Gender.1.Male+
             Education+HouseholdIncome+PoliticalOrientation+
             Ethnicity+HealthCareInsuranceSatisfaction+Dependents,data=data)
summary(mod1)


mod1 <- lm(COVID19Consumption ~ STAI_Score+Age + Gender.1.Male+
             Education+HouseholdIncome+PoliticalOrientation+
             Ethnicity+HealthCareInsuranceSatisfaction+Dependents,data=data)
summary(mod1)




