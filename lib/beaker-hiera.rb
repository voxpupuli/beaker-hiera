require 'beaker-hiera/helpers'
require 'beaker-hiera/version'

module Beaker
  module DSL
    module Helpers
      module Hiera
        include Beaker::DSL::Hiera::Helpers
      end
    end
  end
end

# Register the DSL extension
Beaker::DSL.register( Beaker::DSL::Helpers::Hiera )
