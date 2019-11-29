class User < ApplicationRecord
  include RailsAuth::User if defined? RailsAuth
  include RailsNotice::Receiver if defined? RailsNotice
  include RailsOrg::User if defined? RailsOrg
end
