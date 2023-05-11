# 원형 그래프
beer=c(3,4,1,1,3,4,3,3,1,3,2,1,2,1,2,3,2,3,1,1,1,1,4,3,1)
# 카운트하여 원형에 넣기
beer.counts=table(beer)
pie(beer.counts)
# 근데 값이 똑같은데????? 
pie(table(beer))


# 원형그래프에 변수명 추가하기 pie()
names(beer.counts)=c("domestic\n", "domestic\n bottle", "Microbrew", "Import")
pie(beer.counts)

#나뭇잎 그래프(Stem-and leaf plot) :stem()
scores=c(2,3,16,23,14,12,4,13,2,0,0,0,6,28,31,14,4,8,2,5);
stem(scores)

#히스토그램:hist()
# 난수 추출 1000개
x=rnorm(1000)
hist(x, xlab="data")

# 0,1의 밀도함수 비교 
hist(x, probability = T, xlab="data", col="gray", border = "white")
z=seq(from=-3, to=3, by=0.01)
# 정규확률분포에서 밀도의 y값 dnorm
lines(z, dnorm(z), col=2)


# 박스플롯: boxplot()
growth=c(75,72,73,61,67,64,62,63)
suger=c("C","C","C","F","F","F","S","S")
fly=data.frame(growth=growth, suger=suger)
boxplot(fly$growth)


#산점도 scatterplot(스케터플롯):plot
# 이렇게 않하고 그냥 cars만 해도 된다
# data("cars")
# head(cars)/ tail(cars)/ str(cars)

cars
str(cars)
plot(cars$speed, cars$dist,
     col="blue",
     pch="★",
     ylab = "Distance taken to stop",
     xlab = "Speed",
     # 벡터형태로 최소값과 최대값을 적어준다 
     ylime=c(-10, 140)
     )

# 산점도 다른버전 :with() 위에게 더 쉬운데??? 
with(cars, plot(speed, dist,
                col="blue",
                pch=4,
                ylab="Distance taken to stop",
                xlab="Speed",
                ylim=c(-20,140)
            
)
)

