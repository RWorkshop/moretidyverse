library(randomForest)
library(modelr)
library(ggplot2) # Diamonds Data
#RMSE, MAE, rsquare
dim(diamonds)
library(dplyr)
diamonds1 <- sample_frac(diamonds,0.10)
diamonds2 <- sample_frac(diamonds,0.05)
diamonds3 <- sample_frac(diamonds,0.05)
# Training vs Testing
glimpse(diamonds1)
summary(diamonds$cut)
class(diamonds$cut)
cor(diamonds1)
summary(lm(price~.,data=diamonds1))
randomForest(price ~. data = diamonds1)
randomForest(price ~ . , data = diamonds1)
diamRF <- randomForest(price ~ . , data = diamonds1)
diamRF
rmse(diamRF,diamonds1)
mae(diamRF,diamonds1)
qae(diamRF,diamonds1)
rsquare(diamRF,diamonds1)
rsquare(diamRF,diamonds2)
rsquare(diamRF,diamonds3)
rmse(diamRF,diamonds2)
rmse(diamRF,diamonds3)
mae(diamRF,diamonds3)
mae(diamRF,diamonds2)

# diamonds data set ( ggplot2 R package )library(randomForest)
library(modelr)
library(ggplot2) # Diamonds Data
#RMSE, MAE, rsquare
dim(diamonds)
library(dplyr)
diamonds1 <- sample_frac(diamonds,0.10)
diamonds2 <- sample_frac(diamonds,0.05)
diamonds3 <- sample_frac(diamonds,0.05)
# Training vs Testing
glimpse(diamonds1)
summary(diamonds$cut)
class(diamonds$cut)
cor(diamonds1)
summary(lm(price~.,data=diamonds1))

####################################################

diamRF <- randomForest(price ~ . , data = diamonds1)
diamRF
rmse(diamRF,diamonds1)
mae(diamRF,diamonds1)
qae(diamRF,diamonds1)
rsquare(diamRF,diamonds1)
rsquare(diamRF,diamonds2)
rsquare(diamRF,diamonds3)
rmse(diamRF,diamonds2)
rmse(diamRF,diamonds3)
mae(diamRF,diamonds3)
mae(diamRF,diamonds2)

# diamonds data set ( ggplot2 R package )
# Random Forest Model to predict price
# called diamRF
# 
# tidyerse packages are loaded
# tibble, magrittr, dplyr etc
#
#

diamRF
head(diamonds1)
summary(diamRF)
importance(diamRF)
importance(diamRF) %>% class

as.tibble(importance(diamRF))
order(importance(diamRF))
importance(diamRF)
rank(importance(diamRF))
order(importance(diamRF))
importance(diamRF)[rank(importance(diamRF)),]
varImpPlot(diamRF)
varImpPlot(diamRF,pch=18,col="red",cex=1.5)
######################################
# Random Forest Model to predict price
# called diamRF
# 
# tidyerse packages are loaded
# tibble, magrittr, dplyr etc
#
#

diamRF
head(diamonds1)
summary(diamRF)
importance(diamRF)
importance(diamRF) %>% class

as.tibble(importance(diamRF))
order(importance(diamRF))
importance(diamRF)
rank(importance(diamRF))
order(importance(diamRF))
importance(diamRF)[rank(importance(diamRF)),]
varImpPlot(diamRF)
varImpPlot(diamRF,pch=18,col="red",cex=1.5)

