# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include zoneminder
class zoneminder (
  String $package_ensure     = $zoneminder::params::package_ensure,
  String $package_name       = $zoneminder::params::package_name,

  String $service_ensure     = $zoneminder::params::service_ensure,
  String $service_name       = $zoneminder::params::service_name,
  Boolean $service_enable    = $zoneminder::params::service_enable,

  String $zoneminder_conf    = $zoneminder::params::zoneminder_conf,
  String $run_user           = $zoneminder::params::run_user,
  String $run_group          = $zoneminder::params::run_group,

  String $db_package_name    = $zoneminder::params::db_package_name,
  String $dbserver           = $zoneminder::params::dbserver,
  String $dbname             = $zoneminder::params::dbname,
  String $dbuser             = $zoneminder::params::dbuser,
  String $dbpass             = $zoneminder::params::dbpass,
) inherits zoneminder::params {

  anchor { 'zoneminder::begin': } ->
  class { '::zoneminder::config': } ->
  class { '::zoneminder::install': } ->
  class { '::zoneminder::service': } ->
  anchor { 'zoneminder::end': }

}
