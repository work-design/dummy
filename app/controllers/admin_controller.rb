class AdminController < ApplicationController
  include RailsAuth::Controller
  include RailsRole::Controller

  default_form_builder 'AdminBuilder' do |config|

  end

end
