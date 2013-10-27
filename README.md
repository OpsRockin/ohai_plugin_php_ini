ohai plugin `php_ini`
===================

php_ini plugin for Opscode Ohai(Chef)


## Support

`(PHP 5 >= 5.2.0, PECL json >= 1.2.0)`

## Usage

Add php_ini.rb to an ohai_plugin path.

### Ohai CLI

`ohai -d /path/to/plugin_dir`

### Chef

Use as default. add line below to `client.rb/solo.rb`

```
Ohai::Config[:plugin_path] << '/path/to/plugin_dir'
```

#### Recipe example

Notice: Must include your cookbook.

```
ohai 'reload_php_ini' do
  plugin 'php_ini'
  action :nothing
end

file "#{node['ohai']['plugin_path']}/php.ini.rb" do
  source 'ohai_plugins/php_ini.rb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :reload, 'ohai[reload_php_ini]', :immediately
end
```

### Node attributes example

You can access those via node[:php_ini] in Cookbooks.

```
{
  "languages":  {
    "php": {
      "version": "5.3.3",
      "builddate": "Jul 12 2013",
      "php_ini": {
        "allow_call_time_pass_reference": {
          "global_value": "",
          "local_value": "",
          "access": 6
        },
        "allow_url_fopen": {
          "global_value": "1",
          "local_value": "1",
          "access": 4
        },
        "allow_url_include": {
          "global_value": "",
          "local_value": "",
          "access": 4
        },
        "always_populate_raw_post_data": {
          "global_value": "0",
          "local_value": "0",
          "access": 6
        },
        -- snip --
```


License & Authors
-----------------
- Author:: Yukihiko Sawanobori (<sawaonboriyu@higanworks.com>)

```text
Copyright 2012-2013, HiganWorks LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```