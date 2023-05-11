#데이터 전처리에 많이 사용하는 함수수
#dplyr 패키지
# filter(data,논리식)
  #where과 같음, 어떻게 보면 행을 셀렉하는 것과 같음  
# selct()
  # -컬럼을 선택(변수/속성값을 선택한다) SQL과 같음 
# arrange()
  #정렬 desc 하면 내림차순
# distinct()
  #중복제거(unique 값만 가지고 오기)
# mutate(data, new컬럼=계산식)
  #******새로운 컬럼 추가하기******
# group_by()
  #group by와 같음 
# summarise()
  #*****group by와 같음 + having이 추가 된것 *****
# %>% 파이프 연산자가 나오면 디플로이 패키지 설치
  #프로그래밍이라 연결할때 %>%을 사용함 

# 파이프 연산자 실습
install.packages("tidyverse")
library(dplyr)

#파일 가져오는 방법
getwd()
list.files()
ord_info=read.csv("C:/rwork_2023/r_2023/List of Orders.csv", stringsAsFactors = F)
ord_prd=read.csv("C:/rwork_2023/r_2023/Order Details.csv", stringsAsFactors = F)

#select문 사용 
ord_info %>% 
  select(ord_cd, cust_nm)
ord_info %>% select(3,4) %>% head(10)
ord_info %>% select(starts_with("o"))
ord_info %>% select(ends_with("nm"))
ord_info %>%  select(contains("t"))

#distinct 함수 중복제거하고 보여주기
catg_info=ord_prd %>% 
    select(catg_1, catg_2)

catg_info %>% 
    head(10) %>% 
    distinct(catg_1)

catg_info %>% 
    head(10) %>% 
    distinct(catg_1)

# join
a_t=ord_info %>% 
    filter(cust_nm %in% c("Ekta") )
a_t
b_t=ord_prd %>% 
    filter(ord_cd %in%  c("B-25677","B-25703", "B-25601"))
b_t
l_df=left_join(a_t, b_t, "ord_cd")
l_df
r_df=right_join(a_t, b_t, "ord_cd")
r_df
i_df=inner_join(a_t, b_t,"ord_cd")
i_df
f_df=full_join(a_t, b_t, "ord_cd")
f_df


# 그룹핑
ord_prd %>% 
  select(ord_cd, catg_1, ord_amt)

ord_prd %>% 
  select(ord_cd, catg_1, ord_amt) %>% 
  group_by(ord_cd)

# 단일 그룹핑 집계
ord_prd %>% 
  filter(ord_cd %in% c("B-25601", "B-25602")) %>% 
  select(ord_cd, catg_1, ord_amt) %>% 
  group_by(ord_cd) %>% 
  summarise(sum_amt= sum(ord_amt),
            n_prd=n(),
            avg_amt=mean(ord_amt)
            )

# 복합 그룹핑 집계
ord_prd %>% 
  group_by(catg_1, catg_2) %>% 
  summarise(sum_amt= sum(ord_amt),
            n_prd=n(),
            avg_amt=mean(ord_amt)
  )

# 다양한 집계


#테이블의 포맷변환
install.packages("reshape2")
library(reshape2)
library(MASS)
Cars93

# MPG.city에서 Manufacturer에서 타입까지 변수명 값은 평균(mean)
castT=dcast(Cars93, Manufacturer~Type, mean, value.var = "MPG.city")
# NaN을 0으로 채워줌
castT=dcast(Cars93, Manufacturer~Type, mean, value.var = "MPG.city", fill = 0)
# 마지막에 평균값이 나옴
castT=dcast(Cars93, Manufacturer~Type, mean, value.var = "MPG.city", fill = 0, margins = T)
head(castT)

meltT=melt(data=Cars93, id.vars=c("Type"),
          measure.vars=c("MPG.city", "MPG.highway")
           )
meltT

#제조사를 기준으로 최대값-최소값의 차이인 범위 컬럼을 만들고, melt를 써서 정리하시오
new_a=Cars93
new_a$rangeNum=new_a$Max.Price-new_a$Min.Price
range_meltT=melt(data = new_a, id.var=c("Manufacturer"), measure.vars=c("rangeNum")
)
new_a

#제조사를 기준으로 에어백별 가격의 평균데이터
airT=dcast(Cars93, Manufacturer~AirBags, mean, value.var = "Price", fill=0)
airT
