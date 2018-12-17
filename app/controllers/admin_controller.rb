class AdminController < ApplicationController
  include RailsAuthController
  include RailsRoleController

  default_form_builder 'AdminBuilder' do |config|

  end

end
