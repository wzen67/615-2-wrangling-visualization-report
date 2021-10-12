#library(dplyr)

#read tables into tibbles
fertility <- read_csv("children_per_woman_total_fertility.csv")
mortality <- read_csv("child_mortality_0_5_year_olds_dying_per_1000_born.csv")

#tidy data
fertility <- fertility %>% 
  pivot_longer(c(`1799`:`2099`), names_to = "year", values_to = "cpw")
mortality <- mortality %>% 
  pivot_longer(c(`1799`:`2099`), names_to = "year", values_to = "mortality")
#inner join tibbles
data <- inner_join(fertility, mortality)