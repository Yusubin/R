#다중그룹평균검정

two_sample <- read.csv("C:/Users/hi/r-work/csv/two_sample.csv")
View(two_sample)


head(two_sample)
summary(two_sample)


result<-subset(two_sample, !is.na(score),c(method, score))#Na뺌
result
length(result$score)
a<-subset(result, method ==1)
a.score<-a$score

b<-subset(result, method ==2)
b.score<-b$score
b.score
a.score
length(b.score)# 118개
length(a.score)# 109개

#독립적인 a,b집단의 동질성을 비교해보자. 
##둘다 정규분포를 따라야한다. 

var.test(a.score, b.score)
#F = 1.2158, num df = 108, denom df = 117, p-value = 0.3002
#정규분포를 따른다

t.test(a.score, b.score, alternative = "two.side")
#p-value = 0.0411 ...> 대립가설 채택.. 차이가 있다. 


t.test(a.score, b.score, alternative = "greater")
#대립가설 a.score가 b.score보다 크니?
#p-value = 0.9794 ..... .....a가 b보다 작다.
