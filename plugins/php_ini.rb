require 'json'
provides '"languages/php/php_ini'

require_plugin 'php'

cmd = "php -r 'print(json_encode(ini_get_all()));'"

status, stdout, stderr = run_command(:command => cmd)
return "" if stdout.nil? || stdout.empty?

languages[:php][:php_ini] = JSON::load(stdout)

