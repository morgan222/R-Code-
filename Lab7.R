plot(jitter(evals$score) ~ evals$bty_avg)

m_bty = lm(score ~ bty_avg, evals)
summary(m_bty)
plot(m_bty$residuals)


plot(evals$bty_avg ~ evals$bty_f1lower)
cor(evals$bty_avg, evals$bty_f1lower)
plot(evals[,13:19])

m_bty_gen <- lm(score ~ bty_avg + gender, data = evals)
summary(m_bty_gen)


multiLines(m_bty_gen)

m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval 
             + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m_full)

m1 <- lm(score ~ ethnicity + gender + language + age + cls_perc_eval 
         + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m1)$adj.r.squared

m2 = lm(score ~ rank + gender + language + age + cls_perc_eval + 
          cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m2)$adj.r.squared