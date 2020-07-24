﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "health_metrics" (
    "fips" int   NOT NULL,
    "state" varchar   NOT NULL,
    "county" varchar   NOT NULL,
    "num_deaths" int   NOT NULL,
    "years_of_potential_life_lost_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low" numeric(22,15)   NOT NULL,
    "_95percent_ci_high" numeric(22,15)   NOT NULL,
    "quartile" int   NOT NULL,
    "ypll_rate_aian" numeric(22,15)   NOT NULL,
    "ypll_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "ypll_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "ypll_rate_asian" numeric(22,15)   NOT NULL,
    "ypll_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "ypll_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "ypll_rate_black" numeric(22,15)   NOT NULL,
    "ypll_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "ypll_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "ypll_rate_hispanic" numeric(22,15)   NOT NULL,
    "ypll_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "ypll_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "ypll_rate_white" numeric(22,15)   NOT NULL,
    "ypll_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "ypll_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_fair_or_poor_health" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_2" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_2" numeric(22,15)   NOT NULL,
    "quartile_2" int   NOT NULL,
    "average_number_of_physically_unhealthy_days" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_3" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_3" numeric(22,15)   NOT NULL,
    "quartile_3" int   NOT NULL,
    "average_number_of_mentally_unhealthy_days" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_4" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_4" numeric(22,15)   NOT NULL,
    "quartile_4" int   NOT NULL,
    "unreliable" varchar   NOT NULL,
    "percent_low_birthweight" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_5" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_5" numeric(22,15)   NOT NULL,
    "quartile_5" int   NOT NULL,
    "percent_lbw_aian" numeric(22,15)   NOT NULL,
    "percent_lbw_aian_95percent_ci_low" int   NOT NULL,
    "percent_lbw_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_lbw_asian" numeric(22,15)   NOT NULL,
    "percent_lbw_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_lbw_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_lbw_black" numeric(22,15)   NOT NULL,
    "percent_lbw_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_lbw_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_lbw_hispanic" numeric(22,15)   NOT NULL,
    "percent_lbw_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_lbw_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_lbw_white" numeric(22,15)   NOT NULL,
    "percent_lbw_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_lbw_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_smokers" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_6" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_6" numeric(22,15)   NOT NULL,
    "quartile_6" int   NOT NULL,
    "percent_adults_with_obesity" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_7" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_7" numeric(22,15)   NOT NULL,
    "quartile_7" int   NOT NULL,
    "food_environment_index" numeric(22,15)   NOT NULL,
    "quartile_8" int   NOT NULL,
    "percent_physically_inactive" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_8" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_8" numeric(22,15)   NOT NULL,
    "quartile_9" int   NOT NULL,
    "percent_with_access_to_exercise_opportunities" numeric(22,15)   NOT NULL,
    "quartile_10" int   NOT NULL,
    "percent_excessive_drinking" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_9" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_9" numeric(22,15)   NOT NULL,
    "quartile_11" int   NOT NULL,
    "num_alcohol_impaired_driving_deaths" int   NOT NULL,
    "num_driving_deaths" int   NOT NULL,
    "percent_driving_deaths_with_alcohol_involvement" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_10" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_10" numeric(22,15)   NOT NULL,
    "quartile_12" int   NOT NULL,
    "num_chlamydia_cases" int   NOT NULL,
    "chlamydia_rate" numeric(22,15)   NOT NULL,
    "quartile_13" int   NOT NULL,
    "teen_birth_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_11" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_11" numeric(22,15)   NOT NULL,
    "quartile_14" int   NOT NULL,
    "teen_birth_rate_aian" numeric(22,15)   NOT NULL,
    "teen_birth_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "teen_birth_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "teen_birth_rate_asian" numeric(22,15)   NOT NULL,
    "teen_birth_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "teen_birth_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "teen_birth_rate_black" numeric(22,15)   NOT NULL,
    "teen_birth_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "teen_birth_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "teen_birth_rate_hispanic" numeric(22,15)   NOT NULL,
    "teen_birth_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "teen_birth_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "teen_birth_rate_white" numeric(22,15)   NOT NULL,
    "teen_birth_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "teen_birth_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_uninsured" int   NOT NULL,
    "percent_uninsured" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_12" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_12" numeric(22,15)   NOT NULL,
    "quartile_15" int   NOT NULL,
    "num_primary_care_physicians" int   NOT NULL,
    "primary_care_physicians_rate" numeric(22,15)   NOT NULL,
    "primary_care_physicians_ratio" varchar   NOT NULL,
    "quartile_16" int   NOT NULL,
    "num_dentists" int   NOT NULL,
    "dentist_rate" numeric(22,15)   NOT NULL,
    "dentist_ratio" varchar   NOT NULL,
    "quartile_17" int   NOT NULL,
    "num_mental_health_providers" int   NOT NULL,
    "mental_health_provider_rate" numeric(22,15)   NOT NULL,
    "mental_health_provider_ratio" varchar   NOT NULL,
    "quartile_18" int   NOT NULL,
    "preventable_hospitalization_rate" int   NOT NULL,
    "quartile_19" int   NOT NULL,
    "preventable_hosp_rate_aian" int   NOT NULL,
    "preventable_hosp_rate_asian" int   NOT NULL,
    "preventable_hosp_rate_black" int   NOT NULL,
    "preventable_hosp_rate_hispanic" int   NOT NULL,
    "preventable_hosp_rate_white" int   NOT NULL,
    "percent_with_annual_mammogram" int   NOT NULL,
    "quartile_20" int   NOT NULL,
    "percent_screened_aian" int   NOT NULL,
    "percent_screened_asian" int   NOT NULL,
    "percent_screened_black" int   NOT NULL,
    "percent_screened_hispanic" int   NOT NULL,
    "percent_screened_white" int   NOT NULL,
    "percent_vaccinated" int   NOT NULL,
    "quartile_21" int   NOT NULL,
    "percent_vaccinated_aian" int   NOT NULL,
    "percent_vaccinated_asian" int   NOT NULL,
    "percent_vaccinated_black" int   NOT NULL,
    "percent_vaccinated_hispanic" int   NOT NULL,
    "percent_vaccinated_white" int   NOT NULL,
    "cohort_size" int   NOT NULL,
    "high_school_graduation_rate" numeric(22,15)   NOT NULL,
    "quartile_22" int   NOT NULL,
    "num_some_college" int   NOT NULL,
    "population" int   NOT NULL,
    "percent_some_college" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_13" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_13" numeric(22,15)   NOT NULL,
    "quartile_23" int   NOT NULL,
    "num_unemployed" int   NOT NULL,
    "labor_force" int   NOT NULL,
    "percent_unemployed" numeric(22,15)   NOT NULL,
    "quartile_24" int   NOT NULL,
    "percent_children_in_poverty" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_14" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_14" numeric(22,15)   NOT NULL,
    "quartile_25" int   NOT NULL,
    "percent_children_in_poverty_aian" numeric(22,15)   NOT NULL,
    "percent_children_in_poverty_asian" numeric(22,15)   NOT NULL,
    "percent_children_in_poverty_black" numeric(22,15)   NOT NULL,
    "percent_children_in_poverty_hispanic" numeric(22,15)   NOT NULL,
    "percent_children_in_poverty_white" numeric(22,15)   NOT NULL,
    "_80th_percentile_income" int   NOT NULL,
    "_20th_percentile_income" int   NOT NULL,
    "income_ratio" numeric(22,15)   NOT NULL,
    "quartile_26" int   NOT NULL,
    "num_single_parent_households" int   NOT NULL,
    "num_households" int   NOT NULL,
    "percent_single_parent_households" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_15" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_15" numeric(22,15)   NOT NULL,
    "quartile_27" int   NOT NULL,
    "num_associations" int   NOT NULL,
    "social_association_rate" numeric(22,15)   NOT NULL,
    "quartile_28" int   NOT NULL,
    "annual_average_violent_crimes" numeric(22,15)   NOT NULL,
    "violent_crime_rate" numeric(22,15)   NOT NULL,
    "quartile_29" int   NOT NULL,
    "num_injury_deaths" int   NOT NULL,
    "injury_death_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_16" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_16" numeric(22,15)   NOT NULL,
    "quartile_30" int   NOT NULL,
    "injury_death_rate_aian" numeric(22,15)   NOT NULL,
    "injury_death_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "injury_death_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "injury_death_rate_asian" numeric(22,15)   NOT NULL,
    "injury_death_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "injury_death_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "injury_death_rate_black" numeric(22,15)   NOT NULL,
    "injury_death_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "injury_death_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "injury_death_rate_hispanic" numeric(22,15)   NOT NULL,
    "injury_death_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "injury_death_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "injury_death_rate_white" numeric(22,15)   NOT NULL,
    "injury_death_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "injury_death_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "average_daily_pm2_5" numeric(22,15)   NOT NULL,
    "quartile_31" int   NOT NULL,
    "presence_of_water_violation" BOOLEAN   NOT NULL,
    "quartile_32" int   NOT NULL,
    "percent_severe_housing_problems" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_17" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_17" numeric(22,15)   NOT NULL,
    "severe_housing_cost_burden" numeric(22,15)   NOT NULL,
    "severe_housing_cost_burden_95percent_ci_low" numeric(22,15)   NOT NULL,
    "severe_housing_cost_burden_95percent_ci_high" numeric(22,15)   NOT NULL,
    "overcrowding" numeric(22,15)   NOT NULL,
    "overcrowding_95percent_ci_low" numeric(22,15)   NOT NULL,
    "overcrowding_95percent_ci_high" numeric(22,15)   NOT NULL,
    "inadequate_facilities" numeric(22,15)   NOT NULL,
    "inadequate_facilities_95percent_ci_low" numeric(22,15)   NOT NULL,
    "inadequate_facilities_95percent_ci_high" numeric(22,15)   NOT NULL,
    "quartile_33" int   NOT NULL,
    "percent_drive_alone_to_work" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_18" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_18" numeric(22,15)   NOT NULL,
    "quartile_34" int   NOT NULL,
    "percent_drive_alone_aian" numeric(22,15)   NOT NULL,
    "percent_drive_alone_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_drive_alone_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_drive_alone_asian" numeric(22,15)   NOT NULL,
    "percent_drive_alone_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_drive_alone_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_drive_alone_black" numeric(22,15)   NOT NULL,
    "percent_drive_alone_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_drive_alone_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_drive_alone_hispanic" numeric(22,15)   NOT NULL,
    "percent_drive_alone_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_drive_alone_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_drive_alone_white" numeric(22,15)   NOT NULL,
    "percent_drive_alone_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "percent_drive_alone_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_workers_who_drive_alone" int   NOT NULL,
    "percent_long_commute_drives_alone" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_19" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_19" numeric(22,15)   NOT NULL,
    "quartile_35" int   NOT NULL,
    "life_expectancy" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_20" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_20" numeric(22,15)   NOT NULL,
    "life_expectancy_aian" numeric(22,15)   NOT NULL,
    "life_expectancy_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "life_expectancy_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "life_expectancy_asian" numeric(22,15)   NOT NULL,
    "life_expectancy_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "life_expectancy_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "life_expectancy_black" numeric(22,15)   NOT NULL,
    "life_expectancy_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "life_expectancy_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "life_expectancy_hispanic" numeric(22,15)   NOT NULL,
    "life_expectancy_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "life_expectancy_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "life_expectancy_white" numeric(22,15)   NOT NULL,
    "life_expectancy_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "life_expectancy_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_deaths_2" int   NOT NULL,
    "age_adjusted_death_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_21" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_21" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_aian" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_asian" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_black" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_hispanic" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_white" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "age_adjusted_mortality_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_deaths_3" int   NOT NULL,
    "child_mortality_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_22" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_22" numeric(22,15)   NOT NULL,
    "child_mortality_rate_aian" numeric(22,15)   NOT NULL,
    "child_mortality_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "child_mortality_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "child_mortality_rate_asian" numeric(22,15)   NOT NULL,
    "child_mortality_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "child_mortality_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "child_mortality_rate_black" numeric(22,15)   NOT NULL,
    "child_mortality_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "child_mortality_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "child_mortality_rate_hispanic" numeric(22,15)   NOT NULL,
    "child_mortality_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "child_mortality_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "child_mortality_rate_white" numeric(22,15)   NOT NULL,
    "child_mortality_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "child_mortality_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_deaths_4" int   NOT NULL,
    "infant_mortality_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_23" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_23" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_aian" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_asian" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_black" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_hispanic" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_white" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "infant_mortality_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_frequent_physical_distress" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_24" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_24" numeric(22,15)   NOT NULL,
    "percent_frequent_mental_distress" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_25" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_25" numeric(22,15)   NOT NULL,
    "percent_adults_with_diabetes" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_26" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_26" numeric(22,15)   NOT NULL,
    "num_hiv_cases" int   NOT NULL,
    "hiv_prevalence_rate" numeric(22,15)   NOT NULL,
    "num_food_insecure" int   NOT NULL,
    "percent_food_insecure" numeric(22,15)   NOT NULL,
    "num_limited_access" numeric(22,15)   NOT NULL,
    "percent_limited_access_to_healthy_foods" numeric(22,15)   NOT NULL,
    "num_drug_overdose_deaths" int   NOT NULL,
    "drug_overdose_mortality_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_27" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_27" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_aian" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_asian" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_black" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_hispanic" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_white" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "drug_overdose_mortality_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_motor_vehicle_deaths" int   NOT NULL,
    "motor_vehicle_mortality_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_28" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_28" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_aian" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_asian" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_black" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_hispanic" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_white" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "mv_mortality_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_insufficient_sleep" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_29" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_29" numeric(22,15)   NOT NULL,
    "num_uninsured_2" int   NOT NULL,
    "percent_uninsured_2" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_30" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_30" numeric(22,15)   NOT NULL,
    "num_uninsured_3" int   NOT NULL,
    "percent_uninsured_3" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_31" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_31" numeric(22,15)   NOT NULL,
    "other_primary_care_provider_rate" numeric(22,15)   NOT NULL,
    "other_primary_care_provider_ratio" varchar   NOT NULL,
    "percent_disconnected_youth" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_32" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_32" numeric(22,15)   NOT NULL,
    "average_grade_performance" numeric(22,15)   NOT NULL,
    "average_grade_performance_asian" numeric(22,15)   NOT NULL,
    "average_grade_performance_black" numeric(22,15)   NOT NULL,
    "average_grade_performance_hispanic" numeric(22,15)   NOT NULL,
    "average_grade_performance_white" numeric(22,15)   NOT NULL,
    "average_grade_performance_2" numeric(22,15)   NOT NULL,
    "average_grade_performance_asian_2" numeric(22,15)   NOT NULL,
    "average_grade_performance_black_2" numeric(22,15)   NOT NULL,
    "average_grade_performance_hispanic_2" numeric(22,15)   NOT NULL,
    "average_grade_performance_white_2" numeric(22,15)   NOT NULL,
    "median_household_income" int   NOT NULL,
    "_95percent_ci_low_33" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_33" numeric(22,15)   NOT NULL,
    "household_income_aian" int   NOT NULL,
    "household_income_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "household_income_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "household_income_asian" int   NOT NULL,
    "household_income_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "household_income_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "household_income_black" int   NOT NULL,
    "household_income_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "household_income_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "household_income_hispanic" int   NOT NULL,
    "household_income_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "household_income_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "household_income_white" int   NOT NULL,
    "household_income_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "household_income_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "percent_enrolled_in_free_or_reduced_lunch" numeric(22,15)   NOT NULL,
    "segregation_index" numeric(22,15)   NOT NULL,
    "segregation_index_2" numeric(22,15)   NOT NULL,
    "homicide_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_34" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_34" numeric(22,15)   NOT NULL,
    "homicide_rate_aian" numeric(22,15)   NOT NULL,
    "homicide_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "homicide_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "homicide_rate_asian" numeric(22,15)   NOT NULL,
    "homicide_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "homicide_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "homicide_rate_black" numeric(22,15)   NOT NULL,
    "homicide_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "homicide_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "homicide_rate_hispanic" numeric(22,15)   NOT NULL,
    "homicide_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "homicide_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "homicide_rate_white" numeric(22,15)   NOT NULL,
    "homicide_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "homicide_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_deaths_5" int   NOT NULL,
    "suicide_rate_age_adjusted" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_35" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_35" numeric(22,15)   NOT NULL,
    "crude_rate" numeric(22,15)   NOT NULL,
    "suicide_rate_aian" numeric(22,15)   NOT NULL,
    "suicide_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "suicide_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "suicide_rate_asian" numeric(22,15)   NOT NULL,
    "suicide_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "suicide_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "suicide_rate_black" numeric(22,15)   NOT NULL,
    "suicide_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "suicide_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "suicide_rate_hispanic" numeric(22,15)   NOT NULL,
    "suicide_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "suicide_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "suicide_rate_white" numeric(22,15)   NOT NULL,
    "suicide_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "suicide_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "num_firearm_fatalities" int   NOT NULL,
    "firearm_fatalities_rate" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_36" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_36" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_aian" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_aian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_aian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_asian" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_asian_95percent_ci_low" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_asian_95percent_ci_high" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_black" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_black_95percent_ci_low" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_black_95percent_ci_high" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_hispanic" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_hispanic_95percent_ci_low" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_hispanic_95percent_ci_high" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_white" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_white_95percent_ci_low" numeric(22,15)   NOT NULL,
    "firearm_fatalities_rate_white_95percent_ci_high" numeric(22,15)   NOT NULL,
    "non_petitioned_cases" varchar   NOT NULL,
    "petitioned_cases" varchar   NOT NULL,
    "denominator" int   NOT NULL,
    "juvenile_arrest_rate" numeric(22,15)   NOT NULL,
    "average_traffic_volume_per_meter_of_major_roadways" numeric(22,15)   NOT NULL,
    "num_homeowners" int   NOT NULL,
    "percent_homeowners" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_37" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_37" numeric(22,15)   NOT NULL,
    "num_households_with_severe_cost_burden" int   NOT NULL,
    "percent_severe_housing_cost_burden" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_38" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_38" numeric(22,15)   NOT NULL,
    "population_2" int   NOT NULL,
    "percent_less_than_18_years_of_age" numeric(22,15)   NOT NULL,
    "percent_65_and_over" numeric(22,15)   NOT NULL,
    "num_black" int   NOT NULL,
    "percent_black" numeric(22,15)   NOT NULL,
    "num_american_indian_alaska_native" int   NOT NULL,
    "percent_american_indian_alaska_native" numeric(22,15)   NOT NULL,
    "num_asian" int   NOT NULL,
    "percent_asian" numeric(22,15)   NOT NULL,
    "num_native_hawaiian_other_pacific_islander" int   NOT NULL,
    "percent_native_hawaiian_other_pacific_islander" numeric(22,15)   NOT NULL,
    "num_hispanic" int   NOT NULL,
    "percent_hispanic" numeric(22,15)   NOT NULL,
    "num_non_hispanic_white" int   NOT NULL,
    "percent_non_hispanic_white" numeric(22,15)   NOT NULL,
    "num_not_proficient_in_english" int   NOT NULL,
    "percent_not_proficient_in_english" numeric(22,15)   NOT NULL,
    "_95percent_ci_low_39" numeric(22,15)   NOT NULL,
    "_95percent_ci_high_39" numeric(22,15)   NOT NULL,
    "percent_female" numeric(22,15)   NOT NULL,
    "num_rural" int   NOT NULL,
    "percent_rural" numeric(22,15)   NOT NULL
);

