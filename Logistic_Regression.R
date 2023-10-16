# Besmellaherrahmanerrahim

# Import CSV file in R
Survey_Data <- read.csv("Skilled Labor Survey_NBH_Clean.csv")

# Remove the first two rows after the header
Survey_Data <- Survey_Data[-c(1, 2), ]

# Remove the first 16 columns
Survey_Data <- Survey_Data[, -c(1:17)]

# Convert "yes" to 1 and "no" to 0 in the "Q1" column
Survey_Data$Q1 <- ifelse(Survey_Data$Q1 == "Yes", 1, 0)

# Y is having mentor or role model
#H1a: Those that reported having a mentor or role model in the construction industry had a higher opinion of the prestige of a career in construction.

# Y is having immediate family member mentor or role model
#H2a: Those that reported having an immediate family member as a mentor or role model had a higher opinion of the benefits construction offers society.

# Y is having mentor or role model
#H3a: Opinion on room for advancement in the construction industry is higher for those who reported having a mentor or role model.

# Y construction is a family business
#H4a: Those that reported construction is a family business had a higher opinion of construction industry pay.

# Y construction is a family business
#H5a: Those that reported construction is a family business had a higher opinion of different career options in the construction industry

# Y greatest career influence from impact situations
#H6a: Those that reported greatest career influence from impact situations had a lower opinion of construction industry being physically tough.

# Y previous construction experience (which columns)
#H7a: Those that reported previous construction experience had a higher opinion construction industry being physically tough.
