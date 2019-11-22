class ApplicationController < ActionController::Base
  include RailsCom::Application
  include RailsAuth::Application if defined? RailsAuth
  
  protect_from_forgery with: :exception, unless: -> { json_format? }
end
