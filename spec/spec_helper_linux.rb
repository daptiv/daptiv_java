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
  config.platform = 'ubuntu'
  config.version = '14.04'
end
