class AdminController < ApplicationController
  include RailsAuthController

  default_form_builder 'AdminBuilder' do |config|

  end

end
