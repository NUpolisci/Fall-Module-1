# R Session 1 
# September 27th, 2021

mean(c(1,2,3,4))



#### OBJECTS AND VECTORS ####

# Create an object called "big number" 

bignumber <- 654321

mean <- c(1,2,3,4,65432)



# Create an object with the year and check it's class

year <- 2021 

class(year)



# Repeat for course name 

course <- "PS490"

class(course)

# Create a vector combining many course names 

courses <- c("PS 403", "PS 405", "PS 406")



# Create a vector combining 3 grades 

grades <- c(88, 72, 90)




# Create the same vector but with quotations around the grades


grades_string <- c("88", "72", "90")

# Find a descriptive statistic for the object 'grades'

mean(grades)
sd(grades)
summary(grades)

# Creating a dataset

dataset <- data.frame(courses = c("PS 403", "PS 405", "PS 406"), 
                      avg_grade = c(88, 95, 82))

#### INDEXING ####

# Call the first variable within the dataset (many ways)

dataset[2]

dataset$courses

# Get the grade for a particular course 

dataset$avg_grade[dataset$courses == "PS 403"]

row.names(test_data)


#### INDEXING PRACTICE ####

# load the library `gampinder` (install it in the console first)

library(gapminder)


# Create object with the gapminder dataset 

test_data <- gapminder 

# Explore the dataset with `head`, `names`, `View`


# 1. Index the "country" variable. 

# 2. Look for the gdpPercap for Mexico. 

mexico_gdp <- test_data$country=="Mexico"


# 3. Look for the gdpPercap for Mexico in 2007

# BONUS. Get the mean of the gdpPercap for the all countries in 2007


# Indexing regression components: create object

reg1 <- lm(lifeExp ~ gdpPercap, data= test_data)

# Explore the components within reg1

#### TABLES ####

# Create a one way table of the 'contintent' variable

table(gapminder$continent)

# Create a twoway table of 'continent' and 'year' 


# Make that a table of proportions and play around with option 1 and 2

prop.table(table(test_data$continent, test_data$year))


#### PRACTICE #### 

# Practice using the `drugs.csv` dataset 

#1. Explore the dataset using `names`, `head`, or `View`. What is the dataset about? What are the rows/columns?
  
#2. What is the average age at which people try cigarettes (cigtry)? 
  
#3. Is there an association between Health Condition (health_cond) and level of education (educ)? Draw a table between these two variables. 

