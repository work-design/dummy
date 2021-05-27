class ApplicationController < ActionController::Base
  include RailsCom::Application
  include Auth::Controller::Application if defined? RailsAuth
  include Roled::Controller::Application if defined? RailsRole
  include Org::Controller::Application if defined?(RailsOrg)

  protect_from_forgery with: :exception, unless: -> { json_format? }
end
