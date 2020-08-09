-- Table: public.birth_death_rate

-- DROP TABLE public.birth_death_rate;

CREATE TABLE public.birth_death_rate
(
    "Notes" text COLLATE pg_catalog."default",
    "County" text COLLATE pg_catalog."default",
    "County Code" integer,
    "Deaths" integer,
    "Births" integer,
    "Death Rate" text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.birth_death_rate
    OWNER to postgres;

GRANT ALL ON TABLE public.birth_death_rate TO postgres;

GRANT SELECT ON TABLE public.birth_death_rate TO team5k_read WITH GRANT OPTION;

-- Table: public.committee_summary_2020

-- DROP TABLE public.committee_summary_2020;

CREATE TABLE public.committee_summary_2020
(
    "Link_Image" text COLLATE pg_catalog."default",
    "CMTE_ID" text COLLATE pg_catalog."default",
    "CMTE_NM" text COLLATE pg_catalog."default",
    "CMTE_TP" text COLLATE pg_catalog."default",
    "CMTE_DSGN" text COLLATE pg_catalog."default",
    "CMTE_FILING_FREQ" text COLLATE pg_catalog."default",
    "CMTE_ST1" text COLLATE pg_catalog."default",
    "CMTE_ST2" text COLLATE pg_catalog."default",
    "CMTE_CITY" text COLLATE pg_catalog."default",
    "CMTE_ST" text COLLATE pg_catalog."default",
    "CMTE_ZIP" integer,
    "TRES_NM" text COLLATE pg_catalog."default",
    "CAND_ID" text COLLATE pg_catalog."default",
    "FEC_ELECTION_YR" integer,
    "INDV_CONTB" double precision,
    "PTY_CMTE_CONTB" double precision,
    "OTH_CMTE_CONTB" double precision,
    "TTL_CONTB" double precision,
    "TRANF_FROM_OTHER_AUTH_CMTE" double precision,
    "OFFSETS_TO_OP_EXP" double precision,
    "OTHER_RECEIPTS" double precision,
    "TTL_RECEIPTS" double precision,
    "TRANF_TO_OTHER_AUTH_CMTE" double precision,
    "OTH_LOAN_REPYMTS" double precision,
    "INDV_REF" double precision,
    "POL_PTY_CMTE_REF" double precision,
    "TTL_CONTB_REF" double precision,
    "OTHER_DISB" double precision,
    "TTL_DISB" double precision,
    "NET_CONTB" double precision,
    "NET_OP_EXP" double precision,
    "COH_BOP" double precision,
    "CVG_START_DT" integer,
    "COH_COP" double precision,
    "CVG_END_DT" integer,
    "DEBTS_OWED_BY_CMTE" double precision,
    "DEBTS_OWED_TO_CMTE" double precision,
    "INDV_ITEM_CONTB" double precision,
    "INDV_UNITEM_CONTB" double precision,
    "OTH_LOANS" double precision,
    "TRANF_FROM_NONFED_ACCT" double precision,
    "TRANF_FROM_NONFED_LEVIN" double precision,
    "TTL_NONFED_TRANF" double precision,
    "LOAN_REPYMTS_RECEIVED" double precision,
    "OFFSETS_TO_FNDRSG" double precision,
    "OFFSETS_TO_LEGAL_ACCTG" double precision,
    "FED_CAND_CONTB_REF" double precision,
    "TTL_FED_RECEIPTS" double precision,
    "SHARED_FED_OP_EXP" double precision,
    "SHARED_NONFED_OP_EXP" double precision,
    "OTHER_FED_OP_EXP" double precision,
    "TTL_OP_EXP" double precision,
    "FED_CAND_CMTE_CONTB" double precision,
    "INDT_EXP" double precision,
    "COORD_EXP_BY_PTY_CMTE" double precision,
    "LOANS_MADE" double precision,
    "SHARED_FED_ACTVY_FED_SHR" double precision,
    "SHARED_FED_ACTVY_NONFED" double precision,
    "NON_ALLOC_FED_ELECT_ACTVY" double precision,
    "TTL_FED_ELECT_ACTVY" double precision,
    "TTL_FED_DISB" double precision,
    "CAND_CNTB" double precision,
    "CAND_LOAN" double precision,
    "TTL_LOANS" double precision,
    "OP_EXP" double precision,
    "CAND_LOAN_REPYMNT" double precision,
    "TTL_LOAN_REPYMTS" double precision,
    "OTH_CMTE_REF" double precision,
    "TTL_OFFSETS_TO_OP_EXP" double precision,
    "EXEMPT_LEGAL_ACCTG_DISB" double precision,
    "FNDRSG_DISB" double precision,
    "ITEM_REF_REB_RET" integer,
    "SUBTTL_REF_REB_RET" integer,
    "UNITEM_REF_REB_RET" integer,
    "ITEM_OTHER_REF_REB_RET" integer,
    "UNITEM_OTHER_REF_REB_RET" integer,
    "SUBTTL_OTHER_REF_REB_RET" integer,
    "ITEM_OTHER_INCOME" integer,
    "UNITEM_OTHER_INCOME" integer,
    "EXP_PRIOR_YRS_SUBJECT_LIM" integer,
    "EXP_SUBJECT_LIMITS" double precision,
    "FED_FUNDS" double precision,
    "ITEM_CONVN_EXP_DISB" double precision,
    "ITEM_OTHER_DISB" integer,
    "SUBTTL_CONVN_EXP_DISB" double precision,
    "TTL_EXP_SUBJECT_LIMITS" text COLLATE pg_catalog."default",
    "UNITEM_CONVN_EXP_DISB" integer,
    "UNITEM_OTHER_DISB" integer,
    "TTL_COMMUNICATION_COST" double precision,
    "COH_BOY" integer,
    "COH_COY" integer,
    "ORG_TP" text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.committee_summary_2020
    OWNER to postgres;

GRANT ALL ON TABLE public.committee_summary_2020 TO postgres;

GRANT SELECT ON TABLE public.committee_summary_2020 TO team5k_read WITH GRANT OPTION;

-- Table: public.education

-- DROP TABLE public.education;

CREATE TABLE public.education
(
    "FIPS Code" integer,
    "State" text COLLATE pg_catalog."default",
    "Area name" text COLLATE pg_catalog."default",
    "2003 Rural-urban Continuum Code" double precision,
    "2003 Urban Influence Code" double precision,
    "2013 Rural-urban Continuum Code" double precision,
    "2013 Urban Influence Code" double precision,
    "Less than a high school diploma, 1970" double precision,
    "High school diploma only, 1970" double precision,
    "Some college (1-3 years), 1970" double precision,
    "Four years of college or higher, 1970" double precision,
    "Percent of adults with less than a high school diploma, 1970" double precision,
    "Percent of adults with a high school diploma only, 1970" double precision,
    "Percent of adults completing some college (1-3 years), 1970" double precision,
    "Percent of adults completing college or higher, 1970" double precision,
    "Less than a high school diploma, 1980" double precision,
    "High school diploma only, 1980" double precision,
    "Some college (1-3 years), 1980" double precision,
    "Four years of college or higher, 1980" double precision,
    "Percent of adults with less than a high school diploma, 1980" double precision,
    "Percent of adults with a high school diploma only, 1980" double precision,
    "Percent of adults completing some college (1-3 years), 1980" double precision,
    "Percent of adults completing college or higher, 1980" double precision,
    "Less than a high school diploma, 1990" double precision,
    "High school diploma only, 1990" double precision,
    "Some college or associate's degree, 1990" double precision,
    "Bachelor's degree or higher, 1990" double precision,
    "Percent of adults with less than a high school diploma, 1990" double precision,
    "Percent of adults with a high school diploma only, 1990" double precision,
    "Percent of adults completing some college, 1990" double precision,
    "Percent of adults with a bachelor's degree or higher, 1990" double precision,
    "Less than a high school diploma, 2000" double precision,
    "High school diploma only, 2000" double precision,
    "Some college or associate's degree, 2000" double precision,
    "Bachelor's degree or higher, 2000" double precision,
    "Percent of adults with less than a high school diploma, 2000" double precision,
    "Percent of adults with a high school diploma only, 2000" double precision,
    "Percent of adults completing some college, 2000" double precision,
    "Percent of adults with a bachelor's degree or higher, 2000" double precision,
    "Less than a high school diploma, 2014-18" double precision,
    "High school diploma only, 2014-18" double precision,
    "Some college or associate's degree, 2014-18" double precision,
    "Bachelor's degree or higher, 2014-18" double precision,
    "Percent of adults with less than a high school diploma, 2014-18" double precision,
    "Percent of adults with a high school diploma only, 2014-18" double precision,
    "Percent of adults completing some college, 2014-18" double precision,
    "Percent of adults with a bachelor's degree or higher, 2014-18" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.education
    OWNER to postgres;

GRANT ALL ON TABLE public.education TO postgres;

GRANT SELECT ON TABLE public.education TO team5k_read WITH GRANT OPTION;

-- Table: public.fec_donor_az

-- DROP TABLE public.fec_donor_az;

CREATE TABLE public.fec_donor_az
(
    id integer,
    cmt_id text COLLATE pg_catalog."default",
    amndt_ind text COLLATE pg_catalog."default",
    rpt_tp text COLLATE pg_catalog."default",
    transaction_pgi text COLLATE pg_catalog."default",
    image_num bigint,
    transaction_tp text COLLATE pg_catalog."default",
    entity_tp text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    zip integer,
    employer text COLLATE pg_catalog."default",
    occupation text COLLATE pg_catalog."default",
    transaction_dt date,
    transaction_amt integer,
    other_id text COLLATE pg_catalog."default",
    tran_id text COLLATE pg_catalog."default",
    file_num text COLLATE pg_catalog."default",
    memo_cd text COLLATE pg_catalog."default",
    memo_text text COLLATE pg_catalog."default",
    "sub id" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fec_donor_az
    OWNER to postgres;

GRANT ALL ON TABLE public.fec_donor_az TO postgres;

GRANT SELECT ON TABLE public.fec_donor_az TO team5k_read WITH GRANT OPTION;

-- Table: public.fec_donor_fl

-- DROP TABLE public.fec_donor_fl;

CREATE TABLE public.fec_donor_fl
(
    id integer,
    cmt_id text COLLATE pg_catalog."default",
    amndt_ind text COLLATE pg_catalog."default",
    rpt_tp text COLLATE pg_catalog."default",
    transaction_pgi text COLLATE pg_catalog."default",
    image_num bigint,
    transaction_tp integer,
    entity_tp text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    zip integer,
    employer text COLLATE pg_catalog."default",
    occupation text COLLATE pg_catalog."default",
    transaction_dt date,
    transaction_amt integer,
    other_id text COLLATE pg_catalog."default",
    tran_id text COLLATE pg_catalog."default",
    file_num text COLLATE pg_catalog."default",
    memo_cd text COLLATE pg_catalog."default",
    memo_text text COLLATE pg_catalog."default",
    "sub id" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fec_donor_fl
    OWNER to postgres;

GRANT ALL ON TABLE public.fec_donor_fl TO postgres;

GRANT SELECT ON TABLE public.fec_donor_fl TO team5k_read WITH GRANT OPTION;

-- Table: public.fec_donor_mi

-- DROP TABLE public.fec_donor_mi;

CREATE TABLE public.fec_donor_mi
(
    id integer,
    cmt_id text COLLATE pg_catalog."default",
    amndt_ind text COLLATE pg_catalog."default",
    rpt_tp text COLLATE pg_catalog."default",
    transaction_pgi text COLLATE pg_catalog."default",
    image_num bigint,
    transaction_tp text COLLATE pg_catalog."default",
    entity_tp text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    zip integer,
    employer text COLLATE pg_catalog."default",
    occupation text COLLATE pg_catalog."default",
    transaction_dt date,
    transaction_amt integer,
    other_id text COLLATE pg_catalog."default",
    tran_id text COLLATE pg_catalog."default",
    file_num text COLLATE pg_catalog."default",
    memo_cd text COLLATE pg_catalog."default",
    memo_text text COLLATE pg_catalog."default",
    "sub id" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fec_donor_mi
    OWNER to postgres;

GRANT ALL ON TABLE public.fec_donor_mi TO postgres;

GRANT SELECT ON TABLE public.fec_donor_mi TO team5k_read WITH GRANT OPTION;

-- Table: public.fec_donor_nc

-- DROP TABLE public.fec_donor_nc;

CREATE TABLE public.fec_donor_nc
(
    id integer,
    cmt_id text COLLATE pg_catalog."default",
    amndt_ind text COLLATE pg_catalog."default",
    rpt_tp text COLLATE pg_catalog."default",
    transaction_pgi text COLLATE pg_catalog."default",
    image_num bigint,
    transaction_tp integer,
    entity_tp text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    zip integer,
    employer text COLLATE pg_catalog."default",
    occupation text COLLATE pg_catalog."default",
    transaction_dt date,
    transaction_amt integer,
    other_id text COLLATE pg_catalog."default",
    tran_id text COLLATE pg_catalog."default",
    file_num text COLLATE pg_catalog."default",
    memo_cd text COLLATE pg_catalog."default",
    memo_text text COLLATE pg_catalog."default",
    "sub id" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fec_donor_nc
    OWNER to postgres;

GRANT ALL ON TABLE public.fec_donor_nc TO postgres;

GRANT SELECT ON TABLE public.fec_donor_nc TO team5k_read WITH GRANT OPTION;

-- Table: public.fec_donor_pa

-- DROP TABLE public.fec_donor_pa;

CREATE TABLE public.fec_donor_pa
(
    id integer,
    cmt_id text COLLATE pg_catalog."default",
    amndt_ind text COLLATE pg_catalog."default",
    rpt_tp text COLLATE pg_catalog."default",
    transaction_pgi text COLLATE pg_catalog."default",
    image_num bigint,
    transaction_tp text COLLATE pg_catalog."default",
    entity_tp text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    zip integer,
    employer text COLLATE pg_catalog."default",
    occupation text COLLATE pg_catalog."default",
    transaction_dt date,
    transaction_amt integer,
    other_id text COLLATE pg_catalog."default",
    tran_id text COLLATE pg_catalog."default",
    file_num text COLLATE pg_catalog."default",
    memo_cd text COLLATE pg_catalog."default",
    memo_text text COLLATE pg_catalog."default",
    "sub id" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fec_donor_pa
    OWNER to postgres;

GRANT ALL ON TABLE public.fec_donor_pa TO postgres;

GRANT SELECT ON TABLE public.fec_donor_pa TO team5k_read WITH GRANT OPTION;

-- Table: public.health_metrics

-- DROP TABLE public.health_metrics;

CREATE TABLE public.health_metrics
(
    fips integer,
    state text COLLATE pg_catalog."default",
    county text COLLATE pg_catalog."default",
    num_deaths integer,
    years_of_potential_life_lost_rate double precision,
    "95percent_ci_low" double precision,
    "95percent_ci_high" double precision,
    quartile integer,
    ypll_rate_aian double precision,
    ypll_rate_aian_95percent_ci_low double precision,
    ypll_rate_aian_95percent_ci_high double precision,
    ypll_rate_asian double precision,
    ypll_rate_asian_95percent_ci_low double precision,
    ypll_rate_asian_95percent_ci_high double precision,
    ypll_rate_black double precision,
    ypll_rate_black_95percent_ci_low double precision,
    ypll_rate_black_95percent_ci_high double precision,
    ypll_rate_hispanic double precision,
    ypll_rate_hispanic_95percent_ci_low double precision,
    ypll_rate_hispanic_95percent_ci_high double precision,
    ypll_rate_white double precision,
    ypll_rate_white_95percent_ci_low double precision,
    ypll_rate_white_95percent_ci_high double precision,
    percent_fair_or_poor_health double precision,
    "95percent_ci_low_2" double precision,
    "95percent_ci_high_2" double precision,
    quartile_2 integer,
    average_number_of_physically_unhealthy_days double precision,
    "95percent_ci_low_3" double precision,
    "95percent_ci_high_3" double precision,
    quartile_3 integer,
    average_number_of_mentally_unhealthy_days double precision,
    "95percent_ci_low_4" double precision,
    "95percent_ci_high_4" double precision,
    quartile_4 integer,
    unreliable text COLLATE pg_catalog."default",
    percent_low_birthweight double precision,
    "95percent_ci_low_5" double precision,
    "95percent_ci_high_5" double precision,
    quartile_5 integer,
    percent_lbw_aian double precision,
    percent_lbw_aian_95percent_ci_low integer,
    percent_lbw_aian_95percent_ci_high double precision,
    percent_lbw_asian double precision,
    percent_lbw_asian_95percent_ci_low double precision,
    percent_lbw_asian_95percent_ci_high double precision,
    percent_lbw_black double precision,
    percent_lbw_black_95percent_ci_low double precision,
    percent_lbw_black_95percent_ci_high double precision,
    percent_lbw_hispanic double precision,
    percent_lbw_hispanic_95percent_ci_low double precision,
    percent_lbw_hispanic_95percent_ci_high double precision,
    percent_lbw_white double precision,
    percent_lbw_white_95percent_ci_low double precision,
    percent_lbw_white_95percent_ci_high double precision,
    percent_smokers double precision,
    "95percent_ci_low_6" double precision,
    "95percent_ci_high_6" double precision,
    quartile_6 integer,
    percent_adults_with_obesity double precision,
    "95percent_ci_low_7" double precision,
    "95percent_ci_high_7" double precision,
    quartile_7 integer,
    food_environment_index double precision,
    quartile_8 integer,
    percent_physically_inactive double precision,
    "95percent_ci_low_8" double precision,
    "95percent_ci_high_8" double precision,
    quartile_9 integer,
    percent_with_access_to_exercise_opportunities double precision,
    quartile_10 integer,
    percent_excessive_drinking double precision,
    "95percent_ci_low_9" double precision,
    "95percent_ci_high_9" double precision,
    quartile_11 integer,
    num_alcohol_impaired_driving_deaths integer,
    num_driving_deaths integer,
    percent_driving_deaths_with_alcohol_involvement double precision,
    "95percent_ci_low_10" double precision,
    "95percent_ci_high_10" double precision,
    quartile_12 integer,
    num_chlamydia_cases integer,
    chlamydia_rate double precision,
    quartile_13 integer,
    teen_birth_rate double precision,
    "95percent_ci_low_11" double precision,
    "95percent_ci_high_11" double precision,
    quartile_14 integer,
    teen_birth_rate_aian double precision,
    teen_birth_rate_aian_95percent_ci_low double precision,
    teen_birth_rate_aian_95percent_ci_high double precision,
    teen_birth_rate_asian double precision,
    teen_birth_rate_asian_95percent_ci_low double precision,
    teen_birth_rate_asian_95percent_ci_high double precision,
    teen_birth_rate_black double precision,
    teen_birth_rate_black_95percent_ci_low double precision,
    teen_birth_rate_black_95percent_ci_high double precision,
    teen_birth_rate_hispanic double precision,
    teen_birth_rate_hispanic_95percent_ci_low double precision,
    teen_birth_rate_hispanic_95percent_ci_high double precision,
    teen_birth_rate_white double precision,
    teen_birth_rate_white_95percent_ci_low double precision,
    teen_birth_rate_white_95percent_ci_high double precision,
    num_uninsured integer,
    percent_uninsured double precision,
    "95percent_ci_low_12" double precision,
    "95percent_ci_high_12" double precision,
    quartile_15 integer,
    num_primary_care_physicians integer,
    primary_care_physicians_rate double precision,
    primary_care_physicians_ratio text COLLATE pg_catalog."default",
    quartile_16 integer,
    num_dentists integer,
    dentist_rate double precision,
    dentist_ratio text COLLATE pg_catalog."default",
    quartile_17 integer,
    num_mental_health_providers integer,
    mental_health_provider_rate double precision,
    mental_health_provider_ratio text COLLATE pg_catalog."default",
    quartile_18 integer,
    preventable_hospitalization_rate integer,
    quartile_19 integer,
    preventable_hosp_rate_aian integer,
    preventable_hosp_rate_asian integer,
    preventable_hosp_rate_black integer,
    preventable_hosp_rate_hispanic integer,
    preventable_hosp_rate_white integer,
    percent_with_annual_mammogram integer,
    quartile_20 integer,
    percent_screened_aian integer,
    percent_screened_asian integer,
    percent_screened_black integer,
    percent_screened_hispanic integer,
    percent_screened_white integer,
    percent_vaccinated integer,
    quartile_21 integer,
    percent_vaccinated_aian integer,
    percent_vaccinated_asian integer,
    percent_vaccinated_black integer,
    percent_vaccinated_hispanic integer,
    percent_vaccinated_white integer,
    cohort_size integer,
    high_school_graduation_rate double precision,
    quartile_22 integer,
    num_some_college integer,
    population integer,
    percent_some_college double precision,
    "95percent_ci_low_13" double precision,
    "95percent_ci_high_13" double precision,
    quartile_23 integer,
    num_unemployed integer,
    labor_force integer,
    percent_unemployed double precision,
    quartile_24 integer,
    percent_children_in_poverty double precision,
    "95percent_ci_low_14" double precision,
    "95percent_ci_high_14" double precision,
    quartile_25 integer,
    percent_children_in_poverty_aian double precision,
    percent_children_in_poverty_asian double precision,
    percent_children_in_poverty_black double precision,
    percent_children_in_poverty_hispanic double precision,
    percent_children_in_poverty_white double precision,
    "80th_percentile_income" integer,
    "20th_percentile_income" integer,
    income_ratio double precision,
    quartile_26 integer,
    num_single_parent_households integer,
    num_households integer,
    percent_single_parent_households double precision,
    "95percent_ci_low_15" double precision,
    "95percent_ci_high_15" double precision,
    quartile_27 integer,
    num_associations integer,
    social_association_rate double precision,
    quartile_28 integer,
    annual_average_violent_crimes double precision,
    violent_crime_rate double precision,
    quartile_29 integer,
    num_injury_deaths integer,
    injury_death_rate double precision,
    "95percent_ci_low_16" double precision,
    "95percent_ci_high_16" double precision,
    quartile_30 integer,
    injury_death_rate_aian double precision,
    injury_death_rate_aian_95percent_ci_low double precision,
    injury_death_rate_aian_95percent_ci_high double precision,
    injury_death_rate_asian double precision,
    injury_death_rate_asian_95percent_ci_low double precision,
    injury_death_rate_asian_95percent_ci_high double precision,
    injury_death_rate_black double precision,
    injury_death_rate_black_95percent_ci_low double precision,
    injury_death_rate_black_95percent_ci_high double precision,
    injury_death_rate_hispanic double precision,
    injury_death_rate_hispanic_95percent_ci_low double precision,
    injury_death_rate_hispanic_95percent_ci_high double precision,
    injury_death_rate_white double precision,
    injury_death_rate_white_95percent_ci_low double precision,
    injury_death_rate_white_95percent_ci_high double precision,
    average_daily_pm2_5 double precision,
    quartile_31 integer,
    presence_of_water_violation text COLLATE pg_catalog."default",
    quartile_32 integer,
    percent_severe_housing_problems double precision,
    "95percent_ci_low_17" double precision,
    "95percent_ci_high_17" double precision,
    severe_housing_cost_burden double precision,
    severe_housing_cost_burden_95percent_ci_low double precision,
    severe_housing_cost_burden_95percent_ci_high double precision,
    overcrowding double precision,
    overcrowding_95percent_ci_low double precision,
    overcrowding_95percent_ci_high double precision,
    inadequate_facilities double precision,
    inadequate_facilities_95percent_ci_low double precision,
    inadequate_facilities_95percent_ci_high double precision,
    quartile_33 integer,
    percent_drive_alone_to_work double precision,
    "95percent_ci_low_18" double precision,
    "95percent_ci_high_18" double precision,
    quartile_34 integer,
    percent_drive_alone_aian double precision,
    percent_drive_alone_aian_95percent_ci_low double precision,
    percent_drive_alone_aian_95percent_ci_high double precision,
    percent_drive_alone_asian double precision,
    percent_drive_alone_asian_95percent_ci_low double precision,
    percent_drive_alone_asian_95percent_ci_high double precision,
    percent_drive_alone_black double precision,
    percent_drive_alone_black_95percent_ci_low double precision,
    percent_drive_alone_black_95percent_ci_high double precision,
    percent_drive_alone_hispanic double precision,
    percent_drive_alone_hispanic_95percent_ci_low double precision,
    percent_drive_alone_hispanic_95percent_ci_high double precision,
    percent_drive_alone_white double precision,
    percent_drive_alone_white_95percent_ci_low double precision,
    percent_drive_alone_white_95percent_ci_high double precision,
    num_workers_who_drive_alone integer,
    percent_long_commute_drives_alone double precision,
    "95percent_ci_low_19" double precision,
    "95percent_ci_high_19" double precision,
    quartile_35 integer,
    life_expectancy double precision,
    "95percent_ci_low_20" double precision,
    "95percent_ci_high_20" double precision,
    life_expectancy_aian double precision,
    life_expectancy_aian_95percent_ci_low double precision,
    life_expectancy_aian_95percent_ci_high double precision,
    life_expectancy_asian double precision,
    life_expectancy_asian_95percent_ci_low double precision,
    life_expectancy_asian_95percent_ci_high double precision,
    life_expectancy_black double precision,
    life_expectancy_black_95percent_ci_low double precision,
    life_expectancy_black_95percent_ci_high double precision,
    life_expectancy_hispanic double precision,
    life_expectancy_hispanic_95percent_ci_low double precision,
    life_expectancy_hispanic_95percent_ci_high double precision,
    life_expectancy_white double precision,
    life_expectancy_white_95percent_ci_low double precision,
    life_expectancy_white_95percent_ci_high double precision,
    num_deaths_2 integer,
    age_adjusted_death_rate double precision,
    "95percent_ci_low_21" double precision,
    "95percent_ci_high_21" double precision,
    age_adjusted_mortality_aian double precision,
    age_adjusted_mortality_aian_95percent_ci_low double precision,
    age_adjusted_mortality_aian_95percent_ci_high double precision,
    age_adjusted_mortality_asian double precision,
    age_adjusted_mortality_asian_95percent_ci_low double precision,
    age_adjusted_mortality_asian_95percent_ci_high double precision,
    age_adjusted_mortality_black double precision,
    age_adjusted_mortality_black_95percent_ci_low double precision,
    age_adjusted_mortality_black_95percent_ci_high double precision,
    age_adjusted_mortality_hispanic double precision,
    age_adjusted_mortality_hispanic_95percent_ci_low double precision,
    age_adjusted_mortality_hispanic_95percent_ci_high double precision,
    age_adjusted_mortality_white double precision,
    age_adjusted_mortality_white_95percent_ci_low double precision,
    age_adjusted_mortality_white_95percent_ci_high double precision,
    num_deaths_3 integer,
    child_mortality_rate double precision,
    "95percent_ci_low_22" double precision,
    "95percent_ci_high_22" double precision,
    child_mortality_rate_aian double precision,
    child_mortality_rate_aian_95percent_ci_low double precision,
    child_mortality_rate_aian_95percent_ci_high double precision,
    child_mortality_rate_asian double precision,
    child_mortality_rate_asian_95percent_ci_low double precision,
    child_mortality_rate_asian_95percent_ci_high double precision,
    child_mortality_rate_black double precision,
    child_mortality_rate_black_95percent_ci_low double precision,
    child_mortality_rate_black_95percent_ci_high double precision,
    child_mortality_rate_hispanic double precision,
    child_mortality_rate_hispanic_95percent_ci_low double precision,
    child_mortality_rate_hispanic_95percent_ci_high double precision,
    child_mortality_rate_white double precision,
    child_mortality_rate_white_95percent_ci_low double precision,
    child_mortality_rate_white_95percent_ci_high double precision,
    num_deaths_4 integer,
    infant_mortality_rate double precision,
    "95percent_ci_low_23" double precision,
    "95percent_ci_high_23" double precision,
    infant_mortality_rate_aian double precision,
    infant_mortality_rate_aian_95percent_ci_low double precision,
    infant_mortality_rate_aian_95percent_ci_high double precision,
    infant_mortality_rate_asian double precision,
    infant_mortality_rate_asian_95percent_ci_low double precision,
    infant_mortality_rate_asian_95percent_ci_high double precision,
    infant_mortality_rate_black double precision,
    infant_mortality_rate_black_95percent_ci_low double precision,
    infant_mortality_rate_black_95percent_ci_high double precision,
    infant_mortality_rate_hispanic double precision,
    infant_mortality_rate_hispanic_95percent_ci_low double precision,
    infant_mortality_rate_hispanic_95percent_ci_high double precision,
    infant_mortality_rate_white double precision,
    infant_mortality_rate_white_95percent_ci_low double precision,
    infant_mortality_rate_white_95percent_ci_high double precision,
    percent_frequent_physical_distress double precision,
    "95percent_ci_low_24" double precision,
    "95percent_ci_high_24" double precision,
    percent_frequent_mental_distress double precision,
    "95percent_ci_low_25" double precision,
    "95percent_ci_high_25" double precision,
    percent_adults_with_diabetes double precision,
    "95percent_ci_low_26" double precision,
    "95percent_ci_high_26" double precision,
    num_hiv_cases integer,
    hiv_prevalence_rate double precision,
    num_food_insecure integer,
    percent_food_insecure double precision,
    num_limited_access double precision,
    percent_limited_access_to_healthy_foods double precision,
    num_drug_overdose_deaths integer,
    drug_overdose_mortality_rate double precision,
    "95percent_ci_low_27" double precision,
    "95percent_ci_high_27" double precision,
    drug_overdose_mortality_rate_aian double precision,
    drug_overdose_mortality_rate_aian_95percent_ci_low double precision,
    drug_overdose_mortality_rate_aian_95percent_ci_high double precision,
    drug_overdose_mortality_rate_asian double precision,
    drug_overdose_mortality_rate_asian_95percent_ci_low double precision,
    drug_overdose_mortality_rate_asian_95percent_ci_high double precision,
    drug_overdose_mortality_rate_black double precision,
    drug_overdose_mortality_rate_black_95percent_ci_low double precision,
    drug_overdose_mortality_rate_black_95percent_ci_high double precision,
    drug_overdose_mortality_rate_hispanic double precision,
    drug_overdose_mortality_rate_hispanic_95percent_ci_low double precision,
    drug_overdose_mortality_rate_hispanic_95percent_ci_high double precision,
    drug_overdose_mortality_rate_white double precision,
    drug_overdose_mortality_rate_white_95percent_ci_low double precision,
    drug_overdose_mortality_rate_white_95percent_ci_high double precision,
    num_motor_vehicle_deaths integer,
    motor_vehicle_mortality_rate double precision,
    "95percent_ci_low_28" double precision,
    "95percent_ci_high_28" double precision,
    mv_mortality_rate_aian double precision,
    mv_mortality_rate_aian_95percent_ci_low double precision,
    mv_mortality_rate_aian_95percent_ci_high double precision,
    mv_mortality_rate_asian double precision,
    mv_mortality_rate_asian_95percent_ci_low double precision,
    mv_mortality_rate_asian_95percent_ci_high double precision,
    mv_mortality_rate_black double precision,
    mv_mortality_rate_black_95percent_ci_low double precision,
    mv_mortality_rate_black_95percent_ci_high double precision,
    mv_mortality_rate_hispanic double precision,
    mv_mortality_rate_hispanic_95percent_ci_low double precision,
    mv_mortality_rate_hispanic_95percent_ci_high double precision,
    mv_mortality_rate_white double precision,
    mv_mortality_rate_white_95percent_ci_low double precision,
    mv_mortality_rate_white_95percent_ci_high double precision,
    percent_insufficient_sleep double precision,
    "95percent_ci_low_29" double precision,
    "95percent_ci_high_29" double precision,
    num_uninsured_2 integer,
    percent_uninsured_2 double precision,
    "95percent_ci_low_30" double precision,
    "95percent_ci_high_30" double precision,
    num_uninsured_3 integer,
    percent_uninsured_3 double precision,
    "95percent_ci_low_31" double precision,
    "95percent_ci_high_31" double precision,
    other_primary_care_provider_rate double precision,
    other_primary_care_provider_ratio text COLLATE pg_catalog."default",
    percent_disconnected_youth double precision,
    "95percent_ci_low_32" double precision,
    "95percent_ci_high_32" double precision,
    average_grade_performance double precision,
    average_grade_performance_asian double precision,
    average_grade_performance_black double precision,
    average_grade_performance_hispanic double precision,
    average_grade_performance_white double precision,
    average_grade_performance_2 double precision,
    average_grade_performance_asian_2 double precision,
    average_grade_performance_black_2 double precision,
    average_grade_performance_hispanic_2 double precision,
    average_grade_performance_white_2 double precision,
    median_household_income integer,
    "95percent_ci_low_33" double precision,
    "95percent_ci_high_33" double precision,
    household_income_aian integer,
    household_income_aian_95percent_ci_low double precision,
    household_income_aian_95percent_ci_high double precision,
    household_income_asian integer,
    household_income_asian_95percent_ci_low double precision,
    household_income_asian_95percent_ci_high double precision,
    household_income_black integer,
    household_income_black_95percent_ci_low double precision,
    household_income_black_95percent_ci_high double precision,
    household_income_hispanic integer,
    household_income_hispanic_95percent_ci_low double precision,
    household_income_hispanic_95percent_ci_high double precision,
    household_income_white integer,
    household_income_white_95percent_ci_low double precision,
    household_income_white_95percent_ci_high double precision,
    percent_enrolled_in_free_or_reduced_lunch double precision,
    segregation_index double precision,
    segregation_index_2 double precision,
    homicide_rate double precision,
    "95percent_ci_low_34" double precision,
    "95percent_ci_high_34" double precision,
    homicide_rate_aian double precision,
    homicide_rate_aian_95percent_ci_low double precision,
    homicide_rate_aian_95percent_ci_high double precision,
    homicide_rate_asian double precision,
    homicide_rate_asian_95percent_ci_low double precision,
    homicide_rate_asian_95percent_ci_high double precision,
    homicide_rate_black double precision,
    homicide_rate_black_95percent_ci_low double precision,
    homicide_rate_black_95percent_ci_high double precision,
    homicide_rate_hispanic double precision,
    homicide_rate_hispanic_95percent_ci_low double precision,
    homicide_rate_hispanic_95percent_ci_high double precision,
    homicide_rate_white double precision,
    homicide_rate_white_95percent_ci_low double precision,
    homicide_rate_white_95percent_ci_high double precision,
    num_deaths_5 integer,
    suicide_rate_age_adjusted double precision,
    "95percent_ci_low_35" double precision,
    "95percent_ci_high_35" double precision,
    crude_rate double precision,
    suicide_rate_aian double precision,
    suicide_rate_aian_95percent_ci_low double precision,
    suicide_rate_aian_95percent_ci_high double precision,
    suicide_rate_asian double precision,
    suicide_rate_asian_95percent_ci_low double precision,
    suicide_rate_asian_95percent_ci_high double precision,
    suicide_rate_black double precision,
    suicide_rate_black_95percent_ci_low double precision,
    suicide_rate_black_95percent_ci_high double precision,
    suicide_rate_hispanic double precision,
    suicide_rate_hispanic_95percent_ci_low double precision,
    suicide_rate_hispanic_95percent_ci_high double precision,
    suicide_rate_white double precision,
    suicide_rate_white_95percent_ci_low double precision,
    suicide_rate_white_95percent_ci_high double precision,
    num_firearm_fatalities integer,
    firearm_fatalities_rate double precision,
    "95percent_ci_low_36" double precision,
    "95percent_ci_high_36" double precision,
    firearm_fatalities_rate_aian double precision,
    firearm_fatalities_rate_aian_95percent_ci_low double precision,
    firearm_fatalities_rate_aian_95percent_ci_high double precision,
    firearm_fatalities_rate_asian double precision,
    firearm_fatalities_rate_asian_95percent_ci_low double precision,
    firearm_fatalities_rate_asian_95percent_ci_high double precision,
    firearm_fatalities_rate_black double precision,
    firearm_fatalities_rate_black_95percent_ci_low double precision,
    firearm_fatalities_rate_black_95percent_ci_high double precision,
    firearm_fatalities_rate_hispanic double precision,
    firearm_fatalities_rate_hispanic_95percent_ci_low double precision,
    firearm_fatalities_rate_hispanic_95percent_ci_high double precision,
    firearm_fatalities_rate_white double precision,
    firearm_fatalities_rate_white_95percent_ci_low double precision,
    firearm_fatalities_rate_white_95percent_ci_high double precision,
    non_petitioned_cases text COLLATE pg_catalog."default",
    petitioned_cases text COLLATE pg_catalog."default",
    denominator integer,
    juvenile_arrest_rate double precision,
    average_traffic_volume_per_meter_of_major_roadways double precision,
    num_homeowners integer,
    percent_homeowners double precision,
    "95percent_ci_low_37" double precision,
    "95percent_ci_high_37" double precision,
    num_households_with_severe_cost_burden integer,
    percent_severe_housing_cost_burden double precision,
    "95percent_ci_low_38" double precision,
    "95percent_ci_high_38" double precision,
    population_2 integer,
    percent_less_than_18_years_of_age double precision,
    percent_65_and_over double precision,
    num_black integer,
    percent_black double precision,
    num_american_indian_alaska_native integer,
    percent_american_indian_alaska_native double precision,
    num_asian integer,
    percent_asian double precision,
    num_native_hawaiian_other_pacific_islander integer,
    percent_native_hawaiian_other_pacific_islander double precision,
    num_hispanic integer,
    percent_hispanic double precision,
    num_non_hispanic_white integer,
    percent_non_hispanic_white double precision,
    num_not_proficient_in_english integer,
    percent_not_proficient_in_english double precision,
    "95percent_ci_low_39" double precision,
    "95percent_ci_high_39" double precision,
    percent_female double precision,
    num_rural integer,
    percent_rural double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.health_metrics
    OWNER to postgres;

GRANT ALL ON TABLE public.health_metrics TO postgres;

GRANT SELECT ON TABLE public.health_metrics TO team5k_read;

-- Table: public.postal_codes

-- DROP TABLE public.postal_codes;

CREATE TABLE public.postal_codes
(
    zip integer,
    county text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    stcountyfp integer,
    classfp text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.postal_codes
    OWNER to postgres;

GRANT ALL ON TABLE public.postal_codes TO postgres;

GRANT SELECT ON TABLE public.postal_codes TO team5k_read WITH GRANT OPTION;

-- Table: public.pres_votes_6t

-- DROP TABLE public.pres_votes_6t;

CREATE TABLE public.pres_votes_6t
(
    year integer,
    state text COLLATE pg_catalog."default",
    state_po text COLLATE pg_catalog."default",
    county text COLLATE pg_catalog."default",
    "FIPS" integer,
    office text COLLATE pg_catalog."default",
    candidate text COLLATE pg_catalog."default",
    party text COLLATE pg_catalog."default",
    candidatevotes text COLLATE pg_catalog."default",
    totalvotes integer,
    version integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.pres_votes_6t
    OWNER to postgres;

GRANT ALL ON TABLE public.pres_votes_6t TO postgres;

GRANT SELECT ON TABLE public.pres_votes_6t TO team5k_read WITH GRANT OPTION;

-- Table: public.unemployment

-- DROP TABLE public.unemployment;

CREATE TABLE public.unemployment
(
    "FIPStxt" integer,
    "Stabr" text COLLATE pg_catalog."default",
    "County" text COLLATE pg_catalog."default",
    area_name text COLLATE pg_catalog."default",
    " Civilian_labor_force_2000 " text COLLATE pg_catalog."default",
    " Employed_2000 " text COLLATE pg_catalog."default",
    " Unemployed_2000 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2000" double precision,
    " Civilian_labor_force_2001 " text COLLATE pg_catalog."default",
    " Employed_2001 " text COLLATE pg_catalog."default",
    " Unemployed_2001 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2001" double precision,
    " Civilian_labor_force_2002 " text COLLATE pg_catalog."default",
    " Employed_2002 " text COLLATE pg_catalog."default",
    " Unemployed_2002 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2002" double precision,
    " Civilian_labor_force_2003 " text COLLATE pg_catalog."default",
    " Employed_2003 " text COLLATE pg_catalog."default",
    " Unemployed_2003 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2003" double precision,
    " Civilian_labor_force_2004 " text COLLATE pg_catalog."default",
    " Employed_2004 " text COLLATE pg_catalog."default",
    " Unemployed_2004 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2004" double precision,
    " Civilian_labor_force_2005 " text COLLATE pg_catalog."default",
    " Employed_2005 " text COLLATE pg_catalog."default",
    " Unemployed_2005 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2005" double precision,
    " Civilian_labor_force_2006 " text COLLATE pg_catalog."default",
    " Employed_2006 " text COLLATE pg_catalog."default",
    " Unemployed_2006 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2006" double precision,
    " Civilian_labor_force_2007 " text COLLATE pg_catalog."default",
    " Employed_2007 " text COLLATE pg_catalog."default",
    " Unemployed_2007 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2007" double precision,
    " Civilian_labor_force_2008 " text COLLATE pg_catalog."default",
    " Employed_2008 " text COLLATE pg_catalog."default",
    " Unemployed_2008 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2008" double precision,
    "Civilian_labor_force_2009" text COLLATE pg_catalog."default",
    "Employed_2009" text COLLATE pg_catalog."default",
    "Unemployed_2009" text COLLATE pg_catalog."default",
    "Unemployment_rate_2009" double precision,
    " Civilian_labor_force_2010 " text COLLATE pg_catalog."default",
    " Employed_2010 " text COLLATE pg_catalog."default",
    " Unemployed_2010 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2010" double precision,
    " Civilian_labor_force_2011 " text COLLATE pg_catalog."default",
    " Employed_2011 " text COLLATE pg_catalog."default",
    " Unemployed_2011 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2011" double precision,
    " Civilian_labor_force_2012 " text COLLATE pg_catalog."default",
    " Employed_2012 " text COLLATE pg_catalog."default",
    " Unemployed_2012 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2012" double precision,
    " Civilian_labor_force_2013 " text COLLATE pg_catalog."default",
    " Employed_2013 " text COLLATE pg_catalog."default",
    " Unemployed_2013 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2013" double precision,
    "Rural_urban_continuum_code_2013" integer,
    "Urban_influence_code_2013" integer,
    "Metro_2013" integer,
    " Civilian_labor_force_2014 " text COLLATE pg_catalog."default",
    " Employed_2014 " text COLLATE pg_catalog."default",
    " Unemployed_2014 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2014" double precision,
    " Civilian_labor_force_2015 " text COLLATE pg_catalog."default",
    " Employed_2015 " text COLLATE pg_catalog."default",
    " Unemployed_2015 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2015" integer,
    " Civilian_labor_force_2016 " text COLLATE pg_catalog."default",
    " Employed_2016 " text COLLATE pg_catalog."default",
    " Unemployed_2016 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2016" double precision,
    "Civilian_labor_force_2017" text COLLATE pg_catalog."default",
    "Employed_2017" text COLLATE pg_catalog."default",
    "Unemployed_2017" text COLLATE pg_catalog."default",
    "Unemployment_rate_2017" double precision,
    "Civilian_labor_force_2018" text COLLATE pg_catalog."default",
    "Employed_2018" text COLLATE pg_catalog."default",
    "Unemployed_2018" text COLLATE pg_catalog."default",
    "Unemployment_rate_2018" double precision,
    "Median_Household_Income_2018" text COLLATE pg_catalog."default",
    "Med_HH_Income_Percent_of_State_Total_2018" double precision,
    " Civilian_labor_force_2019 " text COLLATE pg_catalog."default",
    " Employed_2019 " text COLLATE pg_catalog."default",
    " Unemployed_2019 " text COLLATE pg_catalog."default",
    "Unemployment_rate_2019" double precision,
    "STATE" integer,
    "COUNTY_ID" integer,
    "STATENAME" text COLLATE pg_catalog."default",
    "COUNTYNAME" text COLLATE pg_catalog."default",
    "POP_COU" integer,
    "AREA_COU" bigint,
    "POP_URBAN" integer,
    "POPPCT_URBAN" double precision,
    "AREA_URBAN" bigint,
    "AREAPCT_URBAN" double precision,
    "POPDEN_URBAN" double precision,
    "POP_UA" integer,
    "POPPCT_UA" double precision,
    "AREA_UA" bigint,
    "AREAPCT_UA" double precision,
    "POPDEN_UA" double precision,
    "POP_UC" integer,
    "POPPCT_UC" double precision,
    "AREA_UC" integer,
    "AREAPCT_UC" double precision,
    "POPDEN_UC" double precision,
    "POP_RURAL" integer,
    "POPPCT_RURAL" double precision,
    "AREA_RURAL" bigint,
    "AREAPCT_RURAL" double precision,
    "POPDEN_RURAL" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.unemployment
    OWNER to postgres;

GRANT ALL ON TABLE public.unemployment TO postgres;

GRANT SELECT ON TABLE public.unemployment TO team5k_read WITH GRANT OPTION;











