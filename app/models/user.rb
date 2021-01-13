class User < ApplicationRecord
  include RailsNotice::Receiver if defined? RailsNotice
  include RailsOrg::User if defined? RailsOrg

end
