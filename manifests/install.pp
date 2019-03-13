# This class is meant to be called from `zoneminder`
# It install zoneminder package and database
#
# @summary It install zoneminder package and database
#
# @example
#   include zoneminder::install
class zoneminder::install inherits zoneminder {

  package { 'db_engine':
    ensure => 'present',
    name   => $zoneminder::db_package_name
  }

  package { 'zoneminder':
    ensure  => $zoneminder::package_ensure,
    name    => $zoneminder::package_name,
    require => Package['db_engine']
  }
}
