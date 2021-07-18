require_relative 'boot'
require 'rails_com/all'

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults 6.1

    config.time_zone = 'Beijing'
    config.i18n.default_locale = :zh

  end
end

ENV['EDITOR'] = 'code --wait'
SETTING = Rails.application.credentials
