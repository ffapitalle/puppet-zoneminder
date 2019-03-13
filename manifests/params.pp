# This class is meant to be called from `zoneminder` 
# It sets defaults values for zoneminder module params
#
# @summary It sets defaults values for zoneminder module params
#
# @example
#   include zoneminder::params
class zoneminder::params {
  $package_ensure     = 'present'
  $package_name       = 'zoneminder'

  $service_ensure     = 'running'
  $service_name       = 'zoneminder'
  $service_enable     = true

  $zoneminder_conf    = '05_custom.conf'
  $run_user           = 'www-data'
  $run_group          = 'www-data'

  $db_package_name    = 'mariadb-server'
  $dbuser             = 'zmuser'
  $dbpass             = 'zmpass'
  $dbname             = 'zm'
  $dbserver           = 'localhost'
}
