# IMPORTANT: This file is generated by cucumber-rails - edit with caution.
# Cucumber will automatically load all features/**/*.rb files.

require 'cucumber/rails'

# Ensures that Rails path helpers like `new_user_session_path` work in your steps
World(Rails.application.routes.url_helpers)

# Set whether Rails should rescue exceptions and display error pages.
ActionController::Base.allow_rescue = false

# Database cleaner setup to ensure clean state before each scenario
require 'database_cleaner/active_record'

# Use transactions for non-JS tests and truncation for JS tests
DatabaseCleaner.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation

# Start/clean the database before and after each scenario
Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end

# Automatically clean the database using transactional fixtures between tests
Cucumber::Rails::Database.autorun_database_cleaner = true
