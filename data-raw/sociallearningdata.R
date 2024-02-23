## code to prepare `sociallearningdata` dataset goes here


# Load libraries ----------------------------------------------------------
library(tidyverse)
library(stringi)



# Read data ---------------------------------------------------------------

data_coded <- read.csv("data-raw/ct_analyses2.csv")
data_text <- read.csv("data-raw/text_eHRAF_CT_HG.2.csv", header = TRUE)


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

# Add bias assessment data
# Base data from project
data_documents <- read.csv("data-raw/ct_texts.csv")
data_documents$document_id <- data_documents$document.id

# Document meta data from other projects
reputations_doc_data <- read.csv("data-raw/female_authorship_data_REPUTATIONS_PROJECT.csv")
reputations_doc_data$reputations_doc_data$female_coauthor_present <- reputations_doc_data$female_coauthorship
reputations_doc_data$document_id <- reputations_doc_data$document_ID

punishmnents_doc_data <- read.csv("data-raw/document_meta_data - document_meta_data_COMPLETED_VIOLATIONS_PUNISHMENT_PROJECT.csv")
punishmnents_doc_data$document_id <- punishmnents_doc_data$document_ID

leadership_doc_data <- readxl::read_xlsx("data-raw/authorship.xlsx")
leadership_doc_data$female_coauthor_present <- 0
leadership_doc_data$female_coauthor_present[leadership_doc_data$author_gender=="female"] <- 1
leadership_doc_data <- leadership_doc_data %>%
  dplyr::select(document_ID, female_coauthor_present) %>%
  group_by(document_ID) %>%
  mutate(female_coauthor_present = sum(female_coauthor_present))
leadership_doc_data$female_coauthor_present[leadership_doc_data$female_coauthor_present==2] <- 1
leadership_doc_data$document_id <- leadership_doc_data$document_ID

# Merge all projects metadata
data_documents <- left_join(data_documents, reputations_doc_data) %>%
  left_join(., punishmnents_doc_data) %>%
  left_join(., leadership_doc_data)

data_documents$document_publication_date <- coalesce(data_documents$document_publication_date,
                                                     data_documents$publication.date)
data_documents <- data_documents %>%
  dplyr::select(document_id, document_publication_date, document.type, avg.fielddate, field.date,
                coverage.date, document_page_count,
                source.evaluation, female_coauthorship)

data_documents$culture_id <- substr(data_documents$document_id, 1, 4)

# write to CSV for manual data filling
write_csv(data_documents, "data_documents.csv")


#fin
usethis::use_data(data_coded, data_text, overwrite = TRUE)
