node default {
  file { '/etc/README.txt':
    ensure => file,
    content => 'This is a readme',
    owner => 'vagrant',
    group => 'vagrant',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "This server name is ${fqdn}\n",
  }
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
