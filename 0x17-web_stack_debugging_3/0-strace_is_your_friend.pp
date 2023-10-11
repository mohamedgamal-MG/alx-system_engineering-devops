# Fix a file
file { '/var/www/html/wp-settings.php':
  ensure  => file,
  source  => 'puppet:///modules/my_module/wp-settings.php', # You may need to define the template file in your module
  owner   => 'www-data',  # Replace with the correct owner
  group   => 'www-data',  # Replace with the correct group
  mode    => '0644',
  notify  => Exec['reload_apache'],  # Reload Apache after the modification
}

exec { 'reload_apache':
  command     => 'systemctl reload apache2',  # You may need to modify the command according to your Ubuntu version
  path        => '/bin:/sbin:/usr/bin:/usr/sbin',
  refreshonly => true,
}

