codebook <- tibble(
  variable_name = c(
    "gender", "age", "annual_income", "employment_status", 
    "relationship_status", "loneliness_frequency", "group_calls", 
    "video_call_frequency", "social_media_platform", "paid_online_services", 
    "motivation_online_community", "platform_preference", "real_name_usage", 
    "subscription_payments", "sharing_comfort", "daily_meaningful_contacts", 
    "friend_count"
  ),
  question = c(
    "What is your gender?",
    "What is your age?",
    "What is your annual income?",
    "What is your employment status?",
    "What is your relationship status?",
    "How often do you feel lonely or isolated?",
    "Have you ever participated in group calls or support groups online?",
    "How often do you communicate with friends or family through video calls?",
    "Which social media platforms do you use most frequently?",
    "Do you subscribe to any paid online communities or services?",
    "What motivates you to join a new online community?",
    "What do you look for when choosing a platform for social interaction?",
    "How often do you use your real name on online services/platforms?",
    "How many subscription-based payments are you actively using right now?",
    "How comfortable are you sharing personal experiences in an online setting?",
    "How many people do you come into meaningful contact with on a daily basis?",
    "How many people could you call your friends?"
  )
)


set.seed(123)
data <- tibble(
  gender = sample(c("Female", "Male"), 100, replace = TRUE),
  age = round(rexp(100, rate = 0.05) + 18),  # Skewed age distribution
  annual_income = sample(c("0-15000 €", "15000-25000 €", "25000-35000 €", "35000-45000 €", "45000+ €"), 100, replace = TRUE),
  employment_status = sample(c("Unemployed", "Part-time", "Full-time", "Freelancer"), 100, replace = TRUE),
  relationship_status = sample(c("Single", "In a relationship", "Married", "Divorced"), 100, replace = TRUE),
  loneliness_frequency = sample(c("Never", "Rarely", "Sometimes", "Often", "Always"), 100, replace = TRUE),
  group_calls = sample(c("Yes", "No"), 100, replace = TRUE),
  video_call_frequency = sample(c("Never", "Rarely", "Sometimes", "Often", "Always"), 100, replace = TRUE),
  social_media_platform = sample(c("Instagram", "TikTok", "Facebook", "Twitter"), 100, replace = TRUE),
  paid_online_services = sample(c("Yes", "No"), 100, replace = TRUE),
  motivation_online_community = sample(c("Learning new skills", "Meeting new people", "Support for personal issues", "Entertainment"), 100, replace = TRUE),
  platform_preference = sample(c("Ease of use", "Privacy features", "Community guidelines", "Content quality"), 100, replace = TRUE),
  real_name_usage = sample(c("Never", "Rarely", "Sometimes", "Often", "Always"), 100, replace = TRUE),
  subscription_payments = sample(c("None", "1-3", "4-5", "6 or more"), 100, replace = TRUE),
  sharing_comfort = sample(c("Very uncomfortable", "Uncomfortable", "Neutral", "Comfortable", "Very comfortable"), 100, replace = TRUE),
  daily_meaningful_contacts = sample(c("None", "1-5", "6-10", "11-20", "20 and more"), 100, replace = TRUE),
  friend_count = sample(c("None", "1-3", "4-6", "6-8", "8 and more"), 100, replace = TRUE)
)

#install.packages("see")

install.packages('knitr')
install.packages('kableExtra')

install.packages("writexl")  
library(writexl)

write_xlsx(data, "data.xlsx")
getwd()
