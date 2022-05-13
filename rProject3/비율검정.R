#빈도수의 차이를 검정하고 싶을때 
#빈도수를 나타내는 표 : 교차 검정표
#getwd()
#setwd("C:/Users/hi/r-work/csv/one_sample.csv")
#one_sample <- read.csv("one_sample.csv")
one_sample <- read.csv("C:/Users/hi/r-work/csv/one_sample.csv")
getwd()
View(one_sample)
head(one_sample)
tail(one_sample)
summary(one_sample)#요약
length(one_sample)#갯수
length(one_sample$no)#행 수
table(one_sample$survey, useNA = "ifany")
library(prettyR)
freq(one_sample$survey)


##불만족 만족 2가지 밖에 없음 >> 베르누이 시행
##교차 분석표를 TABLE(),FREQ()함수로 구함
#이항분포는 명목척도(질적 데이터)
binom.test(c(136,14), p=0.8,alternative = "greater", conf.level = 0.95 ) #conf.level:신뢰수준
#data:  c(136, 14)
#number of successes = 136, number of trials = 150, p-value = 0.0003179
#alternative hypothesis: true probability of success is greater than 0.8
#95 percent confidence interval:
#  0.8579426 1.0000000
#sample estimates:
#  probability of success 
#0.9066667 

#p-value는 영가설이 나타날 확률 (0.0003179)이 0.05보다 작음
#확률이므로, 내가 주장한 80%이상의 만족도가 나타날 확률이 96%이상 된다는 것임
#85~100만족도가 나오면 내가 맞다는 결론이 나온다. 
