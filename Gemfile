source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '6.0.0.rc1'
gem 'bootsnap', require: false

gem 'puma'
gem 'sidekiq'
gem 'sqlite3'
gem 'redis'
gem 'qiniu_rails', github: 'qinmingyuan/qiniu_rails', branch: 'master'
gem 'sassc-rails'
gem 'turbolinks'
gem 'uglifier'

gem 'jbuilder'
gem 'kaminari'
gem 'acts_as_list'
gem 'closure_tree', github: 'qinmingyuan/closure_tree', branch: 'master'
gem 'bcrypt'
gem 'default_form', github: 'qinmingyuan/default_form', branch: 'master'
gem 'default_where', github: 'qinmingyuan/default_where', branch: 'master'
gem 'rails_com', github: 'work-design/rails_com', branch: 'master'


gem 'sprockets', '4.0.0.beta8'
gem 'zeitwerk'
# apm
gem 'scout_apm'
gem 'server_timing'

# parts
gem 'wechat'

# oauth
gem 'omniauth-wechat-oauth2', github: 'qinmingyuan/omniauth-wechat-oauth2', branch: 'master'

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
