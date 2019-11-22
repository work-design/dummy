class AdminController < ApplicationController
  include RailsAuth::Application if defined?(RailsAuth)
  include RailsOrg::Application if defined?(RailsOrg)

end
