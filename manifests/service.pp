class ssh::service (
  String $service_name = $::ssh::service_name,
){
  service { 'ssh-service': 
    ensure     => running,
    name       => $service_name,
    enable     => true,
    # Service has status like systemctl status so I do not have to provide a command
    hasstatus  => true,
    # Just like above but with restart
    hasrestart => true,
  }
}
