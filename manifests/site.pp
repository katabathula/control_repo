node default {
  file { '/etc/README.txt':
    ensure => file,
  }
}
