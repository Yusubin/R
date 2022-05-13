basketball_train <- read_csv("C:/Users/hi/r-work/csv/basketball_train.csv")
View(basketball_train)

#데이터 요약 ... 기술적 통계
dim(basketball_train)
length(basketball_train) #열의 길의
length(basketball_train$Player)#칼럼의 길이

#데이터 프레임의 전체 구조틀 정리. 
#df행/열의 개수 ... df의 열이름, 타입들, 각 값들의 목록

str(basketball_train)
str(basketball_train$Player)

#df의 값들의 기술적 통계량
#최소, 최대, 평균, 분산, 4분위수
summary(basketball_train)

basketball_train$Player[1:5]


basketball_train$Pos

#pos의 개수 
length(basketball_train$Pos) 

#Pos의 빈도수
result <-table(basketball_train$Pos)
result
#Pos 의 요약
summary(basketball_train$Pos)

#Pos의 값이 sg인것만 찾아보세요.
result2=subset(basketball_train,basketball_train$Pos=='SG')
result2

#4의 결과를 그래프로 그려보세요
barplot(result2$BLK)
barplot(result2$TRB)
barplot(result2$`3P`)

#Pos의 전체 값을 그래프로 
barplot(result)


#blk가 0.3이상인 선수들만 추출

result3=subset(basketball_train,basketball_train$BLK>=0.3)
result3

# 7번의 Pos빈도수를 그래프로 
result4=table(result3$Pos)
barplot(result4)

result5=prop.table(basketball_train$BLK)
round(result5*100,2)


#정렬
result6 = basketball_train$`3P`
result6
summary(result6)
min(result6)
max(result6)
range(result6)
sort(result6)#오름차순
sort(result6, decreasing=T)#내림차순
mean(result6)
median(result6)
var(result6)
quantile(result6, 1/4)
quantile(result6, 3/4)

install.packages("moments")
library(moments)
#정규성 체크
#왜도, 첨도를 이용해 정규분포인지 확인
skewness(basketball_train$'3P')
#치우친 정도 >> 왜도   : 0.06910396
#중앙에 치우친 종모양 (0)
#왼쪽에 치우진 종모양 (>0)
#오른쪽에 치우진 종모양 (<0)


kurtosis(basketball_train$`3P`)
#첨도(뾰족한 청도) ...  흩어져 있는 정도   :  1.986352
#적절하게 완만하다 (3, 0)
#뾰족한 경사(>3)
#너무 완만하다 (<3)


hist(basketball_train$`3P`)


#빈도와 비율
install.packages("prettyR")
library(prettyR)

freq(basketball_train$Pos)
