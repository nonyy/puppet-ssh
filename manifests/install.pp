class ssh::install (
# Reference variable from main file
  String $package_name = $::ssh::package_name,
){
  package { 'ssh-package':
    name   => $package_name,
    ensure => present,
  }
}
