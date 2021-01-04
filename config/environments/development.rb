Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true

  #config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.hosts += [
    '.lvh.me'
  ]

  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.cache_store = :file_store, 'tmp/cache/store'
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  config.action_mailbox.ingress = :mailgun

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  config.active_record.migration_error = :page_load

  config.active_storage.service = :local

  config.active_support.deprecation = :log
end

Rails.application.routes.default_url_options = {
  protocol: 'http',
  host: 'lvh.me',
  port: 3000
}
ENV['EDITOR'] = 'code --wait'
