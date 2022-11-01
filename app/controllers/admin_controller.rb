class AdminController < ApplicationController
  include Com::Controller::Admin if defined? RailsCom
end
