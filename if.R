#테스트 0511
f=c(5,3,2)
name=c("a","b","c")
f2=setNames(f,name)
f2

# 조건문 1. if-else / 2.ifelse()함수 / 3.중괄호 활용
#ifelse(굳이 &&으로 안묶어도 계속 ,엮어도 상관없네 ifelse 백터를 사용할 때 사용함 메서드 처럼 나오나봐)
#두개의 답을 매칭할 수 있음 
obj=1L
class(obj)
#if else 

if(obj=="integer"){
  print("정수")
}else{
  print("정수가 아님")
}

#if else if
obj=as.character(obj);
class(obj)
if(obj=="integer"){
  print("정수")
}else if(obj=="numeric"){
  print("숫자")
}else{
  print("숫자가 아님")
}

# 스코어를 이용한 조건문
score=seq(40,100,10);
score
df=data.frame(score)
df$grade=ifelse(test=df$score >=70, yes="합격", no="불합격")
df

#*********반복문***********
#for
menu=c("짜장면","탕수육", "깐풍기", "짬뽕", "잔가복", "샥스핀")
for(i in menu){
  cat(i, "주문하시겠습니까?\n")
}
#while
i=5;
while(i>0){
  print(i)
  i=i-1;
}

for(i in menu){
  if(i %in% c("짜장면", "짬뽕")){ #==이 안되네, 백터형식이라 매칭이 안되나봐  꼭 %in%으로 사용하자!!  
    next
    cat(i ,"요리부터 주문합시다\n", seq="!")
  }else{
    cat(i,"다음메뉴는 무엇인가요?\n", sep = "?")
  }
}
#왜 백터가 말을 않듣지?? 


# 1.
 # 점수변환과 아이디 부여
# abc 세회사의 고객 만족도 평점이 각각 4.23, 4.89, 3.23일 경우의 데이터 프레임을 만드시오
# 100점 척도로 확산한 새로운 변수를 추가
# id 변수를 추가하고 id, company, 100점 환산 점수 순으로 정리


c(lettes)
assess=data.frame(id=c(seq(1,3,1)),
                  company=c(letters(1:3)),
                  score=c(4.23, 4.89, 3.23)*100
                  )


# 2. 
# 평가 점수 90점 이상은 a, 80-89점은 b, 70 -79점은 c60-69점은 d, 60점 미만은 F를 할당하는 조건문을 이용하여 나만의 함수를 만드시오

grade=function (score){
    if(score>=90){
      cat(score, "점은 A등급")
      # print("A")
    }else if(score>=80){
      cat(score, "점은 B등급")
    }else if(score>=70){
      cat(score, "점은 C등급")
    }else if(score>=60){
      cat(score, "점은 D등급")
    }else{
      cat(score, "점은 F등급")
    }
}
grade(90)

# 3. 축구선수 메시, 음바페, 네이마르는 공격수이고, 모드리치, 부스케츠는 공격수를 for문과  if else를 이용하여 작성 (메시는 공격수입니다. 부스케츠는 미드필더 입니다)

player=c("메시", "음바페", "네이마르", "모드리치", "부스케츠")
for(i in player){
    if(i %in% c("모드리치", "부스케츠")){
      cat(i, "미드필더 입니다\n", sep ="는")
    }else{
      # cat(i, "는 공격수 입니다\n")
      cat(i, " 공격수 입니다\n", sep ="는")
    }
}








