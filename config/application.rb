require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Flixter
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

AWS_ACCESS_KEY: "AKIAJYTZKTSDDG3BP7LA"
AWS_SECRET_KEY: "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"
AWS_BUCKET: "my-bucket-name-2"
