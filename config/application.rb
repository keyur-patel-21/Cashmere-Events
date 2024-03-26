require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cashmere
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.active_storage.variant_processor = :mini_magick
    config.assets.initialize_on_precompile = false
    config.active_job.queue_adapter = :sidekiq

    config.active_record.encryption.primary_key = Rails.application.credentials[:active_record_encryption][:primary_key]
    config.active_record.encryption.deterministic_key = Rails.application.credentials[:active_record_encryption][:deterministic_key]
    config.active_record.encryption.key_derivation_salt = Rails.application.credentials[:active_record_encryption][:key_derivation_salt]
  end
end
