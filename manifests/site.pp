node default {
  file { '/etc/README.txt':
    ensure => file,
    content => 'This is a readme',
  }
}
