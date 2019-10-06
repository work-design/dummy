class ApplicationController < ActionController::Base
  include RailsCom::Application
  include RailsAuth::Application
  
  protect_from_forgery with: :exception, unless: -> { json_format? }
  default_form_builder 'ApplicationFormBuilder'
end
