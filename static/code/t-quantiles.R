library(ggplot2)

tquant <- qt(0.975,1:30)
tdata <- data.frame(tquant,degfree=1:30)
q <- ggplot(tdata,aes(x=degfree, y=tquant)) +
  geom_line() +
  geom_hline(yintercept = qnorm(0.975),colour='green') +
  labs(title="0.975 quantile of t-distribution, N(0,1)=1.96") +
  xlab("degrees of freedom") + ylab("97.5% of probability mass before value")
q
