# Besmellaherrahmanerrahim

# Import CSV file in R
Survey_Data <- read.csv("Skilled Labor Survey_NBH_Clean.csv")

# Remove the first two rows after the header
Survey_Data <- Survey_Data[-c(1, 2), ]

# Remove the first 16 columns
Survey_Data <- Survey_Data[, -c(1:17)]



#1---------------------- Y is having mentor or role model (t-test _ Q4.1 & {Q7, Q10})
#H1a: Those that reported having a mentor or role model in the construction industry had a higher opinion of the prestige of a career in construction.

#2---------------------- Y is having immediate family member mentor or role model (t-test _ Q4.8 & {Q7_1 & Q10_1})
#H2a: Those that reported having an immediate family member as a mentor or role model had a higher opinion of the benefits construction offers society.

#3---------------------- Y is having mentor or role model (t-test _ Q 4.9 & {Q7, Q10})
#H3a: Opinion on room for advancement in the construction industry is higher for those who reported having a mentor or role model.





#4---------------------- Y construction is a family business (t-test _ Q5_6 {family bussiness} & Q4_3 {pay better})
#H4a: Those that reported construction is a family business had a higher opinion of construction industry pay.

# Create a subset data frame from columns A and B
subset_df4 <- Survey_Data[, c("Q5_6", "Q4_3")]

# Convert 5-scale responses in the "A" column to 0 and 1, assuming null as 0
subset_df4$Q5_6 <- ifelse(is.na(subset_df4$Q5_6) | subset_df4$Q5_6 <= 2, 0, 1)

# Remove rows with missing values in columns A or B
subset_df4 <- subset_df4[complete.cases(subset_df4), ]

# Convert column A to continuous numeric
subset_df4$Q4_3 <- as.numeric(subset_df4$Q4_3)

# Assuming column A is the outcome variable (0 or 1)
# and column B is the predictor variable

# Fit a logistic regression model
logistic_model <- glm(Q5_6 ~ Q4_3, data = subset_df4, family = binomial(link = "logit"))

# Display the summary of the logistic regression model
summary(logistic_model)


#5---------------------- Y construction is a family business (t-test _ Q5_6 & ??? Maybe Q5_4)
#H5a: Those that reported construction is a family business had a higher opinion of different career options in the construction industry

#6---------------------- Y greatest career influence from impact situations (???)
#H6a: Those that reported greatest career influence from impact situations had a lower opinion of construction industry being physically tough.

#7---------------------- Y previous construction experience (t-test _ Q1, Q2, Q3 & ???)
#H7a: Those that reported previous construction experience had a higher opinion construction industry being physically tough.


# ------------------------------------------------------------Parking Lot
# Convert "yes" to 1 and "no" to 0 in the "Q1" column
#Survey_Data$Q1 <- ifelse(Survey_Data$Q1 == "Yes", 1, 0)
