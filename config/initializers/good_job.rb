Rails.application.configure do
  config.good_job.preserve_job_records = true
  config.good_job.logger = ActiveSupport::Logger.new('log/good_job.log')
  config.good_job.retry_on_unhandled_error = false
end
