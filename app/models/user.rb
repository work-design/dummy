class User < ApplicationRecord
  include AuthModel::User if defined? RailsAuth
  include RailsNotice::Receiver if defined? RailsNotice
  include RailsOrg::User if defined? RailsOrg

end
