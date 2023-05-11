#데이터 프레임 저장할때 text(read.tabel 구분자 "" ), csv(read.csv, 구분자가 없음)로 정할 수 있음
# 둘다 불어 올때 상대경로 정확한게 기재
# 내부 임포트 인스톨 하고 라이브러리(mass)/ data(geyser) 이렇게 써줘야 함 
# install.packages("MASS") : 인스톨 할때 str로 써야줘야 함
#임포트 할때는 library(MASS) "" 없이 
# data(geyser)는 라이브러리 마다 가지고 있는 샘플 데이터 
# 파일로 만들때는 
# write.table(fiathful, file="faithfaul.csv")
#  헤더를 변수명으로 가져오는지 

install.packages("MASS")
library(MASS)
data("geyser")
head(geyser)
tail(geyser)

# Barchart(막대그래프)
beer=c(3,4,1,1,3,4,3,3,1,3,2,1,2,1,2,3,2,3,1,1,1,1,4,3,1)

# 프리컨시가 뭐더라?? 빈도
table(beer)
barplot(table(beer))
# 상대도수
barplot(table(beer)/length(beer),
        # 그래프 컬러세팅 rgb도 가능함
        col=c("lightblue", "mistyrose", "lightcyan", "cornsilk"),
        #막대라벨
        names.arg=c("Domesitn\n can", 
                    "Domesitic\n bottle",
                    "Microbrew\n",
                    "Import\n"
        ),
        # y라벨 변경 
        ylab="Relative frequency",
        main="Beer Preference Survey")







