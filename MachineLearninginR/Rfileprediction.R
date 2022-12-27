install.packages("tidymodels")
install.packages("readr")
install.packages("broom.mixed")
install.packages("dotwhisker")
install.packages("dplyr")
install.packages("ggplot2")

library(dotwhisker)
library(tidymodels)
library(broom.mixed)
library(ggplot2)
library(readr)

data <- read.csv('C:/Users/HP/Downloads/urchins.csv')

View(data)

df <- data %>% 
  setNames(c("Regime_food", "initial_vol", "width")) %>% 
  mutate(Regime_food = factor(Regime_food, levels = c("Initial", "Low", "High")))

view(df)

ggplot(df,
       aes(x = initial_vol, 
           y = width, 
           group = Regime_food, 
           col = Regime_food)) + 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE) +
  scale_color_viridis_d(option = "plasma", end = .7)

lm_mod <- 
  linear_reg() %>% 
  set_engine("lm")

lm_fit <- 
  lm_mod %>% 
  fit(width ~ initial_vol * Regime_food, data = df)

tidy(lm_fit)

tidy(lm_fit) %>% 
  
  dwplot(dot_args = list(size = 2, color = "black"),
         whisker_args = list(color = "black"),
         vline = geom_vline(xintercept = 0, colour = "grey50", linetype = 2))

new_points <- expand.grid(initial_vol = 20, 
                          Regime_food = c("Initial", "Low", "High"))

mean_pred <- predict(lm_fit, new_data = new_points)
mean_pred

conf_int_pred <- predict(lm_fit, 
                         new_data = new_points, 
                         type = "conf_int")
conf_int_pred

plot_data <- 
  new_points %>% 
  bind_cols(mean_pred) %>% 
  bind_cols(conf_int_pred)

# and plot:
ggplot(plot_data, aes(x = Regime_food)) + 
  geom_point(aes(y = .pred)) + 
  geom_errorbar(aes(ymin = .pred_lower, 
                    ymax = .pred_upper),
                width = .2) + 
  labs(y = "Data size")