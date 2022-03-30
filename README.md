# beaker-hiera

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
