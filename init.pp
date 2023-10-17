# Define the class for the Apache module
class apache {
  # Install the Apache package
  package { 'httpd':
    ensure => installed,
  }

  # Ensure that Apache is enabled and running
  service { 'httpd':
    ensure    => running,
    enable    => true,
    require   => Package['httpd'],
  }

  # Create an Apache virtual host configuration file
  file { '/etc/httpd/conf.d/my_website.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('apache/my_website.conf.erb'),
    require => Service['httpd'],
  }
}
