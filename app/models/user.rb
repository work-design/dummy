class User < ApplicationRecord
  include RailsAuth::User if defined? RailsAuth
end
