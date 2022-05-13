#--------------------문제1-------------------
library("MASS")
data("Animals")
head("Animals")
#기술 통계량 구하기(brain칼럼 대상)
summary(Animals$brain) #요약 통계량
min(Animals$brain)
max(Animals$brain)
mean(Animals$brain)
median(Animals$brain)
var(Animals$brain)
#descrive()와 freq()를 이용하여
#Animals의 데이터셋 전체를 대상으로 
#기술통계량 구하기
library(prettyR)

freq(Animals)
describe(Animals)


#-------------------문제2-----------------

descriptive <- read.csv("C:/Users/hi/r-work/csv/descriptive.csv")
View(descriptive)
# 조건1) 명목척도 변수인 학교유형, 합격 여부 변수에대해
#빈도분석을 수행하고 
result=table(descriptive$type,descriptive$pass)
result
#결과를 막대그래프와 파이차트로 시각화
#barplot(result)
#pie(result, labels=c("학교유형:1\n 합격 여부:1","학교유형:1\n 합격 여부:2","학교유형:2\n 합격 여부:1","학교유형:2\n 합격 여부:2"))

barplot(table(descriptive$type))
pie(table(descriptive$type))
#조건2) 비율척도 변수인 나이변수에 대해 요약치 (평균, 표준편차)
summary(descriptive$age)
#와 비대칭도(왜도와 첨도) 통계량을 구하고 
skewness(descriptive$age) # 0.3804892   << 왜도: 오른쪽방향으로 조금 치우쳐있다 
kurtosis(descriptive$age) # 1.866623    >> 첨도: 완만하다

#히스토그램을 작성하여 비대칭도 통계량 설명
hist(descriptive$age)


#조건3) 나이 변수에 대한 밀도 분포곡선과 정규분포곡선으로 정규분포 검정
hist(descriptive$age,freq = F)
lines(density(descriptive$age), col='red')
curve(dnorm(x, mean(descriptive$age), sd(descriptive$age)), col="blue", add=T)
      
