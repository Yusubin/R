##연속형 데이터 수치 비교 방법
## 비율척도 (나이, 몸무게, 키)

out.com.time <-5.2
one_sample <- read.csv("C:/Users/hi/r-work/csv/one_sample.csv")
View(one_sample)


time<-one_sample$time
print(time)
mean(time, na.rm = TRUE)

time2<-na.omit(time)
time2

shapiro.test(time2)
#data:  time2
#W = 0.99137, p-value = 0.7242
# p-value가 0.05이상 나오면 정규분포임
#정규분포를 따른다(평균!!! ->모수검정 (t-test))

## 2. t-test 검증
t.test(time2, mu=5.2, alternative = "two.side", conf.level = 0.95)
#대립가설(연구가설)0
#    :A회사의 노트북 사용시간과 우리나라 한국의 노트북사용시간은 차이가 있다
#
#귀무가설(영가설):
#   :A회사의 노트북 사용시간과 우리나라 한국의 노트북사용시간은 차이가 없다.

#5.377613 5.736148 => 구간 추정...
#5.556881 점추정...

# t = 3.9461, df = 108, p-value = 0.0001417
#=>귀무가설 기각.... 연구가설 채택
#=> A회사의 노트북 사용시간과 우리나라 한국의 노트북사용시간은 차이가 있다


##한국의 노트북 평균 사용시간보다 A회사의 노트북 사용시간이 더 큰가?
t.test(time2, mu=5.2, alternative = "greater", conf.level = 0.95)

#t = 3.9461, df = 108, p-value = 7.083e-05 .... 0.05보다 훨씬 낮음
#alternative hypothesis: true mean is greater than 5.2
#95 percent confidence interval:
#  5.406833      Inf
#sample estimates:
#  mean of x 
#5.556881 
#====> 대립가설 채택 귀무가설 기각. 
#한국의 노트북 평균 사용시간보다 A회사의 노트북 사용시간이 더 크다.