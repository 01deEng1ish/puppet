class ntp {
  ensure_packages(['ntp'])

  file { '/etc/ntp.conf':
    source => 'puppet:///modules/ntp/ntp.conf',
    notify => Servise['ntp'],
    require => Package['ntp'],
  }

  service { 'ntp':
    ensure => running,
    enable => true,
  }
}