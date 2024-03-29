module Auth
  class User < ActiveRecord::Base
    include Model::User if defined? RailsAuth
    include Notice::Ext::User if defined? RailsNotice
    include Org::Ext::User if defined? RailsOrg
  end
end
