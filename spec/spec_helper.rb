require 'simplecov'
require 'beaker-hiera'
require 'helpers'

RSpec.configure do |config|
  config.include TestFileHelpers
  config.include HostHelpers
end
