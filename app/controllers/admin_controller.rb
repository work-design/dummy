class AdminController < ApplicationController
  include RailsAuth::Application

  default_form_builder 'AdminBuilder' do |config|

  end

end
