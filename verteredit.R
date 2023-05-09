# 백터 or 팩터 Edit

s=letters[1:5]
print(x=s)
s[6]="f"
print(x=s)
# 빈 값은 na(결측치)로 처리
s[10]="j"
print(x=s)
#소거는 -
s[-10]
print(x=s)
# 빼준뒤에는 꼭 다시 변수에 넣어줘야 한다!!!!! 
s=s[-10]
print(x=s)
s[1]="A"
