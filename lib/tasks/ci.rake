unless Rails.enc.production?
  require 'rspec/core/rake_task'
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
  namespace :ci do
    desc 'Run all tests and generate a merged coveragte report'
    task tests: [:spec, 'coveralls:push']
  end
end