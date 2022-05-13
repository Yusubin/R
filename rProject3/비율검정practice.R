hdtv <- read.csv("C:/Users/hi/r-work/csv/hdtv.csv")
View(hdtv)

summary(hdtv)#요약
length(hdtv)#갯수
length(hdtv)#행 수
table(hdtv$buy, useNA = "ifany")
table(hdtv$buy)
library(prettyR)
freq(hdtv$buy)


#구매>10, 비구매 >40
#앞에 쓰는것의 퍼센테이지를 따름
#10을 먼저쓰면, 구매할 확률로 계산산
#큰건지. 
binom.test(c(10,40), p=0.15,alternative = "greater", conf.level = 0.95 )
# p-value = 0.2089  ==> 15%보다 작다. 
binom.test(c(10,40), p=0.1,alternative = "greater", conf.level = 0.95 )
#10~15%사이인듯
#data:  c(10, 40)
#number of successes = 10, number of trials = 50, p-value = 0.02454
#alternative hypothesis: true probability of success is greater than 0.1
#95 percent confidence interval:
#  0.1127216 1.0000000
#sample estimates:
#  probability of success 
#0.2 
binom.test(c(10,40), p=0.11,alternative = "greater", conf.level = 0.95 )


##11%보다는 구매율이 크다. 
#현재 구매율은 11~15%
#기존 구매율보다 낮다. #단일 그룹비율
binom.test(c(10,40), p=0.15,alternative = "two.side", conf.level = 0.95 )
# == binom.test(c(10,40), p=0.15)
## p-value 가 0.05 이하로 나와야함. 
# p-value = 0.321 .... 0.05보다 크므로 대립가설은 기각, 영가설이 채택
# 기존 구매율이후 15%와 다르다. .... 


#기존 구매율이 15%일경우...15%보다 큰건지?
binom.test(c(40,10), p=0.85,alternative = "greater", conf.level = 0.95 ) 
#p-value = 0.8801 .... 영가설이 나타날 확률이 0.1199으로 0.05보다 큼..
#크지않다....


#기존 구매율이 15%일경우.... 차이가 있는가?
binom.test(c(40,10), p=0.85,alternative = "two.side", conf.level = 0.95 )
#p-value = 0.321 ... 차이가 없다

