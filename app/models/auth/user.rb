module Auth
  class User < ApplicationRecord
    include Model::User
    include Notice::Model::User if defined? RailsNotice
    include Org::Model::User if defined? RailsOrg
  end
end
