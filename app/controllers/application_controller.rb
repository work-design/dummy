class ApplicationController < ActionController::Base
  if defined? RailsCom
    include Com::Controller::ErrHandler
    include RailsCom::Application
    include Com::Controller::Admin
  end
  include Auth::Controller::Application if defined? RailsAuth
  include Roled::Controller::Application if defined? RailsRole
  include Org::Controller::Application if defined? RailsOrg

  protect_from_forgery with: :exception, unless: -> { json_format? }
end
