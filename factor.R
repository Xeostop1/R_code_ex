# 팩터 라벨링?? 맞나? 카테고리화 라고 생각하면 좋을 듯 
gender=factor(c("MALE","FEMALE", "MALE"))
gender

blood=factor(c("O","AB","A"),
             levels=c("A", "B", "AB", "O"))
blood


# 레벨 순차를 보여줌 
symptoms=factor(c("SEVERE", "MILD", "MODERATE"),
                levels = c("MILD", "MODERATE", "SEVERE"),ordered = T
)
symptoms


# 데이터프레임
# 가장많이 사용하는 방식
# 스프레트시트 나 데이터베이스의 유사한 구조
# 동일한 길이의 벡터나 팩터의 리스트
# 열은(세로)특징=feature(속성), 행은 예시=example(로우 튜플)
# 모든 열은 동일한 높이를 가짐, 열은 항상 이름이 있음 

pt_data=data.frame(subject_name=c("john Doe", "jane", "staeve"), 
                   temperature=c(98.1, 98.6, 101.4), 
                   flu_status=c(F,F,T), 
                   gender=factor(c("MALE", "FEMALE", "MALE")), 
                   blood=factor(c("O", "AB", "A")),
                   symptoms=c("SEVERE","MILD","MODERATE"), 
                   stringsAsFactors=F)
pt_data

# 키값으로 벨류보기
pt_data$subject_name

# 벡터의 이름으로 벨류보기
pt_data[c("temperature", "flu_status")]

#열기준으로 나옴 
pt_data[2:3]
pt_data[1,2]

#벡터로 2차원배열로 보여주기
pt_data[c(1,3),c(2,4)]

#-는 소거
pt_data[-2,c(-1,-3,-5,-6)]

#공란은 all 
pt_data[1,]
pt_data[,1]
pt_data$temp_c=(pt_data$temperature-32)*(5/9)
pt_data[c("temperature", "temp_c")]

# 인덱스를 색인할때랑 다음 데이터셋을 할 때 좋음 
