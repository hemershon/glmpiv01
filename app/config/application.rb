require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

module Masonicmanagement
  class Application < Rails::Application
    config.load_defaults 6.1

    config.assets.initialize_on_precompile = false
    config.cache_classes = true
    config.serve_static_assets = true
    config.assets.compile = true
    config.assets.digest = true
  end
end
