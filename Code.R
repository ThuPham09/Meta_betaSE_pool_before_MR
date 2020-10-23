install.packages("metafor") 
library(metafor) 

beta <- c(0.238, 0.322) 
se <- c(0.028, 0.038) 
stage <- c("s1", "s2") 
chung <- data.frame(stage, beta, se) 
res <- rma(beta, se, data=chung, method = "DL") 

#estimate      se    zval    pval   ci.lb   ci.ub  
# 0.3473  0.1270  2.7356  0.0062  0.0985  0.5962  

p= 0.0062/509174 

 

beta2 <- c(0.238, 0.199) 
se2 <- c(0.024, 0.032) 
stage2 <- c("s1", "s2") 
chung2 <- data.frame(stage2, beta2, se2) 
re2 <- rma(beta2, se2, data=chung, method = "DL") 

#estimate      se    zval    pval    ci.lb   ci.ub  
#0.2213  0.1171  1.8896  0.0588  -0.0082  0.4508  

p2= 0.0588/509174 
