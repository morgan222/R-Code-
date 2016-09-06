
'plot x and y'
plot(mlb11$at_bats, mlb11$runs)

'find the correlation between x and y'
cor(mlb11$runs, mlb11$at_bats)
'command that you can draw a line'
plot_ss(x = mlb11$at_bats, y = mlb11$runs)

'view least squares in drawn line'
plot_ss(x = mlb11$at_bats, y = mlb11$runs, showSquares = TRUE)

'Linear model regression'
m1 <- lm(runs ~ homeruns, data = mlb11)


'summary(m1)'


plot(mlb11$runs ~ mlb11$at_bats)
abline(m1)

mlb11$runs[mlb11$at_bats == 5579]

#
plot(m1$residuals ~ mlb11$at_bats)
abline(h = 0, lty = 3)  # adds a horizontal dashed line at y = 0

hist(m1$residuals)


qqnorm(m1$residuals)
qqline(m1$residuals)  # adds diagonal line to the normal prob plot
