class profile::webserver (
  Integer $port = 80,
) {
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/profile-webserver.conf':
    ensure  => file,
    content => epp('profile/webserver.conf.epp', { 'port' => $port }),
    require => Package['nginx'],
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/profile-webserver.conf'],
  }
}
