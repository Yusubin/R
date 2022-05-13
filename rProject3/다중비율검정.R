two_sample <- read.csv("C:/Users/hi/r-work/csv/two_sample.csv")
View(two_sample)

length(two_sample)

print(two_sample$score)

freq(two_sample$gender)
freq(two_sample$survey)
freq(two_sample$method)
freq(two_sample$score)


#그룹별 빈도분석표
table(two_sample$method, two_sample$survey, useNA = "ifany")
#어느 그룹이 만족도가 더 높았는가 ... ?

prop.test(c(110,135),c(150,150),alternative = 'greater', conf.level = 0.95)
#   prop 1    prop 2 
#0.7333333 0.9000000 
# p-value = 0.9998
#----------------------------
#prop1 =presentation edu
#prop2 = conding edu
# => 연구가설 : pt교육이 코딩교육보다 만족도가 높다
# => 귀무가설 : pt교육이 코딩교육보다 만족도가 낮거나 같다.
#p-value가 0.9이므로 연구가설 기각... 귀무가설 채택


prop.test(c(110,135),c(150,150),alternative = 'less', conf.level = 0.95)
#p-value = 0.0001711 ....
# => 연구가설 : pt교육이 코딩교육보다 만족도가 낮다.
# => 귀무가설 : pt교육이 코딩교육보다 만족도가 높다 
#p-value가 0.00..이므로 연구가설 채택


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

prop.test(c(138,107),c(174,126),alternative = 'less', conf.level = 0.95)
