# Load the packages
source(here::here("R/package-loading.R"))

#briefly glimpse the content of dataset
glimpse(NHANES)

#select a column wit name
select(NHANES, Age, Weight, BMI)

#exclde a column with name
select(NHANES, -HeadCirc)

#all columns containing letter "H"
select(NHANES, starts_with('BP'))

#all columns containing letter "H"
select(NHANES, ends_with('Day'))

#all columns containing letter "H"
select(NHANES, contains('Age'))

#selected columns as new dataframe
nhanes_small <- select(NHANES, Age, Gender, BMI, Diabetes,PhysActive, BPSysAve, BPDiaAve, Education)

#View the new dataframe
nhanes_small

#rename all columns to snake case
nhanes_small <- rename_with(nhanes_small, snakecase::to_snake_case)

# look at dataframe
nhanes_small

# Rename the column name
rename(nhanes_small, sex=gender)

# look at dataframe
nhanes_small

# these 2 ways are the same (ctrl+shift+M)
colnames(nhanes_small)

nhanes_small %>%
   colnames()

# Use a %>%
nhanes_small %>%
    select(phys_active) %>%
    rename(physically_active=phys_active)

# look at dataframe
nhanes_small

#6.9
nhanes_small %>%
    select(bp_sys_ave, education)

nhanes_small %>%
    rename(bp_sys = bp_sys_ave,
           bp_dia = bp_dia_ave)

nhanes_small %>%
    select(bmi, contains("age"))

nhanes_small %>%
    select(starts_with("bp_")) %>%
    rename(bp_systolic = bp_sys_ave)






