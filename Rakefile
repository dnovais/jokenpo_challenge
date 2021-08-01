ENV['CHURN_IGNORES'] = 'Gemfile, Gemfile.lock'

require 'churn'
require "rubycritic/rake_task"
require "rake/testtask"

RubyCritic::RakeTask.new do |task|
  task.paths   = FileList['lib/**/*.rb']
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/*_test.rb"]
end

task :default => :test
