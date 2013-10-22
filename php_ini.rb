require 'json'
provides 'php_ini'

php_ini Mash.new

cmd = "php -r 'print(json_encode(ini_get_all()));'"

status, stdout, stderr = run_command(:command => cmd)
return "" if stdout.nil? || stdout.empty?

php_ini JSON::load(stdout)
