source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '8.0.0'
gem 'puma'
gem 'solid_queue'
gem 'solid_cache'
gem 'kamal', require: false

# Store
gem 'pg'
gem 'redis'

# Utils
gem 'bcrypt'
gem 'image_processing'
gem 'rqrcode'

# Third Part
gem 'upyun_rails', github: 'qinmingyuan/upyun_rails'

# Rails Helpers
gem 'default_where', github: 'qinmingyuan/default_where'

# Engines
gem 'rails_com', github: 'work-design/rails_com'
gem 'rails_design', github: 'work-design/rails_design'

# Assets
gem 'turbo-rails'
gem 'propshaft'

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug'
end

group :development do
  gem 'listen'
  gem 'web-console'
  gem 'localhost', require: 'localhost/authority'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
