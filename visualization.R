visualization <- function(d) {
  #filter to only the year 2021
  d21 <- filter(d, year == '2021')
  #plot
  p1 <- ggplot(d21) +
          geom_point( aes( cpw, mortality )) +
          ggtitle("2021 CE")
  
  #create rounded down column for box plots
  d21$cpw_floor <- floor(d21$cpw)
  d21$cpw_floor_factor <- as.factor(d21$cpw_floor)
  #plot box plots
  p2 <-  ggplot(d21) +
          geom_boxplot( aes( cpw_floor_factor, mortality, color = cpw_floor_factor)) +
          ggtitle("CPW Rounded Down, year 2021")
  
  p1 + p2
}