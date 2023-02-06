Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

df <- data.frame(Frequency, BP, First, Second, FinalDecision)
df

meanFD <- sum(df$FinalDecision)/nrow(df)
meanFD

df1 <- df
df1$First <- ifelse(df$First == 0, "good", "bad")
df1$Second <- ifelse(df$Second == 0, "good", "bad")
df1$FinalDecision <- ifelse(df$FinalDecision == 0, "low", "high")
df1

boxplot(BP~FinalDecision, data = df)
hist(BP)