require 'beaker'
require 'beaker-hiera/helpers'
require 'beaker-hiera/version'

# Register the DSL extension
Beaker::DSL.register( Beaker::DSL::Helpers::Hiera )
