source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails'
gem 'puma'
gem 'good_job'

# Store
gem 'pg'
gem 'redis'

# Utils
gem 'bcrypt'
gem 'image_processing'
gem 'rqrcode'

# Third Part
gem 'omniauth-wechat-oauth2', github: 'qinmingyuan/omniauth-wechat-oauth2'
gem 'upyun_rails', github: 'qinmingyuan/upyun_rails'

# Rails Helpers
gem 'default_where', github: 'qinmingyuan/default_where'

# Engines
gem 'rails_com', github: 'work-design/rails_com'
gem 'rails_design', github: 'work-design/rails_design'
gem 'rails_extend', github: 'work-design/rails_extend'

# Assets
gem 'turbo-rails'
gem 'propshaft'

gem 'bootsnap', require: false
gem 'amazing_print'

group :development, :test do
  gem 'debug'
end

group :development do
  gem 'web-console'
  gem 'localhost', require: 'localhost/authority'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
