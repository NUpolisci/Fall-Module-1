

#### Session 1 Practice Questions ####

#1. Index the "country" variable. (Is this helpful?)

#2. Look for the gdpPercap for Mexico. (Is this helpful?)

#3. Look for the gdpPercap for Mexico in 2007

#BONUS. Get the mean of the gdpPercap for the all countries in 2007

#### ANSWERS ####

# 1. Index the "country" variable
  
test_data$country 
# alt: test_data["country"]


# 2. Look for the gdpPercap for Mexico

test_data$gdpPercap[test_data$country=="Mexico"]

# 3. Look for the gdpPercap for Mexico in 2007

test_data$gdpPercap[test_data$country=="Mexico" & test_data$year==2007]

# 4. mean of the gdpPercap for the all countries in 2007

mean(test_data$gdpPercap[test_data$year==2007])
