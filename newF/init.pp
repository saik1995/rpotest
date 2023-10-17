class my_module (
  $config_file = '/etc/my_config.conf',
  $service_name = 'my_service',
) {
  include my_module::configuration
  include my_module::service
}
