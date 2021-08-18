require_relative 'boot'
require 'rails_com/all'
Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults Rails::VERSION::STRING.to_f

    config.time_zone = 'Beijing'
    config.i18n.default_locale = :zh

    config.hosts += [
      'test.one.work'
    ]
  end
end

ENV['EDITOR'] = 'code --wait'
SETTING = Rails.application.credentials
