# load mixed effects package
library(lme4)
library(lmerTest)

#load dataframes for mixed effects models
data <- read.csv("Study1_Mixed.csv")

data$subj<- factor(data$subj)
is.factor(data$subj)

data$gender<- factor(data$gender)
is.factor(data$gender)



#control parameters to use in all models
control_params = lmerControl(optimizer="bobyqa",optCtrl=list(maxfun=100000))



mod <- lmer(wtp ~ (vMC + aMC)*(TraitAnxiety +age+gender)+
              (vMC + aMC | subj),
            data = data, REML=FALSE, control = control_params)

summary(mod)

