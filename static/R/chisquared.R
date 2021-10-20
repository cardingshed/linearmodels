require(ggplot2)

ggplot(data.frame(x = c(0, 20)), aes(x = x)) +
  stat_function(fun = dchisq, args = list(df = 4))

dataf <- data.frame(x=rep(seq(from=0.01, to=12, length.out=50), times=12), degf=rep(1:12, each=50)) 
  
dataf$density <- apply(dataf, 1, function(x) dchisq(x[1],x[2]))

p <- ggplot(dataf,aes(x=x,y=density, group=degf, color=degf)) +
  geom_line() +
  ylim(0,0.75) + theme_minimal() +
  labs(title = "Chi-sq degrees of freedom")
p