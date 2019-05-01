class MyController < ApplicationController
  include RailsAuth::Controller
  before_action :require_login

  default_form_builder 'MyFormBuilder' do |config|

  end

end
