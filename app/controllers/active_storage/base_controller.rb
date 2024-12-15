# frozen_string_literal: true

# Override controller in active storage library
class ActiveStorage::BaseController < ActionController::Base
  include ActiveStorage::Streaming if defined? ActiveStorage::Streaming

  protect_from_forgery with: :exception

  self.etag_with_template_digest = false

  before_action do
    ActiveStorage::Current.url_options = {
      protocol: request.protocol,
      host: request.host,
      port: request.port
    }
  end
end
