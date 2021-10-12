# Set your working directory 

setwd("C:/Users/pilim/Dropbox/Northwestern/TA/R workshop/R workshop session 2")

# Load data for demo

library(readr)
drugs_data <- read_csv("drugs.csv")


#### Plots in Base R ####

# Histogram of mjage

hist(drugs_data$mjage)


# Boxplot 

boxplot(drugs_data$mjage[drugs_data$mjage<70] ~ drugs_data$health_cond[drugs_data$mjage<70])


# Bar graph 

health_cond_freq <- table(drugs_data$health_cond)

barplot(health_cond_freq, horiz = TRUE, main = "Health condition")

 

# Scatter plot 

plot(drugs_data$mjage ~ drugs_data$cigtry)


#### Distributions in Base R ####

# Normal distribution: Cdf 

pnorm(1.96, mean = 0, sd = 1)

# Normal distribution: inverse cd
# Binomial distribution: pmf

# Binomial distribution: cdf

# Binoial distribution: inverse cdf


#### Distributions in 'Distributions3' ####

# Load library (insall first, in console)
library(distributions3)

# Normal distribution: define first 

our_normal <- Normal(mu = 0, sigma = 1)

# Normal distribution: cdf
cdf(our_normal, 1.96)

# Normal distribution: inverse cdf
quantile(our_normal, 0.975)

# Binomial distribution: define first
fair_coin <- Binomial(size = 4, p=0.5)

# Binomial distribution: cdf


# Binomial distribution: pmf

#### PRACTICE ####

#1.From last class: Explore the variable cigtry. Are there any outliers? Plot this variable. 

#2. Draw a boxplot between education level (`educ`) and age at which they tried smokeless cigarettes (`smklsstry`). 
# Does this look strange? Why? 
  
#3. Suppose the height of males at a certain school is normally distributed with a mean of 70 and a standard deviation of 2 inches. 
# Approximately what percentage of males at this school are taller than 74 inches?

#4. Bob makes 60% of his free-throw attempts. If he shoots 12 free throws, what is the probability that he makes exactly 10?
  
#5. Suppose the height of plants in a certain region is normally distributed with a mean of 13 inches and a standard deviation of 2 inches. 
# Approximately what percentage of plants in this region are between 10 and 14 inches tall?






