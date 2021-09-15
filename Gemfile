source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.1'
gem 'puma'
gem 'sidekiq'

# Store
gem 'pg'
gem 'redis'
#gem 'active_record_distinct_on'

# Assets
gem 'viter', github: 'qinmingyuan/viter'

# Views
gem 'jbuilder'

# Utils
gem 'bcrypt'
gem 'image_processing'
gem 'rqrcode'

# apm
gem 'scout_apm'
gem 'server_timing'

# Third Part
gem 'omniauth-wechat-oauth2', github: 'qinmingyuan/omniauth-wechat-oauth2'
gem 'upyun_rails', github: 'qinmingyuan/upyun_rails'

# Rails Helpers
gem 'default_where', github: 'qinmingyuan/default_where'

# Engines
gem 'rails_design', github: 'work-design/rails_design'
gem 'rails_com', github: 'work-design/rails_com'
gem 'rails_extend', github: 'work-design/rails_extend'

# Should after rails_com
gem 'turbo-rails'

gem 'bootsnap', require: false
gem 'amazing_print'

group :development, :test do
  gem 'debug'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
