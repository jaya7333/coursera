####################################################
####################################################3
x<-0:6
x
class(x)

as.numeric(x)

as.logical(x)

as.character(x)

#######################################################
##############################################3

x<-list(1,"a",T,1+3i)
x
print(x[3])

#############################33
#Matrix
a<-matrix(data = 1:9,nrow = 3,ncol = 3,byrow = T)
a
dim(a)
attributes(a)
###
a<-1:12
dim(a)<-c(2,6)
a
class(a)
####

x<-0:6
y<-10:16

cbind(x,y)
rbind(x,y)

#########################################333
##Factor
x<-factor(c("yes","no","yes","yes","no","no","yes"))
x
table(x)
unclass(x)

#change the baseline

x<-factor(c("yes","no","yes","yes","no","no","yes"),levels = 
            c("yes","no"))
x
table(x)
unclass(x)

######################3
is.na(x)
is.nan(x) #mathematical operation are not there

################
x<- c(1,2,3,NaN,NA,3)
x
is.na(x)
is.nan(x)

###########################################################333
###########################################################3
row.names()
read.csv()
read.table()
data.matrix()
#########33
#########3
x<-data.frame(foo=1:4,bar=c(T,T,T,F))
x
nrow(x)
ncol(x)
data.matrix(x)

##########33
##########33
#names attributes

x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

###
name to matrics
x<-matrix(1:4,nrow = 2,ncol = 2)
x
dimnames(x)<-list(c("a","b"),c("c","d"))
dimnames(x)

####33
##########3
#Reading data
read.csv()
read.table()
readLines()
dget(first_1.R)

###############333
#############3
#x <- file("foo.txt")
ccc<-readLines(x)
head(ccc)


############################################33333
x<- c("a","a","c","d","e","f")
x
u<- (x>"c")
u

################3
x<-list(foo=1:10,bar=0.6)
x
x[1]
x$foo
x[c(1,3)]
x[1]
x[x>"b"]


x<-list(a=list(10,12,14),b=c(3.14,2.01))
x[c(1,3)]
x[[c(1,3)]]

x<-matrix(1:6,2,3)
x
x[,2,drop=F]
x[1,1,drop=F]


##partial matching
x<-list(abcdfg=1:5)
x$a
x[["a",exact=F]]


##########
#Removing NA values

x<-c(1,2, NaN, 4, NA, 6)
bbb<-is.na(x)
x[!bbb]

############33
x<- c(1,2,NA,4,NA,5)
y<-c("a","M",NA,"d",NA,"E")
good <-complete.cases(x,y)
good
x[good]
y[good]

x<-1:4;y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y


#############################

x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y
x/y
x %*% y

x<-c(4,"a",T)
class(x)

X<-c(1,2,3)
Y<-c(3,2,10)
rbind(X,Y)

x<-list(2,"a","b",T)
x[2]
class(x[2])
x[[2]]
class(x[[2]])


x<-1:4
y<-2
x+y

###########33
###Exercise 10
x<-c(3,5,1,10,12,6)
x[x%in%1:5]<-0
x

###
getwd()
dir()
xxx<-read.csv("hw1_data.csv")
colnames(xxx)
xxx[1:2,]
dim(xxx)
xxx[151:153,]
xxx$Ozone[47]

bbb<-xxx$Ozone
xx<-is.na(bbb)
yy<-bbb[!xx]
mean(yy)

xx<-xxx$Month==5
cdf<-xxx$Ozone[xx]
cc<- is.na(cdf)
cdf<-cdf[!cc]
max(cdf)

aa=xxx$Ozone>31 & xxx$Temp>90
aa
zzz<-xxx$Solar.R[aa]
NANA<-is.na(zzz)
jjj<-zzz[!NANA]
mean(jjj)

