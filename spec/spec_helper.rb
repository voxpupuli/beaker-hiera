require 'simplecov'
require 'beaker'
require 'beaker-hiera'
require 'helpers'

require 'rspec/its'

RSpec.configure do |config|
  config.include TestFileHelpers
  config.include HostHelpers
end