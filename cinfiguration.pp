class my_module::configuration {
  # Define your configuration resources here
  file { '/etc/my_config.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => 'This is my configuration file content',
  }
}
