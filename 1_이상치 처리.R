install.packages("readxl")
install.packages("dplyr")
install.packages("descr")
install.packages("ggplot2")
install.packages("stringr")

library(readxl)
library(dplyr)
library(descr)
library(ggplot2)
library(stringr)

original_data <- read.csv("C:/Users/enjin/Desktop/privacy/data_ori.csv")
original_data <- select(original_data, 나이, 시도, 수신총잔액, 담보대출한도, 월소득, 교육정도, 직업종류, 신용등급, 신용대출한도)
str(original_data)

#이상치 확인
freq(original_data$나이) #0~94
freq(original_data$시도) #경기도->경기
original_data$시도 <- str_replace(original_data$시도, "경기도", "경기")
freq(original_data$수신총잔액)
freq(original_data$담보대출한도)
freq(original_data$월소득)
freq(original_data$교육정도)
freq(original_data$직업종류)
freq(original_data$신용등급)
freq(original_data$신용대출한도)

##결측치 확인####################
table(is.na(original_data))

#상하단코딩
#수신총잔액, 담보대출한도, 월소득, 신용대출한도
write.csv(original_data, file="C:/Users/enjin/Desktop/privacy/data_ori22.csv")