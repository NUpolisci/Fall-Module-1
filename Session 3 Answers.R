#### Session 3 Practice Questions ####


#1. From last class: Explore the variable cigtry. Are there any outliers? Plot this variable. 
  
#2. Draw a boxplot between education level (`educ`) and age at which they tried smokeless cigarettes (`smklsstry`). Does this look strange? Why? 
    
#3. Suppose the height of males at a certain school is normally distributed with a mean of 70 inches and a standard deviation of 2 inches. Approximately what percentage of males at this school are taller than 74 inches?
    
#4. Bob makes 60% of his free-throw attempts. If he shoots 12 free throws, what is the probability that he makes exactly 10?
    
#5. Suppose the height of plants in a certain region is normally distributed with a mean of 13 inches  and a standard deviation of ?? 2 inches. Approximately what percentage of plants in this region are between 10 and 14 inches tall?

#### ANSWERS ####
  
#1. Plot cigtry 
  
hist(drugs_data$cigtry)

#2. Boxplot
  
boxplot(drugs_data$smklsstry ~ drugs_data$educ)
# Or: boxplot(drugs_data$educ, drugs_data$smklsstry)

#Note: smklsstry has several observations coded as 998
# high numbers such as this one usually indicade Don't Know/ No Answer and should be recoded as NAs.]  


#3. Heights 

pnorm(74, mean=70, sd=2, lower.tail=FALSE)
# OR  1- pnorm(74, mean=70, sd=2)

#4. Throws 

dbinom(x = 10, size = 12, p = 0.6)

#5. Plants 

pnorm(14, mean=13, sd=2) - pnorm(10, mean=13, sd=2)

