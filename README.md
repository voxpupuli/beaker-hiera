# beaker-hiera

[![License](https://img.shields.io/github/license/voxpupuli/beaker-hiera.svg)](https://github.com/voxpupuli/beaker-hiera/blob/master/LICENSE)
[![codecov](https://codecov.io/gh/voxpupuli/beaker-hiera/branch/master/graph/badge.svg?token=Mypkl78hvK)](https://codecov.io/gh/voxpupuli/beaker-hiera)
[![Release](https://github.com/voxpupuli/beaker-hiera/actions/workflows/release.yml/badge.svg)](https://github.com/voxpupuli/beaker-hiera/actions/workflows/release.yml)
[![RubyGem Version](https://img.shields.io/gem/v/beaker-hiera.svg)](https://rubygems.org/gems/beaker-hiera)
[![RubyGem Downloads](https://img.shields.io/gem/dt/beaker-hiera.svg)](https://rubygems.org/gems/beaker-hiera)
[![Donated by Puppet Inc](https://img.shields.io/badge/donated%20by-Puppet%20Inc-fb7047.svg)](#transfer-notice)

Beaker Hiera DSL Extension Library! This allows to easily use Hiera data in acceptance tests.

## Usage

The `write_hiera_config_on` method is the most important one.
It writes the `hiera.yaml` file to the specified host or hosts.
The version is always set to 5, as well as a default `datadir`.
The `hierarchy` is directly what the [documentation](https://www.puppet.com/docs/puppet/7/hiera_config_yaml_5.html) specifies.
It is then important to also copy the data from a local directory to the same host or hosts.

```ruby
hierarchy = [
  {
    'name' => 'Per-node data',
    'path' => 'fqdn/%{facts.networking.fqdn}.yaml',
  },
  {
    'name' => 'OS family version data',
    'path' => 'family/%{facts.os.family}/%{facts.os.release.major}.yaml',
  },
  {
    'name' => 'OS family data',
    'path' => 'family/%{facts.os.family}.yaml',
  },
  {
    'name' => 'Common data',
    'path' => 'common.yaml',
  },
]
write_hiera_config_on(host, hierarchy)
copy_hiera_data_to(host, 'spec/acceptance/hieradata')
```

## Transfer Notice

This plugin was originally authored by [Puppet Inc](http://puppet.com).
The maintainer preferred that Puppet Community take ownership of the module for future improvement and maintenance.
Existing pull requests and issues were transferred over, please fork and continue to contribute here.

Previously: https://github.com/puppetlabs/beaker-hiera

## License

This gem is licensed under the Apache-2 license.

## Release information

To make a new release, please do:
* update the version in `lib/beaker-hiera/version.rb`
* Install gems with `bundle install --with release --path .vendor`
* generate the changelog with `bundle exec rake changelog`
* Check if the new version matches the closed issues/PRs in the changelog
* Create a PR with it
* After it got merged, push a tag. GitHub actions will do the actual release to rubygems and GitHub Packages
