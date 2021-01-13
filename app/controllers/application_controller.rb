class ApplicationController < ActionController::Base
  include RailsCom::Application
  include Auth::Controller::Application if defined? RailsAuth
  include Roled::Controller::Application if defined? RailsRole

  protect_from_forgery with: :exception, unless: -> { json_format? }
end
