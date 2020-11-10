require 'simplecov'
require 'beaker-hiera'
require 'beaker_test_helpers'
require 'helpers'

RSpec.configure do |config|
  config.include TestFileHelpers
  config.include HostHelpers
end