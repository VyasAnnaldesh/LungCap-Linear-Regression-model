LungCapData <- read.delim2(file.choose(), header = T)
attach(LungCapData)
names(LungCapData)
class(Age)
class(LungCap)
plot(Age, LungCap, main = "Scatterplot")

as.numeric(LungCap)

cor(Age, as.numeric(LungCap))

model <- lm(LungCap ~ Age)
summary(model)
attributes(model)

model$coefficients
plot(Age, LungCap, main = "Scatterplot")

abline(model, col=2, lwd=3)
confint(model, level=0.99)

summary(model)
anova(model)
sqrt(2.3)
