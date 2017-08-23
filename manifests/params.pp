# Parameters class
# Never going to have parameters going into it
# Only purpose to HOLD params in this class!
class ssh::params {
  case $facts['os']['family'] {
    'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'    
    }
    'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    }
    'default': {
      # Hey, it's not a supported os
      fail("${facts['operatingsystem']} is not supported!")
    }
  }
}
