engine_path = File.expand_path('../../../Gemfile', __dir__)
if File.exist? engine_path
  ENV['BUNDLE_GEMFILE'] ||= engine_path
  $:.unshift File.expand_path('../../../lib', __dir__)
else
  ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
end

#require 'bundler/setup'
