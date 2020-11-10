# beaker-hiera

Beaker Hiera DSL Extension Library! This allows to easily use Hiera data in acceptance tests.

```ruby
hierarchy = [
  'fqdn/%{fqdn}.yaml',
  'os/%{os.family}/%{os.release.major}.yaml',
  'os/%{os.family}.yaml',
  'common.yaml',
]
write_hiera_config_on(host, hierarchy)
copy_hiera_data_to(host, 'spec/acceptance/hieradata')
```
