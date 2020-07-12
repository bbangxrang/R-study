a<-1
a

b<- a+1
a<-c(2,3,4)
a[1]
a[-1]
a[c(1,3)]

b<-c("가", "나", "다")
d<-c("1", "2", "3")

class(d)

d<-as.numeric(d)

class(d)

as.character(a)

# : ~부터 ~ 까지
1:10

e<-101:200
e[-c(1,9)]
e[-c(3:30)]

paste0("v",1:10)

a[c(T,F,T)]



m<-matrix(c(1,2,3,4,5,6), nrow = 2,byrow = F)
m<-matrix(c(1,2,3,4,5,6), nrow = 2,byrow = T)
m

m2<-data.frame(m)
as.matrix(m2)
m2[1,2]
m2[1,]
m2[,-1]
m2[-1,c(2,3)]
m2$X1


m2
colnames(m2)<-paste0("v",1:3)
m2$v1


cbind(m2,m2)
m3<-rbind(m2,m2,m2)

# m3 첫번째 컬럼 1인 경우(열은 전부)
m3[m3$v1==1,]
m3[m3[,1]==1,]
m3$v4<-1:6
m3$v5<-2:(nrow(m3)+1)
ncol(m3)
m3$v6<-ifelse(m3$v1 %% 2 == 0, "짝수", "홀수")
#스트럭쳐 - 데이터 확인
str(m3)
head(m3) #주로 많이 사용함(크기 커지는 경우 str은 시간이 오래걸림)
tail(m3)
head(m3,7)