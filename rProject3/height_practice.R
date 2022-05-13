korea.woman.height <-148.5
student_height <- read.csv("C:/Users/hi/r-work/csv/student_height.csv")
View(student_height)

height<-student_height$height
print(height)
mean(height, na.rm = TRUE) #149.4
height2<-na.omit(height)
height2
shapiro.test(height2) 
#W = 0.88711, p-value = 0.0001853
#..... 정규분포가 아니다

hist(height2)
wilcox.test(height2, mu=korea.woman.height, conf.level = 0.95)
#V = 826, p-value = 0.067
#0.05보다 커서... 귀무가설 기각 불가. =>별 차이가 없다.

wilcox.test(height2,alternative ="greater",mu=korea.woman.height)
#V = 826, p-value = 0.0335
#모집단의 평균보다 A중의 키가 더 크다. 

