require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SmartDemo
  class Application < Rails::Application
    config.autoload_paths += %w{
      lib
      app/services/scraper
    }

    config.time_zone = 'Beijing'
    config.active_record.default_timezone = :local
    config.active_record.raise_in_transactional_callbacks = true

    config.generators.helper = false
    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.test_unit = false
  end
end
