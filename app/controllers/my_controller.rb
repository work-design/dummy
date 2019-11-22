class MyController < ApplicationController
  include RailsAuth::Controller
  before_action :require_login

end
