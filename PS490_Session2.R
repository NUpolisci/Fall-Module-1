# R Session 2 
# October 4th, 2021

#### TABLES ####

# load the gapminder library 


# Save the gapminder as an object 

country_data <- gapminder

# Create a one way table of the 'contintent' variable

table(gapminder$continent)

# Create a twoway table of 'continent' and 'year' 



# Make that a table of proportions and play around with option 1 and 2

prop.table(table(country_data$continent, country_data$year))

# Install and load the library "stargazer"


# Run two regression models

model_simple <- lm(lifeExp ~ gdpPercap, data = country_data)

model_full <- 
  
# Make a nice table with them

stargazer(model_simple, model_full, type = "text")


#### LOADING DATA ####

# Set your working directory 


# Load the readr library


# Upload the drugs_data.csv

#### EXPLORING DATA & VARIABLES ####

# Explore the dataset with str(), names(), head() or view()


# Draw a table of the mjage variable 


# Get summary statistics of the variable

summary(drugs_data$mjage)

# Draw a histogram of this variable


# Draw a boxplot of mjage and health condition

boxplot(drugs_data$mjage ~ drugs_data$health_cond)



#### PRACTICE #### 

# Practice using the `drugs.csv` dataset 

#1. Explore the variable cigtry. 
# Are there any outliers? 
# What is the average age at which people try cigarettes (cigtry)? 

#2. Is there an association between Health Condition (health_cond) and level of education (educ)? 
# Draw a table between these two variables: 
# one table with # of observations
# one with proportions

#3. Is the age at which you tried cigarettes associated with the age at which you tried marijuana? 
# Run a regression predicting mjage with cigtry. Export this with stargazer. 

#4. Use the plot() command to draw a scatter plot between mjage and cigtry