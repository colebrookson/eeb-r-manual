library(lterdatasampler)
crab_sizes <- lterdatasampler::pie_crab

library(ggpubr)
library(dplyr)
# first, cut our data to just the sites we want
crab_sizes_south <- crab_sizes %>% 
  dplyr::filter(site %in% c("GTM", "SI")) 
crab_sizes_north <- crab_sizes %>% 
  dplyr::filter(site %in% c("CC", "NB"))
# plot our variable of interest (size)
ggpubr::ggdensity(crab_sizes_north$size, main = "Northern")
ggpubr::ggdensity(crab_sizes_south$size, main = "Southern")

ggpubr::ggqqplot(crab_sizes_north$size, main = "North")
ggpubr::ggqqplot(crab_sizes_south$size, main = "South")


stats::shapiro.test(crab_sizes_north$size)

stats::shapiro.test(crab_sizes_south$size)

stats::var.test(crab_sizes_north$size, crab_sizes_south$size)

north_compare <- crab_sizes_north %>% 
  dplyr::select(size) %>% 
  dplyr::mutate(region = "north")

south_compare <- crab_sizes_south %>% 
  dplyr::select(size) %>% 
  dplyr::mutate(region = "south")

crab_compare <- rbind(north_compare, south_compare) 

ggplot(data = crab_compare) + 
  geom_point(aes(x = region, y = size)) + 
  ggthemes::theme_base()

ggplot(data = crab_compare) + 
  geom_boxplot(aes(x = region, y = size)) + 
  ggthemes::theme_base()

sd(south_compare$size)
sd(north_compare$size)



t_test_res <- stats::t.test(
  # sample of group 1
  crab_sizes_north$size, 
  # sample of group 2
  crab_sizes_south$size,
  # Regulat t-test or Welch's t-test depending on the variance
  var.equal = TRUE
)
t_test_res



library(palmerpenguins)

df <- palmerpenguins::penguins
library(ggpubr)

# first filter the data
adelie <- df %>% 
  dplyr::filter(species == "Adelie")
chin <- df %>% 
  dplyr::filter(species == "Chinstrap")
gentoo <- df %>% 
  dplyr::filter(species == "Gentoo")

# plot qq-plots for each one
ggpubr::ggqqplot(adelie$bill_length_mm, main = "Adelie")
ggpubr::ggqqplot(chin$bill_length_mm, main = "Chinstrap")
ggpubr::ggqqplot(gentoo$bill_length_mm, main = "Gentoo")

ggplot(data = gentoo) + 
  geom_density(aes(x = bill_length_mm))
ggplot(data = chin) + 
  geom_density(aes(x = bill_length_mm))
ggplot(data = adelie) + 
  geom_density(aes(x = bill_length_mm))



stats::shapiro.test(adelie$bill_length_mm)
stats::shapiro.test(chin$bill_length_mm)
stats::shapiro.test(gentoo$bill_length_mm)



