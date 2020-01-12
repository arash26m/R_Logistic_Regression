#logistic regression
address = "C:/Users/ataghi2/OneDrive/CH4DATA.csv"
df=read.csv(address ,header=T)

train = df[1:33,]
test = df[34:48,]

fit = glm(R11 ~ S11, data=train, family=binomial)
summary(fit)

p = predict(fit, test, type="response")

p = ifelse(p>.5, 1, 0)

R11=data.frame(df$R11)

R11t = R11[34:48,]

PNAN=length(which(p == 0 & R11t == 0))
PYAN=length(which(p == 1 & R11t == 0))
PNAY=length(which(p == 0 & R11t == 1))
PYAY=length(which(p == 1 & R11t == 1))

cbind(c(PNAN,PNAY),c(PYAN,PYAY))

ACURRACY = (PNAN+PYAY)/(PNAN+PYAN+PNAY+PYAY)
ACURRACY

#My Code4
#logistic regression
address = "C:/Users/ataghi2/OneDrive/Arash/Papers/James/CH4DATA to Arash2.csv"
df=read.csv(address ,header=T)

train = df[1:33,]
test = df[34:48,]

fit = glm(R11 ~ S11, data=train, family=binomial)
summary(fit)

p = predict(fit, test, type="response")

p = ifelse(p>.5, 1, 0)

Y =data.frame(df$R11)

Yt = Y[34:48,]

PNAN=length(which(p == 0 & Yt == 0))
PYAN=length(which(p == 1 & Yt == 0))
PNAY=length(which(p == 0 & Yt == 1))
PYAY=length(which(p == 1 & Yt == 1))

cbind(c(PNAN,PNAY),c(PYAN,PYAY))

ACURRACY = (PNAN+PYAY)/(PNAN+PYAN+PNAY+PYAY)
ACURRACY
