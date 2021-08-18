require_relative 'boot'
%w(
  active_record/railtie
  active_storage/engine
  action_controller/railtie
  action_view/railtie
  action_mailer/railtie
  active_job/railtie
  action_cable/engine
  action_mailbox/engine
  action_text/engine
  rails/test_unit/railtie
).each do |railtie|
  begin
    require railtie
  rescue LoadError
  end
end

Bundler.require(*Rails.groups)
#require 'rails_wechat'

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
