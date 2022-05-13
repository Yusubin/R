
two_sample <- read.csv("C:/Users/hi/r-work/csv/three_sample.csv")
View(two_sample)
result<-subset(two_sample, !is.na(score),c(method, score))#Na뺌
result

plot(result$score)
boxplot(result$score)
#아웃라이어 빼버리기


mean(result$score)
length(result$score)#91
result2<-subset(result, result$score<14.45)
result2
length(result2$score)

boxplot(result2$score)

table(result2$method)

tapply(result2$score,result2$method,mean)
#그룹에 맞게끔 함수 적용
#1        2        3 
#4.187097 6.800000 5.610000 



#동질성 검정(그룹이 2개 이상할때 하는 검정, 각 그룹의 분포가 정규분포를 따르는지 검정함)
#그룹이 2개일때>var.test 3개일때 달라짐...>bartlett.test
bartlett.test(score~method , data=result2)
#Bartlett's K-squared = 3.3157, df = 2, p-value = 0.1905
#세개의 독립적인 집단의 분산이 동질하다. >> 정규분포를 따른다. 

result2$method<-factor(result2$method)

result3<-aov(score~method, data=result2)
# Terms:
  # method Residuals
# Sum of Squares   99.36805  96.90184
# Deg. of Freedom         2        85

# Residual standard error: 1.383306
# Estimated effects may be unbalanced


names(result3)
summary(result3)
#p-value: 9.39e-14 ===>세집단간 차이가 있다. 


TukeyHSD(result3) 
plot(TukeyHSD(result3) ) 
