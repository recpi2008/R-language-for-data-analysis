getwd()
t_1<- 1 # comment
t_1

# rm(t_1)
5+6
x <- 100:1 #последовательность
x
x[1:8] #срез последовательности по индексу

sqrt(25)

log2(8)

help(log)
? log
log(27, base=3)

#степень
10^3
10**3
exp(1) #экспонента
log(exp(1)) #обратная функция
factorial(3)

#работа c функциями
sqrt(log2(16))

# лоступные пакеты
search()
# install.packages("имя пакета")
# library(имя пакета)

#Part_2
# вектор
a<-c(0,1,2,3)
a
a[2]
b=rep(2,time=3)
b
b.1<-rep(2,4)
b.1

a+b.1
# создадим последовательность
seq(1,8,by=2)
seq(2,10,2)
?seq
seq(1,10,length.out=5)

s<-1:10
s
class(s) #определяет тип

set.seed(1)
rnorm(n=50,mean = 0,sd = 1) # нормальное распределение
plot(density(x))

rpois(100,10) #распределение Пуасонна (n=100 кол-вщ испытаний, l=10 средняя интенсивность)

rbinom(100,10,0.5) # биноминальное распределение
set.seed(1)
rbinom(100,10,0.5)

rep(c(0,2),time=2) # c - создает вектор
rep(c(0,2), each=2)

# текстовые вектора
letters
class(LETTERS)

paste(letters,sep="_",seq(1,26))
paste0(letters,sep="_",seq(1,26))

?ISOdate
format(ISOdate(2019,9,1:30),"%A")
format(ISOdate(2019,9,1:30),"%B")

paste(format(ISOdate(2019,9,1:30),"%a"),set="_",format(ISOdate(2019,9,1:30),"%b"))

# прочие функции
help(sort)
data()
data(package= .packages(all.available = TRUE))

#install.packages("cluster")
library(cluster)

animals
is.na(animals)
sum(is.na(animals))

head(animals, 3)

animals$gro # $ вытаскиваем необходимый нам столбец
animals$gro[!is.na(animals$gro)] # ! не берем эти значения

animals$gro[!is.na(animals[,5])] # берем столбец по номеру

?iris
head(iris,10)
dim(iris) # размер датасета
str(iris)

traindat<-iris[1:5,c(2,3,5)]
traindat

traindat[traindat$Sepal.Width>3,] # фильтруем
traindat[traindat$Sepal.Width>3 & traindat$Petal.Length>1.4,]

# стротм датасет
weight<-c(78,56,67,48,69,90)
height<-c(170,160,165,159,170,185)
sex<-c(rep("F",3),rep("M",3))
sex
class(sex)
df.1<-data.frame(weight,height,sex,stringsAsFactors = F)

df.1
class(df.1)
str(df.1)

df.2<-data.frame(weight,height,sex,stringsAsFactors = T)
df.2
class(df.2)
str(df.2)

# строим матрицу
m<-1:30
m
z<-c(10,3)
z
dim(m)
dim(m)<-z
m
class((m))

# 2 способ
y<-1:50
y
mt<-matrix(y,10,5)
mt

imena<-LETTERS[1:10]
imena

cbind(imena,mt) # возникла проблема, все в кавычках
class(mt)

?rownames
rownames(mt)
colnames(mt)

rownames(mt, do.NULL = T,prefix = "row")
rownames(mt)<-imena
mt

colnames(mt, do.NULL = T,prefix = "col")
colnames(mt)<-paste('day',1:5)
mt
