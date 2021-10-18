#### Session 2 Practice Questions 

#1) Explore the variable cigtry. Are there any outliers? What is the average age at which people try cigarettes (cigtry)? 
  
#2) Is there an association between Health Condition (health_cond) and level of education (educ)? Draw a table between these two variables: 
 # - one table with # of observations
 # - one with proportions

#3) Is the age at which you tried cigarettes associated with the age at which you tried marijuana? Run a regression predicting mjage with cigtry. Export this with stargazer. 

#4) Use the plot() command to draw a scatter plot between mjage and cigtry


#### ANSWERS ####

# 1. Average age at which people try cigarettes

mean(drugs_data$cigtry)

# 2. Association between Health Condition and level of education

table(drugs_data$health_cond, drugs_data$educ)

prop.table(table(drugs_data$health_cond, drugs_data$educ),2)

#3. Regression predicting mjage with cigtry.
  
model_mjage <- lm(mjage ~ cigtry, data = drugs_data)
stargazer(model_mjage, type = "text")

#4.Draw a scatter plot between mjage and cigtry

plot(drugs_data$mjage, drugs_data$cigtry)

