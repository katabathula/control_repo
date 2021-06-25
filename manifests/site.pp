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
}
