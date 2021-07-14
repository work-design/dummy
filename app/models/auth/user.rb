module Auth
  class User < ApplicationRecord
    include Model::User if defined? RailsAuth
    include Notice::Model::User if defined? RailsNotice
    include Org::Model::User if defined? RailsOrg
  end
end
