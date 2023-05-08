print("hello word");
#  벡터가 가장 많이 사용됨
# 실수, 정수 문자열, 논리값 다 넣을 수 있음
# 인덱스가 존재함 특이하게 1부터 시작 왜지?? 

x=c(1,22.5,3.2, "유형", TRUE);
y=c("KTx",TRUE, FALSE, TRUE);
#  인덱싱 끼리는 산술연산 가능 
print(x[1+2]);
# 파이썬 처럼 : 으로 일부 데이터만 가지고 올 수 있음 
print(x[1:3]);
print(y);

fruit=c(5,3,2);
names(fruit)=c(
  "apple", "orange", "peach"
);
fruit[c("apple", "peach")];
fruit=setnames(c(5,3,2), c("apple", "orange", "peach"))
fruit

# 조이름/ 조장/ 조원1/ 조원2/ 조원 3/ 조원4

aTeam=setNames(c("aTeam","서하나", "서지연", "강성진", "이아름"),c("조이름", "조장","조원1", "조원2","조원3"))
aTeam
print(aTeam);


