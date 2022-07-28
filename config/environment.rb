# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  address: "smtp.mail.yahoo.com",
  port: 587,
  domain: "yahoo.in",
  user_name: "keyurpatoliya13@yahoo.in",
  password: "dthhbyazkuuwsbfd",
  authentication: "plain",
  enable_starttls_auto: true,
}
