require 'chefspec'
require 'chefspec/berkshelf'

require 'simplecov'
SimpleCov.start

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

ChefSpec::Coverage.start!

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.platform = 'windows'
  config.version = '2012R2'
end
