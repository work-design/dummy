require_relative 'boot'
require 'rails_com/all'

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults 6.0

  end
end

ENV['EDITOR'] = 'code --wait'
SETTING = Rails.application.credentials
