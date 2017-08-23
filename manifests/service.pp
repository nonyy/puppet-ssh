class ssh::service {
  service { 'sshd': 
    ensure     => running,
    enable     => true,
    # Service has status like systemctl status so I do not have to provide a command
    hasstatus  => true,
    # Just like above but with restart
    hasrestart => true,
  }
}
