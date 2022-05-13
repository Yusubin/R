twomethod <- read.csv("C:/Users/hi/r-work/csv/twomethod.csv")
View(twomethod)
head(twomethod)

#na처리
result <-subset(twomethod, !is.na(score), c(method, score))
result

#그룹나누기 a
a<-subset(result, method==1)
a
a1<-a$score
a1
hist(a1)
length(a1) #22


#그룹나누기 b
b<-subset(result, method==2)
b
b1<-b$score
b1
hist(b1)
length(b1)#35


var.test(a1,b1)
#F = 1.0648, num df = 21, denom df = 34, p-value =0.8494

t.test(a1, b1)
# p-value = 1.303e-06 ... 소숫자리 6번째 자리수..
#0.05보다 작으므로 귀무가설기각. 영가설 채택.
# a,b는 둘이 차이가 있다. 

t.test(a1, b1, alternative = "greater")
#p-value = 1
#p-value가 크므로 a1이 b1보다 작다.
