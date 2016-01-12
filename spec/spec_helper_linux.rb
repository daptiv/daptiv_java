require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.platform = 'ubuntu'
  config.version = '12.04'
end
