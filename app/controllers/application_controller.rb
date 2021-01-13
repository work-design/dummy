class ApplicationController < ActionController::Base
  include RailsCom::Application
  include AuthController::Application if defined? RailsAuth

  protect_from_forgery with: :exception, unless: -> { json_format? }
end
