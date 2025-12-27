$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'beaker-hiera/version'

Gem::Specification.new do |s|
  s.name        = 'beaker-hiera'
  s.version     = Beaker::DSL::Helpers::Hiera::Version::STRING
  s.authors     = ['Vox Pupuli', 'Puppetlabs']
  s.email       = ['voxpupuli@groups.io']
  s.homepage    = 'https://github.com/voxpupuli/beaker-hiera'
  s.summary     = 'Hiera DSL Helpers!'
  s.description = 'For use for the Beaker acceptance testing tool'
  s.license     = 'Apache-2.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 3.2', '< 4'

  # Testing dependencies
  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'voxpupuli-rubocop', '~> 5.1.0'

  # Run time dependencies
  s.add_dependency 'beaker', '>= 4', '< 8'
end
