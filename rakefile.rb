require 'tailor/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'
require 'daptiv-chef-ci/vagrant_task'

task :default => [:version, :tailor, :foodcritic, :spec]

task :version do
  IO.write('version.txt', (ENV['BUILD_NUMBER'] ? "0.0.#{ENV['BUILD_NUMBER']}" : '0.0.1'))
end

FoodCritic::Rake::LintTask.new do |t|
  t.options = {
    cookbook_paths: '.',
    search_gems: true }
end

RSpec::Core::RakeTask.new do |task|
  task.pattern = 'spec/**/*_spec.rb'
  task.rspec_opts = ['--color', '-f documentation', '-tunit']
end

Tailor::RakeTask.new
Vagrant::RakeTask.new

Vagrant::RakeTask.new :vagrant_windows, 'Runs the Windows recipe' do |t|
  t.environment = { linux: false }
end

Vagrant::RakeTask.new :vagrant_linux, 'Runs the Linux recipe' do |t|
  t.environment = { linux: true }
end
