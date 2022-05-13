two_sample <- read.csv("C:/Users/hi/r-work/csv/two_sample.csv")
View(two_sample)

table(two_sample$gender)
##----- 남/여 별...
# 1   2
#174 126 

table(two_sample$survey)
##----만족도 
#0   1 
#55 245 

table(two_sample$gender,two_sample$survey,useNA = "ifany")
#    y
#x   0   1
#1  36 138
#2  19 107
prop.test(c(138,107),c(174,126),alternative = 'two.side', conf.level = 0.95)
# => 연구가설 : 남자가 여자보다 만족도가 차이가 있다. 
# => 귀무가설 : 남자가 여자보다 만족도가 차이가 없다.
#  p-value = 0.2765 .... 남자와 여자 만족도에 차이가 없다...


prop.test(c(138,107),c(174,126),alternative = 'less', conf.level = 0.95)
# => 연구가설 : 남자가 여자보다 만족도가 낮다.
# => 귀무가설 : 남자가 여자보다 만족도가 높거나 같다.
# p-value = 0.1382 ... 연구가설 기각. 높다...

prop.test(c(138,107),c(174,126),alternative = 'greater', conf.level = 0.95)
#  p-value = 0.8618

