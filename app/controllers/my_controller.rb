class MyController < ApplicationController
  if defined? RailsAuth
    include RailsAuth::Application
    before_action :require_login
  end

end
