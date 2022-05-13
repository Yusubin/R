## 5명의 정보를 데이터프레임에 넣어, 
df <- list(name = c("kim", "you", "hwang","kwan" ,"woeo"),
             age= c(23, 28, 24, 28, 22),
             computer = c(61, 70, 59, 71, 71),
             english = c(63, 68, 64, 68, 72))



df$name <- factor(df$name)
df$age <- factor(df$age)
df$computer <- factor(df$computer)
df$english<- factor(df$english)
## 그래프로 그려주세요.

barplot(df$computer, main = "computer score", col = rainbow(20)[1:5])
## 이름, 나이, 컴퓨터점수, 영어점수
## df에서 추출(각 항목을 추출하여 프린트)
## 이름에 해당하는 나이를 그래프로 그려보세요.
## df에서 추출한 나이의 평균을 구해보세요.
## df에서 추출한 영어점수의 최고 점수를 구해보세요.
## df의 3번째 행, 3번째 열의 값을 프린트
## df의 1~3행, (2, 4)열 값들을 프린트
## 영어점수가 평균보다  높은 사람들만 새로운 df_new로 저장
## ————————————————————————
## 컴퓨터점수와 영어점수를 합해서 total컬럼 생성
## total이 150점 이상이면 우수, 100점 이상이면 보통, 아니면 미달의
## 값이 들어가는 result컬럼을 추가.
## 최종 df의 내용과 행과 열의 개수 프린트