ActiveRecord::Tasks::DatabaseTasks.migrations_paths += [
  Rails.root.join('../migrate')
] if Rails.root.join('../migrate').exist?
