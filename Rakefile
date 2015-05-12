require "bundler/gem_tasks"
require "bundler/setup"

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

desc "update ctags"
task :ctags do
  sh "ctags -R"
end

task :default => :spec
