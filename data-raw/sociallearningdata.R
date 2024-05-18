## code to prepare `sociallearningdata` dataset goes here


# Load libraries ----------------------------------------------------------
library(tidyverse)
library(stringi)



# Read data ---------------------------------------------------------------

data_coded <- read.csv("data-raw/ct_analyses2.csv")
data_text <- read.csv("data-raw/text_eHRAF_CT_HG.2.csv", header = TRUE)
data_bias <- read.csv("data-raw/bias_data.csv", header = TRUE)



# Variable management -----------------------------------------------------

#Update code sheet ID (to eliminate overlap with Text record ID values)

data_coded <- data_coded %>%
  mutate(coding_ID = cs_ID*13) %>%
  mutate(text_record_ID = cs_textrec_ID) %>%
  select(-c(cs_ID, cs_textrec_ID))

data_text <- data_text %>%
  mutate(text_record_ID = cs_textrec_ID) %>%
  select(-cs_textrec_ID)

# Create columns for all OCM codes in data text
all_OCM <- stri_split(data_text$OCMs, fixed="\n")

# Create list of all OCM codes for each text
all_OCM_all <- tibble(all_OCM) %>%
  unnest(cols = c(all_OCM))

# Create vector of unique OCM codes in data
all_OCM_all_unique <- unique(all_OCM_all)

# Create data frame with OCM columns
data_text_ocm_cols <- data.frame((t(all_OCM_all_unique)))
names(data_text_ocm_cols) <- data_text_ocm_cols[1,]
data_text_ocm_cols[,]<-0
# Add to data_text
data_text <- cbind(data_text, data_text_ocm_cols)


# Add counts of OCMs to OCM columns
list <- strsplit(as.character(data_text$OCMs), '\n')
lvls <- unique(unlist(list))
data_text[, lvls] <- t(sapply(1:nrow(data_text), function(z){as.integer(lvls %in% list[[z]])}))


# Create culture metadata
data_culture <- data_bias %>%
  select(culture_id)

# Read in eHRAF metadata
eHRAF_culture_data <- readxl::read_xlsx("data-raw/eHRAF-World-Cultures_All.xlsx", sheet = 1)
eHRAF_culture_data$culture_id <- stringr::str_to_lower(eHRAF_culture_data$`OWC Code`)

data_culture <- left_join(data_culture, eHRAF_culture_data)

#fin
usethis::use_data(data_coded, data_text, data_bias, data_culture, overwrite = TRUE)
