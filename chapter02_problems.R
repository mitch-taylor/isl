### CHAPTER 2 EXERCISES ###

# Conceptual

# 1.a: flexible better
# 1.b: inflexible better
# 1.c: flexible better
# 1.d: inflexible better

# 2.a: regression, inference, n = 500, p = 3
# 2.b: classification, prediction, n = 20, p = 13
# 2.c: regression, prediction, n = 52, p = 3

# 3.a: see notes
# 3.b: bias decreases as flexibility increases, variance increases as 
#       flexibility increases, training error decreases as flex increases,
#       test error decreases then increases with flexibility, irreducible
#       error is constant

# 4 - application examples, ignored.

# 5: more flexible approach useful where highly non-linear data, for prediction
# instead of inference, where large data volumes exist

# 6: parametric approach involves making some assumption about the relationship
# (functional form of f) and then estimating parameters. A non-parametric
# approach does not make any assumptions. Computation is faster and interpretation
# easier with a parametric approach. A disadvantage is that by assuming the form
# we impose constraints which may be incorrect.

# 7.a: 1 = 3, 2 = 2, 3 = sqrt(10), 4 = sqrt(5), 5 = sqrt(2), 6 = sqrt(3)
# 7.b: green, nearest point is 5
# 7.c: red, nearest 3 points are 2, 5 and 6. 2 red, 1 green
# 7.d: small, a large K would give a linear boundary

# Applied

# Q8
library(ISLR)
data("College")
# a. ignore, using ISLR package
fix(College)
summary(College)
pairs(College[, 1:10])
plot(College$Private, College$Outstate)
Elite <- rep("No", nrow(College))
Elite[College$Top10perc > 50] = "Yes"
Elite <- as.factor(Elite)
College <- data.frame(College, Elite)
summary(College$Elite)
plot(College$Elite, College$Outstate)
par(mfrow=c(2,2))
hist(College$Apps, breaks = 10)
hist(College$Accept, breaks = 5)
hist(College$Enroll, breaks = 50)
hist(College$Room.Board, breaks = 200)

# Q9
data(Auto)
summary(Auto)
sapply(Auto[,1:7], range)
sapply(Auto[,1:7], mean)
sapply(Auto[,1:7], sd)
Auto_new <- Auto[-(10:85),]
sapply(Auto_new[,1:7], range)
sapply(Auto_new[,1:7], mean)
sapply(Auto_new[,1:7], sd)
pairs(Auto)

# Q10
library(MASS)
data(Boston)
?Boston
dim(Boston)
pairs(Boston)
sapply(Boston,range)
hist(Boston$crim)
hist(Boston$tax)
hist(Boston$ptratio)
summary(as.factor(Boston$chas))
median(Boston$ptratio)
Boston[Boston$medv == min(Boston$medv), ]
summary(Boston)
nrow(Boston[Boston$rm > 7, ])
nrow(Boston[Boston$rm > 8, ])
summary(Boston[Boston$rm > 8, ])
