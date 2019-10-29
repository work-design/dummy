class AdminController < ApplicationController
  include RailsAuth::Application if defined?(RailsAuth)
  include RailsOrg::Application if defined?(RailsOrg)

  default_form_builder 'AdminBuilder' do |config|

  end

end
