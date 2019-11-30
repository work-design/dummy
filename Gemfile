source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '6.0.0'
gem 'bootsnap', require: false

gem 'puma'
gem 'sidekiq'
gem 'sqlite3'
gem 'redis'
gem 'qiniu_rails', github: 'qinmingyuan/qiniu_rails'
gem 'sassc-rails'
gem 'turbolinks'
gem 'webpacker', require: File.exist?('config/webpacker.yml')

gem 'jbuilder'
gem 'kaminari'
gem 'acts_as_list'
gem 'closure_tree', github: 'qinmingyuan/closure_tree'
gem 'bcrypt'

gem 'sprockets', '4.0.0.beta8'
gem 'zeitwerk'
gem 'image_processing'

# apm
gem 'scout_apm'
gem 'server_timing'

# oauth
gem 'omniauth-wechat-oauth2', github: 'qinmingyuan/omniauth-wechat-oauth2'
gem 'rails_com', github: 'work-design/rails_com'

group :development, :test, :staging do
  gem 'awesome_print'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'factory_bot_rails'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
