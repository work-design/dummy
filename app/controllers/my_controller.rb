class MyController < ApplicationController
  include RailsAuthController
  before_action :require_login

  default_form_builder 'MyFormBuilder' do |config|

  end

end
