class ApplicationController < ActionController::Base
  if defined? RailsCom
    include Com::Controller::ErrHandler
    include Com::Controller::Application
    include Roled::Controller::Application
  end
  include Auth::Controller::Application if defined? RailsAuth
  include Org::Controller::Application if defined? RailsOrg

  protect_from_forgery with: :exception, unless: -> { json_format? }
end
