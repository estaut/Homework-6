library(tidyverse)
library(ggplot2)
library(dplyr)

HAPPY <- readRDS("~/Homework-6/data/HAPPY.rds")

HAPPY <- replace(HAPPY, HAPPY == "IAP", NA)
HAPPY <- replace(HAPPY, HAPPY == "DK", NA)
HAPPY <- replace(HAPPY, HAPPY == "NA", NA)

str(HAPPY)
str(HAPPY1)

view(HAPPY)

HAPPY1 =
  HAPPY %>% mutate(AGE = replace(AGE, AGE == '89 OR OLDER', 89)) %>%
  mutate(AGE = as.numeric(AGE),
         HAPPY = as.factor(HAPPY),
         SEX = as.factor(SEX), 
         MARITAL = as.factor(MARITAL),
         DEGREE = as.factor(DEGREE),
         FINRELA = as.factor(FINRELA),
         HEALTH = as.factor(HEALTH),
         PARTYID = as.factor(PARTYID),
         POLVIEWS = as.factor(POLVIEWS)) %>% 
  mutate(MARITAL = factor(MARITAL, levels = c("NEVER MARRIED",
                                              "MARRIED",
                                              "SEPARATED",
                                              "DIVORCED",
                                              "WIDOWED"))) %>%
  mutate(DEGREE = factor(DEGREE, levels = c("LT HIGH SCHOOL",
                                                     "HIGH SCHOOL",
                                                     "JUNIOR COLLEGE",
                                                     "BACHELOR",
                                                     "GRADUATE"))) %>%
  mutate(FINRELA = factor(FINRELA, levels = c("FAR BELOW AVERAGE",
                                              "BELOW AVERAGE",
                                              "AVERAGE",
                                              "ABOVE AVERAGE",
                                              "FAR ABOVE AVERAGE"))) %>%
  mutate(HEALTH = factor(HEALTH, levels = c("POOR",
                                            "FAIR",
                                            "GOOD",
                                            "EXCELLENT"))) %>%
  mutate(PARTYID = factor(PARTYID, levels = c("OTHER PARTY",
                                              "STRONG REPUBLICAN",
                                              "NOT STR REPUBLICAN",
                                              "IND,NEAR REP",
                                              "INDEPENDENT",
                                              "IND,NEAR DEM",
                                              "NOT STR DEMOCRAT",
                                              "STRONG DEMOCRAT"))) %>%
  mutate(POLVIEWS = factor(POLVIEWS, levels = c("EXTRMLY CONSERVATIVE",
                                                "CONSERVATIVE",
                                                "SLGHTLY CONSERVATIVE",
                                                "MODERATE",
                                                "SLIGHTLY LIBERAL",
                                                "LIBERAL",
                                                "EXTREMELY LIBERAL")))

str(HAPPY1)
