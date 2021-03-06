#Coding assignment based on the counterfactual analysis of Rosenbaum (2013):
#Construct the findBestLocation() function, which identifies the optimal foreign-owned supplier locations, given the location of the domestic-owned suppliers. 
#Let the expected cost of a supplier satesfying an assembly plant be a linear function of the union rate and the distance between the supplier and assembly plant. beta gives these multiplicative constants.

source('header.R')

list(
  assembly.count = 12,
  competetor.count = 4,
  distance = 10,
  union = 2,
  num.sites = 6,
  num.tries = 12
) %>% 
  make_problem_data %>% 
  find_best_location %>% 
  saveRDS(paste0(var_save, 'solution.rds'))
