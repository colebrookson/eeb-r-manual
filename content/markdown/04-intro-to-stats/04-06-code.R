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

crab_compare <- rbind(
  crab_sizes_north %>% 
    dplyr::select(size) %>% 
    dplyr::mutate(region = "north"),
  crab_sizes_south %>% 
    dplyr::select(size) %>% 
    dplyr::mutate(region = "south")
) %>% 
  dplyr::mutate(region = as.factor(region))

ggplot(data = crab_compare) + 
  geom_point(aes(x = region, y = size)) + 
  ggthemes::theme_base()

ggplot(data = crab_compare) + 
  geom_boxplot(aes(x = region, y = size)) + 
  ggthemes::theme_base()





t_test_res <- stats::t.test(
  # sample of group 1
  crab_sizes_north$size, 
  # sample of group 2
  crab_sizes_south$size,
  # Regulat t-test or Welch's t-test depending on the variance
  var.equal = TRUE
)
t_test_res