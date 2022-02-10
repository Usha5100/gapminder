#source- R programming 101

library(gapminder)
data("gapminder")
summary(gapminder)
mean(gapminder$lifeExp)
mean(gapminder$gdpPercap)
attach(gapminder)
median(pop)
hist(lifeExp)
hist(log(pop))
boxplot(lifeExp~country)
plot(lifeExp~continent)
plot(lifeExp~gdpPercap)

#dataManipulation

library(dplyr)
gapminder %>%
  select(country,lifeExp) %>%
  filter(country =="South Africa" |
        country == "Ireland") %>%
    group_by(country) %>%
  summarise(average_life = mean(lifeExp))

df1 <- gapminder %>%
  select(country,lifeExp) %>%
  filter(country =="South Africa" |
           country == "Ireland") 
t.test(data=df1,lifeExp~country)

#dataVisualisation

library(ggplot2)

gapminder %>%
  filter(gdpPercap < 50000) %>%
  ggplot(aes(x=gdpPercap,y=lifeExp, col=continent))+
  geom_point()


    