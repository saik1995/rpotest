class my_module::service {
  # Define your service-related resources here
  service { 'my_service':
    ensure    => running,
    enable    => true,
    require   => File['/etc/my_config.conf'],
  }
}
