# 벡터와 함수 사용 
# 기존 벡터에 새로운 값 추가 어팬드
x=1:10
append(x, 99, after = 3)
append(x, -99, after = 0)

# seq()함수를 이용해서 수열 생성 벡터 생성
y=seq(from=0, to=1, by=0.1)
y
c=seq(from=0, to=1, length=2)
c
z=1:10
z
z=5:-5
z
y=req(1,10)
y

# rm() 함수는 위에 모두 remove됨 
rm()

# 논리값 벡터 사용(0,1)
x=1:5; y=rep(5,5)
i=x<5

i
sum(i)

#배열 또는 행렬을 생겅하느ㄴ가장 기본적인 방법 
# 리스트: 성분의 타입이 동일하지 않는 백터는 리스트를 이용해서 생성 
# 객체의 자료 구조를 간단히 보여주는 str(리스트명)
# $을 사용하면 객체의 값을 꺼낼 수 있음

b=list("test", 4, "a");
b[1]
str(b)
# z라는 9~12까지 벡터를 만들어서 x,y아래에 붙이세요
x=1:4;
y=5:8;
z=9:12;
z[1]
cbind(x,y)
new=rbind(x,y,z) 
# 여기는 행렬로 들어간것!! 
new
new[1,3]
new[2,2]
new[3,1]

hong=list(kor.name="홍길동",
          eng.name="gil-dong",
          age=43,
          married=T,
          no.chiled=2,
          child.age=c(13,10) # 벡터값도 삽입
          );
hong

hong$married
hong["age"]
hong["child.age"]

# 데이터프레임: 같은 길이의 벡터들을 성분으로 갖는 리스트 
# 모든 열은 동일한 높이를 가져야 하며, 열은 항상이름이 존재 
# data.frame() sql을 여기다 넣다니 우왝이다 진짜로 
d=c(100,75,80);
e=c("a302043","a302044","a302045");
f=data.frame(score=d, id=e);
f
f$id

# 매트릭스2d행열
# 어레이 3D 행열
# 데이터프레임 랭스가 같은 2d 배열
# 리스트 객체 


