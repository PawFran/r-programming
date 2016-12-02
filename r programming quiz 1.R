dir()
data=read.csv("hw1_data.csv")
head(data)  #jak uzyskaæ same nag³ówki ? OK
colnames(data)
names(data)
?head
head(data, n=2)
data[1:2,]
data[c(1,3),]
data  #jak policzyæ wiersze ? OK
c=data$Ozone
length(c)
nrow(data)
tail(data,n=2)

data[47,]
x=data$Ozone
missing=is.na(x)
x[missing]
length(x[missing])

?mean
mean(x[!missing])



#data[data[,1] >31] - Ÿle!
y=subset(data, Ozone>31 & Temp>90)
y
mean(y$Solar.R)
z=subset(data, Month==6)
z
mean(z$Temp)

w=subset(data, Month==5)
w
max(w$Ozone, na.rm=T)

p=data[!is.na(data$Ozone) & !is.na(data$Temp) & !is.na(data$Solar.R), ]
p
nrow(p)
mean(p[data$Ozone>31 & data$Temp>90, ]$Solar.R)#Ÿle

#dobrze
mean(data[complete.cases(data$Ozone, data$Temp, data$Solar.R) & data$Ozone>31 & data$Temp>90, "Solar.R"])
mean(data[complete.cases(data$Temp) & data$Month==6, "Temp"])
max(data[data$Month==5, "Ozone"],na.rm=T)
