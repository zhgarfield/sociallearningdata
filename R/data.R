#' @title data_culture
#' @description Culture-level metadata
#' @format A data frame with 27 rows and 10 variables:
#' \describe{
#'   \item{\code{culture_id}}{character The unique identifier for culture. OWC ID, given by HRAF.}
#'   \item{\code{Name}}{character HRAF given society name.}
#'   \item{\code{Region}}{character HRAF given continental region.}
#'   \item{\code{Subregion}}{character HRAF given continental sub-region.}
#'   \item{\code{Subsistence Type}}{character HRAF given subsistence type.}
#'   \item{\code{N_pages}}{double COLUMN_DESCRIPTION}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"data_culture"

#' @title data_text
#' @description Raw text and text-level data
#' @format A data frame with 164 rows and 180 variables:
#' \describe{
#'   \item{\code{document_ID}}{character eHRAF document ID}
#'   \item{\code{page}}{character eHRAF document page number(s)}
#'   \item{\code{text}}{character eHRAF text}
#'   \item{\code{OCMs}}{character All OCM codes associated with eHRAF text}
#'   \item{\code{Combined}}{character Logical indicating is multiple eHRAF paragraphs were combined}
#'   \item{\code{text_record_ID}}{integer Internally assigned text ID}
#'   \item{\code{Transmission of skills (868)}}{integer eHRAF OCM code}
#'   \item{\code{Age stratification (561)}}{integer eHRAF OCM code}
#'   \item{\code{Childhood activities (857)}}{integer eHRAF OCM code}
#'   \item{\code{Transmission of cultural norms (867)}}{integer eHRAF OCM code}
#'   \item{\code{Status of children (858)}}{integer eHRAF OCM code}
#'   \item{\code{Status of adolescents (882)}}{integer eHRAF OCM code}
#'   \item{\code{Activities of the aged (887)}}{integer eHRAF OCM code}
#'   \item{\code{Status and treatment of the aged (888)}}{integer eHRAF OCM code}
#'   \item{\code{Flora (137)}}{integer eHRAF OCM code}
#'   \item{\code{Descriptive somatology (142)}}{integer eHRAF OCM code}
#'   \item{\code{Drives and emotions (152)}}{integer eHRAF OCM code}
#'   \item{\code{Historical reconstruction (174)}}{integer eHRAF OCM code}
#'   \item{\code{Acculturation and culture contact (177)}}{integer eHRAF OCM code}
#'   \item{\code{Functional and adaptational interpretations (182)}}{integer eHRAF OCM code}
#'   \item{\code{Cultural participation (184)}}{integer eHRAF OCM code}
#'   \item{\code{Hunting and trapping (224)}}{integer eHRAF OCM code}
#'   \item{\code{Food preparation (252)}}{integer eHRAF OCM code}
#'   \item{\code{Normal garb (291)}}{integer eHRAF OCM code}
#'   \item{\code{Special garments (292)}}{integer eHRAF OCM code}
#'   \item{\code{Personal grooming (302)}}{integer eHRAF OCM code}
#'   \item{\code{Body alterations (304)}}{integer eHRAF OCM code}
#'   \item{\code{Dwellings (342)}}{integer eHRAF OCM code}
#'   \item{\code{Public structures (344)}}{integer eHRAF OCM code}
#'   \item{\code{Furniture (352)}}{integer eHRAF OCM code}
#'   \item{\code{Settlement patterns (361)}}{integer eHRAF OCM code}
#'   \item{\code{Paint and dye manufacture (386)}}{integer eHRAF OCM code}
#'   \item{\code{General tools (412)}}{integer eHRAF OCM code}
#'   \item{\code{Utensils (415)}}{integer eHRAF OCM code}
#'   \item{\code{Labor supply and employment (464)}}{integer eHRAF OCM code}
#'   \item{\code{Wages and salaries (465)}}{integer eHRAF OCM code}
#'   \item{\code{Burden carrying (482)}}{integer eHRAF OCM code}
#'   \item{\code{Postures (516)}}{integer eHRAF OCM code}
#'   \item{\code{Music (533)}}{integer eHRAF OCM code}
#'   \item{\code{Musical instruments (534)}}{integer eHRAF OCM code}
#'   \item{\code{Dance (535)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnic stratification (563)}}{integer eHRAF OCM code}
#'   \item{\code{Social relationships and groups (571)}}{integer eHRAF OCM code}
#'   \item{\code{Nuptials (585)}}{integer eHRAF OCM code}
#'   \item{\code{Adoption (597)}}{integer eHRAF OCM code}
#'   \item{\code{Behavior toward non-relatives (609)}}{integer eHRAF OCM code}
#'   \item{\code{Lineages (613)}}{integer eHRAF OCM code}
#'   \item{\code{Community structure (621)}}{integer eHRAF OCM code}
#'   \item{\code{Community heads (622)}}{integer eHRAF OCM code}
#'   \item{\code{Infant feeding (853)}}{integer eHRAF OCM code}
#'   \item{\code{Infant care (854)}}{integer eHRAF OCM code}
#'   \item{\code{Puberty and initiation (881)}}{integer eHRAF OCM code}
#'   \item{\code{Domesticated animals (231)}}{integer eHRAF OCM code}
#'   \item{\code{Adolescent activities (883)}}{integer eHRAF OCM code}
#'   \item{\code{Sex training (864)}}{integer eHRAF OCM code}
#'   \item{\code{Premarital sex relations (836)}}{integer eHRAF OCM code}
#'   \item{\code{Annual cycle (221)}}{integer eHRAF OCM code}
#'   \item{\code{Collecting (222)}}{integer eHRAF OCM code}
#'   \item{\code{Games (524)}}{integer eHRAF OCM code}
#'   \item{\code{Gambling (525)}}{integer eHRAF OCM code}
#'   \item{\code{Grandparents and grandchildren (603)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnopsychology (828)}}{integer eHRAF OCM code}
#'   \item{\code{Status, role, and prestige (554)}}{integer eHRAF OCM code}
#'   \item{\code{Visiting and hospitality (574)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnobotany (824)}}{integer eHRAF OCM code}
#'   \item{\code{Revelation and divination (787)}}{integer eHRAF OCM code}
#'   \item{\code{Theoretical orientation in research and its results (121)}}{integer eHRAF OCM code}
#'   \item{\code{Development and maturation (856)}}{integer eHRAF OCM code}
#'   \item{\code{Arranging a marriage (584)}}{integer eHRAF OCM code}
#'   \item{\code{Parents-in-law and children-in-law (606)}}{integer eHRAF OCM code}
#'   \item{\code{Adulthood (885)}}{integer eHRAF OCM code}
#'   \item{\code{Property in movables (422)}}{integer eHRAF OCM code}
#'   \item{\code{Labor and leisure (461)}}{integer eHRAF OCM code}
#'   \item{\code{Regulation of marriage (582)}}{integer eHRAF OCM code}
#'   \item{\code{Family relationships (593)}}{integer eHRAF OCM code}
#'   \item{\code{Fauna (136)}}{integer eHRAF OCM code}
#'   \item{\code{Child care (855)}}{integer eHRAF OCM code}
#'   \item{\code{Kinship terminology (601)}}{integer eHRAF OCM code}
#'   \item{\code{Kin relationships (602)}}{integer eHRAF OCM code}
#'   \item{\code{Gender status (562)}}{integer eHRAF OCM code}
#'   \item{\code{Shamans and psychotherapists (756)}}{integer eHRAF OCM code}
#'   \item{\code{Transmission of beliefs (869)}}{integer eHRAF OCM code}
#'   \item{\code{Residence (591)}}{integer eHRAF OCM code}
#'   \item{\code{Household (592)}}{integer eHRAF OCM code}
#'   \item{\code{Conception (842)}}{integer eHRAF OCM code}
#'   \item{\code{Techniques of socialization (861)}}{integer eHRAF OCM code}
#'   \item{\code{Grammar (193)}}{integer eHRAF OCM code}
#'   \item{\code{Phonology (194)}}{integer eHRAF OCM code}
#'   \item{\code{Cleanliness training (863)}}{integer eHRAF OCM code}
#'   \item{\code{Majority (884)}}{integer eHRAF OCM code}
#'   \item{\code{Interviewing in research (124)}}{integer eHRAF OCM code}
#'   \item{\code{Exchange and transfers (430)}}{integer eHRAF OCM code}
#'   \item{\code{Observation in research (123)}}{integer eHRAF OCM code}
#'   \item{\code{Sociolinguistics (195)}}{integer eHRAF OCM code}
#'   \item{\code{Cordage (283)}}{integer eHRAF OCM code}
#'   \item{\code{Inheritance (428)}}{integer eHRAF OCM code}
#'   \item{\code{Rule of descent (611)}}{integer eHRAF OCM code}
#'   \item{\code{Religious offenses (688)}}{integer eHRAF OCM code}
#'   \item{\code{Magic (789)}}{integer eHRAF OCM code}
#'   \item{\code{Weights and measures (804)}}{integer eHRAF OCM code}
#'   \item{\code{Weapons (411)}}{integer eHRAF OCM code}
#'   \item{\code{Forest products (314)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnogeography (823)}}{integer eHRAF OCM code}
#'   \item{\code{Ethos (181)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnozoology (825)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnoanatomy (826)}}{integer eHRAF OCM code}
#'   \item{\code{Division of labor by gender (462)}}{integer eHRAF OCM code}
#'   \item{\code{Vocational education (874)}}{integer eHRAF OCM code}
#'   \item{\code{Material not relevant (000)}}{integer eHRAF OCM code}
#'   \item{\code{Information sources listed in other works (113)}}{integer eHRAF OCM code}
#'   \item{\code{Missions (797)}}{integer eHRAF OCM code}
#'   \item{\code{Elementary education (872)}}{integer eHRAF OCM code}
#'   \item{\code{Educational theory and methods (876)}}{integer eHRAF OCM code}
#'   \item{\code{Comparative evidence (171)}}{integer eHRAF OCM code}
#'   \item{\code{Mythology (773)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnometeorology (821)}}{integer eHRAF OCM code}
#'   \item{\code{Ethics (577)}}{integer eHRAF OCM code}
#'   \item{\code{Decorative art (531)}}{integer eHRAF OCM code}
#'   \item{\code{Sacred objects and places (778)}}{integer eHRAF OCM code}
#'   \item{\code{Literature (538)}}{integer eHRAF OCM code}
#'   \item{\code{Routes (487)}}{integer eHRAF OCM code}
#'   \item{\code{Cultural identity and pride (186)}}{integer eHRAF OCM code}
#'   \item{\code{Location (131)}}{integer eHRAF OCM code}
#'   \item{\code{Population (161)}}{integer eHRAF OCM code}
#'   \item{\code{Sociocultural trends (178)}}{integer eHRAF OCM code}
#'   \item{\code{Norms (183)}}{integer eHRAF OCM code}
#'   \item{\code{Mats and basketry (285)}}{integer eHRAF OCM code}
#'   \item{\code{Mortality (165)}}{integer eHRAF OCM code}
#'   \item{\code{Social control (626)}}{integer eHRAF OCM code}
#'   \item{\code{General character of religion (771)}}{integer eHRAF OCM code}
#'   \item{\code{Eschatology (775)}}{integer eHRAF OCM code}
#'   \item{\code{Personality development (155)}}{integer eHRAF OCM code}
#'   \item{\code{Theory of disease (753)}}{integer eHRAF OCM code}
#'   \item{\code{Organized ceremonial (796)}}{integer eHRAF OCM code}
#'   \item{\code{Locomotion (481)}}{integer eHRAF OCM code}
#'   \item{\code{Childbirth (844)}}{integer eHRAF OCM code}
#'   \item{\code{Anthropometry (141)}}{integer eHRAF OCM code}
#'   \item{\code{Boats (501)}}{integer eHRAF OCM code}
#'   \item{\code{Property system (421)}}{integer eHRAF OCM code}
#'   \item{\code{Special languages (198)}}{integer eHRAF OCM code}
#'   \item{\code{Medium of exchange (436)}}{integer eHRAF OCM code}
#'   \item{\code{Mode of marriage (583)}}{integer eHRAF OCM code}
#'   \item{\code{Mourning (765)}}{integer eHRAF OCM code}
#'   \item{\code{Ceremonial during infancy and childhood (852)}}{integer eHRAF OCM code}
#'   \item{\code{Dying (763)}}{integer eHRAF OCM code}
#'   \item{\code{Adjustment processes (154)}}{integer eHRAF OCM code}
#'   \item{\code{Athletic sports (526)}}{integer eHRAF OCM code}
#'   \item{\code{Fishing (226)}}{integer eHRAF OCM code}
#'   \item{\code{Complete texts of hraf documents (116)}}{integer eHRAF OCM code}
#'   \item{\code{Public education (658)}}{integer eHRAF OCM code}
#'   \item{\code{Teachers (875)}}{integer eHRAF OCM code}
#'   \item{\code{Shipbuilding (396)}}{integer eHRAF OCM code}
#'   \item{\code{Woodworking (322)}}{integer eHRAF OCM code}
#'   \item{\code{Ontogenetic data (145)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnophysiology (827)}}{integer eHRAF OCM code}
#'   \item{\code{Ethnosociology (829)}}{integer eHRAF OCM code}
#'   \item{\code{Alcoholic beverages (273)}}{integer eHRAF OCM code}
#'   \item{\code{Aggression training (865)}}{integer eHRAF OCM code}
#'   \item{\code{Marine hunting (225)}}{integer eHRAF OCM code}
#'   \item{\code{Tillage (241)}}{integer eHRAF OCM code}
#'   \item{\code{Diet (262)}}{integer eHRAF OCM code}
#'   \item{\code{Socialization (860)}}{integer eHRAF OCM code}
#'   \item{\code{Religious and educational structures (346)}}{integer eHRAF OCM code}
#'   \item{\code{Independence training (866)}}{integer eHRAF OCM code}
#'   \item{\code{Basis of marriage (581)}}{integer eHRAF OCM code}
#'   \item{\code{Avuncular and nepotic relatives (604)}}{integer eHRAF OCM code}
#'   \item{\code{Spirits and gods (776)}}{integer eHRAF OCM code}
#'   \item{\code{Congregations (794)}}{integer eHRAF OCM code}
#'   \item{\code{Weaning and food training (862)}}{integer eHRAF OCM code}
#'   \item{\code{Menstruation (841)}}{integer eHRAF OCM code}
#'   \item{\code{Etiquette (576)}}{integer eHRAF OCM code}
#'   \item{\code{Linguistic identification (197)}}{integer eHRAF OCM code}
#'   \item{\code{Extended families (596)}}{integer eHRAF OCM code}
#'   \item{\code{Preservation and storage of food (251)}}{integer eHRAF OCM code}
#'   \item{\code{Sexual intercourse (833)}}{integer eHRAF OCM code}
#'   \item{\code{General sex restrictions (834)}}{integer eHRAF OCM code}
#'   \item{\code{Ingroup antagonisms (578)}}{integer eHRAF OCM code}
#'   \item{\code{Outbuildings (343)}}{integer eHRAF OCM code}
#'   \item{\code{Social personality (156)}}{integer eHRAF OCM code}
#'   \item{\code{Verbal arts (5310)}}{integer eHRAF OCM code}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"data_text"

#' @title data_coded
#' @description Researcher-coded social learning measures at the instance level
#' @format A data frame with 281 rows and 12 variables:
#' \describe{
#'   \item{\code{name}}{character eHRAF culture name}
#'   \item{\code{latitude}}{double Estimated population latitude}
#'   \item{\code{longitude}}{double Estimated population longitude}
#'   \item{\code{region}}{character eHRAF Region}
#'   \item{\code{subregion}}{character eHRAF Subregion}
#'   \item{\code{age.of.learner}}{character Catigorical age estimation of learner}
#'   \item{\code{domain}}{character Social domain of learning}
#'   \item{\code{mode}}{character Mode of social learning}
#'   \item{\code{process}}{character Process of social learning}
#'   \item{\code{sex}}{character Gender of learner(s)}
#'   \item{\code{coding_ID}}{double Internally assigned ID for coding}
#'   \item{\code{text_record_ID}}{integer Associated text ID}
#'}
#' @source \url{https://doi.org/10.1007/978-4-431-55997-9_2}
"data_coded"

#' @title data_bias
#' @description Data for meta-ethnographic bias assessment
#' @format A data frame with 85 rows and 10 variables:
#' \describe{
#'   \item{\code{document_ID}}{character eHRAF document ID}
#'   \item{\code{document_publication_date}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{document.type}}{character COLUMN_DESCRIPTION}
#'   \item{\code{avg.fielddate}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{field.date}}{character COLUMN_DESCRIPTION}
#'   \item{\code{coverage.date}}{character COLUMN_DESCRIPTION}
#'   \item{\code{document_page_count}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{source.evaluation}}{character COLUMN_DESCRIPTION}
#'   \item{\code{female_coauthorship}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{culture_id}}{character COLUMN_DESCRIPTION}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"data_bias"
