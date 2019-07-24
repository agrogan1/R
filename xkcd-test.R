# XKCD Style Graphs
# Inspired by 
# https://stackoverflow.com/questions/12675147/how-can-we-make-xkcd-style-graphs

data("iris")

library(ggplot2)

library(extrafont)

ggplot(iris,
       aes(x = Sepal.Length,
           y = Sepal.Width)) +
  geom_point(alpha = .5) +
  geom_smooth(position = "jitter",
              size = 2) +
  geom_line(aes(y = min(Sepal.Width)), # x axis
            position = position_jitter(h = 0.005),
            size = 2,
            color = "grey") +
  geom_line(aes(x = min(Sepal.Length)), # y axis
            position = position_jitter(w = 0.005),
            size = 2,
            color = "grey") +
  labs(title = "Sepal Width by Sepal Length",
       subtitle = "Iris Data Set",
       x = "Sepal Length",
       y = "Sepal Width") +
  theme_void() +
  theme(text = element_text(size=16, 
                            family="Segoe Print"))
  



