num=seq(from=1, to=10, by=2)
chr=letters[1:5]
df1=data.frame(num,chr)
df1
#$로 키값 바로 생성해서 벨류 넣기 
df1$int=11:15
str(object = df1)
# 변수명 없이 벨류만 넣기 
# df1=bind(df1, rep(x=T,time=5))
df1=cbind(df1, log=rep(x=T, time=5))

#행추가 튜플

df3=data.frame(num=6,chr="f",int=16, log=T)
df1=rbind(df1, df3)
df1
df1$log=NULL
df1$int[1]=20
str(df1)
