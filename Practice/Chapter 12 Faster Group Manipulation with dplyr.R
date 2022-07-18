library(magrittr)
data(diamonds, package = 'ggplot2')
dim(head(diamonds, n = 4))

class(diamonds)
head(diamonds)

library(dplyr)
head(diamonds)

diamonds

select(diamonds, carat, price)

diamonds %>%select(carat,price)

diamonds %>% select(c(carat,price))

theCols <- c('carat','price')
diamonds %>% select_(.dots = theCols)

diamonds %>% select(one_of('carat', 'price'))
diamonds %>%select(one_of(theCols))

#traditional R square bracket syntax
diamonds[,c('carat','price')]

#selecting columns with column number
select(diamonds, 1,7)
diamonds %>% select(1,7)

#searching for a partial match.  Uses dplyr functions "starts_with, ends_with and contains

diamonds %>% select(starts_with('c'))
select(diamonds,starts_with(('c')))

diamonds %>% select(ends_with('e'))

diamonds %>% select(contains('l'))

#
diamonds %>% select(matches('r.+t'))

#filter
diamonds %>% filter(cut == 'Ideal')
