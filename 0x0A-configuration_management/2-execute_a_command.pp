# 2-execute_a_command.pp

exec { 'killmenow':
  command => 'pkill -f killmenow',
  path    => '/usr/bin:/usr/sbin:/bin',
  onlyif  => 'pgrep -f killmenow',
}
