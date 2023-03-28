require 'rspec/core/rake_task'

desc 'Run spec tests'
RSpec::Core::RakeTask.new(:test) do |t|
  t.rspec_opts = ['--color']
  t.pattern = 'spec/'
end

desc 'Run spec tests with coverage'
RSpec::Core::RakeTask.new(:coverage) do |t|
  ENV['BEAKER_HIERA_COVERAGE'] = 'y'
  t.rspec_opts = ['--color']
  t.pattern = 'spec/'
end

task default: :test

begin
  require 'rubygems'
  require 'github_changelog_generator/task'
rescue LoadError
  # github_changelog_generator is an optional release
else
  GitHubChangelogGenerator::RakeTask.new :changelog do |config|
    config.exclude_labels = %w[duplicate question invalid wontfix wont-fix skip-changelog]
    config.user = 'voxpupuli'
    config.project = 'beaker-hiera'
    gem_version = Gem::Specification.load("#{config.project}.gemspec").version
    config.future_release = gem_version
  end
end

begin
  require 'rubocop/rake_task'
rescue LoadError
  # RuboCop is an optional group
else
  RuboCop::RakeTask.new(:rubocop) do |task|
    # These make the rubocop experience maybe slightly less terrible
    task.options = ['--display-cop-names', '--display-style-guide', '--extra-details']
    # Use Rubocop's Github Actions formatter if possible
    task.formatters << 'github' if ENV['GITHUB_ACTIONS']
  end
end
