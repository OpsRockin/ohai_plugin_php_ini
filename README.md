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

Use for default `client.rb/solo.rb`

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

### Node attribute exapmle

You can access those via node[:php_ini] in Cookbooks.

```
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
    "arg_separator.input": {
      "global_value": "&",
      "local_value": "&",
      "access": 6
    },
    "arg_separator.output": {
      "global_value": "&",
      "local_value": "&",
      "access": 7
    },
    "asp_tags": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "assert.active": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "assert.bail": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "assert.callback": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "assert.quiet_eval": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "assert.warning": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "auto_append_file": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "auto_detect_line_endings": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "auto_globals_jit": {
      "global_value": "1",
      "local_value": "1",
      "access": 6
    },
    "auto_prepend_file": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "bcmath.scale": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "browscap": {
      "global_value": null,
      "local_value": null,
      "access": 4
    },
    "date.default_latitude": {
      "global_value": "31.7667",
      "local_value": "31.7667",
      "access": 7
    },
    "date.default_longitude": {
      "global_value": "35.2333",
      "local_value": "35.2333",
      "access": 7
    },
    "date.sunrise_zenith": {
      "global_value": "90.583333",
      "local_value": "90.583333",
      "access": 7
    },
    "date.sunset_zenith": {
      "global_value": "90.583333",
      "local_value": "90.583333",
      "access": 7
    },
    "date.timezone": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "default_charset": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "default_mimetype": {
      "global_value": "text/html",
      "local_value": "text/html",
      "access": 7
    },
    "default_socket_timeout": {
      "global_value": "60",
      "local_value": "60",
      "access": 7
    },
    "define_syslog_variables": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "disable_classes": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "disable_functions": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "display_errors": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "display_startup_errors": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "doc_root": {
      "global_value": null,
      "local_value": null,
      "access": 4
    },
    "docref_ext": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "docref_root": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "enable_dl": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "error_append_string": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "error_log": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "error_prepend_string": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "error_reporting": {
      "global_value": "22527",
      "local_value": "22527",
      "access": 7
    },
    "exif.decode_jis_intel": {
      "global_value": "JIS",
      "local_value": "JIS",
      "access": 7
    },
    "exif.decode_jis_motorola": {
      "global_value": "JIS",
      "local_value": "JIS",
      "access": 7
    },
    "exif.decode_unicode_intel": {
      "global_value": "UCS-2LE",
      "local_value": "UCS-2LE",
      "access": 7
    },
    "exif.decode_unicode_motorola": {
      "global_value": "UCS-2BE",
      "local_value": "UCS-2BE",
      "access": 7
    },
    "exif.encode_jis": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "exif.encode_unicode": {
      "global_value": "ISO-8859-15",
      "local_value": "ISO-8859-15",
      "access": 7
    },
    "exit_on_timeout": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "expose_php": {
      "global_value": "1",
      "local_value": "1",
      "access": 4
    },
    "extension_dir": {
      "global_value": "/usr/lib64/php/modules",
      "local_value": "/usr/lib64/php/modules",
      "access": 4
    },
    "file_uploads": {
      "global_value": "1",
      "local_value": "1",
      "access": 4
    },
    "filter.default": {
      "global_value": "unsafe_raw",
      "local_value": "unsafe_raw",
      "access": 6
    },
    "filter.default_flags": {
      "global_value": null,
      "local_value": null,
      "access": 6
    },
    "highlight.bg": {
      "global_value": "#FFFFFF",
      "local_value": "#FFFFFF",
      "access": 7
    },
    "highlight.comment": {
      "global_value": "#FF8000",
      "local_value": "#FF8000",
      "access": 7
    },
    "highlight.default": {
      "global_value": "#0000BB",
      "local_value": "#0000BB",
      "access": 7
    },
    "highlight.html": {
      "global_value": "#000000",
      "local_value": "#000000",
      "access": 7
    },
    "highlight.keyword": {
      "global_value": "#007700",
      "local_value": "#007700",
      "access": 7
    },
    "highlight.string": {
      "global_value": "#DD0000",
      "local_value": "#DD0000",
      "access": 7
    },
    "html_errors": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "iconv.input_encoding": {
      "global_value": "ISO-8859-1",
      "local_value": "ISO-8859-1",
      "access": 7
    },
    "iconv.internal_encoding": {
      "global_value": "ISO-8859-1",
      "local_value": "ISO-8859-1",
      "access": 7
    },
    "iconv.output_encoding": {
      "global_value": "ISO-8859-1",
      "local_value": "ISO-8859-1",
      "access": 7
    },
    "ignore_repeated_errors": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "ignore_repeated_source": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "ignore_user_abort": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "implicit_flush": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "include_path": {
      "global_value": ".:/usr/share/pear:/usr/share/php",
      "local_value": ".:/usr/share/pear:/usr/share/php",
      "access": 7
    },
    "log_errors": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "log_errors_max_len": {
      "global_value": "1024",
      "local_value": "1024",
      "access": 7
    },
    "magic_quotes_gpc": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "magic_quotes_runtime": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "magic_quotes_sybase": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "mail.add_x_header": {
      "global_value": "1",
      "local_value": "1",
      "access": 6
    },
    "mail.force_extra_parameters": {
      "global_value": null,
      "local_value": null,
      "access": 6
    },
    "mail.log": {
      "global_value": null,
      "local_value": null,
      "access": 6
    },
    "max_execution_time": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "max_file_uploads": {
      "global_value": "20",
      "local_value": "20",
      "access": 4
    },
    "max_input_nesting_level": {
      "global_value": "64",
      "local_value": "64",
      "access": 6
    },
    "max_input_time": {
      "global_value": "-1",
      "local_value": "-1",
      "access": 6
    },
    "max_input_vars": {
      "global_value": "1000",
      "local_value": "1000",
      "access": 6
    },
    "memory_limit": {
      "global_value": "128M",
      "local_value": "128M",
      "access": 7
    },
    "open_basedir": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "output_buffering": {
      "global_value": "0",
      "local_value": "0",
      "access": 6
    },
    "output_handler": {
      "global_value": null,
      "local_value": null,
      "access": 6
    },
    "pcre.backtrack_limit": {
      "global_value": "100000",
      "local_value": "100000",
      "access": 7
    },
    "pcre.recursion_limit": {
      "global_value": "100000",
      "local_value": "100000",
      "access": 7
    },
    "phar.cache_list": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "phar.readonly": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "phar.require_hash": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "post_max_size": {
      "global_value": "8M",
      "local_value": "8M",
      "access": 6
    },
    "precision": {
      "global_value": "14",
      "local_value": "14",
      "access": 7
    },
    "realpath_cache_size": {
      "global_value": "16K",
      "local_value": "16K",
      "access": 4
    },
    "realpath_cache_ttl": {
      "global_value": "120",
      "local_value": "120",
      "access": 4
    },
    "register_argc_argv": {
      "global_value": "1",
      "local_value": "1",
      "access": 6
    },
    "register_globals": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "register_long_arrays": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "report_memleaks": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "report_zend_debug": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "request_order": {
      "global_value": "GP",
      "local_value": "GP",
      "access": 6
    },
    "safe_mode": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "safe_mode_allowed_env_vars": {
      "global_value": "PHP_",
      "local_value": "PHP_",
      "access": 4
    },
    "safe_mode_exec_dir": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "safe_mode_gid": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "safe_mode_include_dir": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "safe_mode_protected_env_vars": {
      "global_value": "LD_LIBRARY_PATH",
      "local_value": "LD_LIBRARY_PATH",
      "access": 4
    },
    "sendmail_from": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "sendmail_path": {
      "global_value": "/usr/sbin/sendmail -t -i",
      "local_value": "/usr/sbin/sendmail -t -i",
      "access": 4
    },
    "serialize_precision": {
      "global_value": "100",
      "local_value": "100",
      "access": 7
    },
    "session.auto_start": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "session.bug_compat_42": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.bug_compat_warn": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.cache_expire": {
      "global_value": "180",
      "local_value": "180",
      "access": 7
    },
    "session.cache_limiter": {
      "global_value": "nocache",
      "local_value": "nocache",
      "access": 7
    },
    "session.cookie_domain": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.cookie_httponly": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.cookie_lifetime": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "session.cookie_path": {
      "global_value": "/",
      "local_value": "/",
      "access": 7
    },
    "session.cookie_secure": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.entropy_file": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.entropy_length": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "session.gc_divisor": {
      "global_value": "1000",
      "local_value": "1000",
      "access": 7
    },
    "session.gc_maxlifetime": {
      "global_value": "1440",
      "local_value": "1440",
      "access": 7
    },
    "session.gc_probability": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "session.hash_bits_per_character": {
      "global_value": "5",
      "local_value": "5",
      "access": 7
    },
    "session.hash_function": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "session.name": {
      "global_value": "PHPSESSID",
      "local_value": "PHPSESSID",
      "access": 7
    },
    "session.referer_check": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "session.save_handler": {
      "global_value": "files",
      "local_value": "files",
      "access": 7
    },
    "session.save_path": {
      "global_value": "/var/lib/php/session",
      "local_value": "/var/lib/php/session",
      "access": 7
    },
    "session.serialize_handler": {
      "global_value": "php",
      "local_value": "php",
      "access": 7
    },
    "session.use_cookies": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "session.use_only_cookies": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "session.use_trans_sid": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "short_open_tag": {
      "global_value": "",
      "local_value": "",
      "access": 6
    },
    "SMTP": {
      "global_value": "localhost",
      "local_value": "localhost",
      "access": 7
    },
    "smtp_port": {
      "global_value": "25",
      "local_value": "25",
      "access": 7
    },
    "sql.safe_mode": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "track_errors": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "unserialize_callback_func": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "upload_max_filesize": {
      "global_value": "2M",
      "local_value": "2M",
      "access": 6
    },
    "upload_tmp_dir": {
      "global_value": null,
      "local_value": null,
      "access": 4
    },
    "url_rewriter.tags": {
      "global_value": "a=href,area=href,frame=src,input=src,form=fakeentry",
      "local_value": "a=href,area=href,frame=src,input=src,form=fakeentry",
      "access": 7
    },
    "user_agent": {
      "global_value": null,
      "local_value": null,
      "access": 7
    },
    "user_dir": {
      "global_value": "",
      "local_value": "",
      "access": 4
    },
    "user_ini.cache_ttl": {
      "global_value": "300",
      "local_value": "300",
      "access": 4
    },
    "user_ini.filename": {
      "global_value": ".user.ini",
      "local_value": ".user.ini",
      "access": 4
    },
    "variables_order": {
      "global_value": "GPCS",
      "local_value": "GPCS",
      "access": 6
    },
    "xmlrpc_error_number": {
      "global_value": "0",
      "local_value": "0",
      "access": 7
    },
    "xmlrpc_errors": {
      "global_value": "0",
      "local_value": "0",
      "access": 4
    },
    "y2k_compliance": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "zend.enable_gc": {
      "global_value": "1",
      "local_value": "1",
      "access": 7
    },
    "zlib.output_compression": {
      "global_value": "",
      "local_value": "",
      "access": 7
    },
    "zlib.output_compression_level": {
      "global_value": "-1",
      "local_value": "-1",
      "access": 7
    },
    "zlib.output_handler": {
      "global_value": "",
      "local_value": "",
      "access": 7
    }
  }
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