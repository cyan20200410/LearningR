# Load the packages
source(here::here("R/package-loading.R"))

# Check column names
colnames(NHANES)

# Look at contents
str(NHANES)
glimpse(NHANES)

# See summary
summary(NHANES)

# Look over the dataset documentation
?NHANES

# 1. BMI between 20 and 40 with diabetes
nhanes_small %>%
    # Format should follow: variable >= number or character
    filter(bmi >= 20 & bmi <= 40 & diabetes == "Yes" )

# Pipe the data into mutate function and:
nhanes_modified <- nhanes_small %>%
# Specifying dataset
    mutate(
# 2. Calculate mean arterial pressure
        mean_arterial_pressure = ((2 * bp_dia_ave) + bp_sys_ave)/3,
# 3. Create young_child variable using a condition
        young_child = if_else(age < 6, "Yes", "No")
    ) %>% view()

nhanes_modified


#6.15

  nhanes_small %>%
      summarise(max_bmi = max(bmi))


  nhanes_small %>%
      summarise(max_bmi = max(bmi, na.rm = TRUE))


