# This class will install zoneminder
#
# @summary This class will install zoneminder
#
# @param package_name name of the package
# @param package_ensure desired state of the package
# @param service_name name of the service
# @param service_ensure desired state of the service
# @param custom_conf_file file name of custom configuration
# @param run_user user to run service as
# @param run_group group to run service as
# @param db_package_name name of backend database's package
# @param dbhost host running backend database
# @param dbname name of the backend database
# @param dbuser username for connection to backend database
# @param dbpass password for connection to backend database
#
# @example
#   include zoneminder
class zoneminder (
  String $package_name,
  String $package_ensure,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  String $custom_conf_file,
  String $run_user,
  String $run_group,

  String $db_package_name,
  String $dbhost,
  String $dbname,
  String $dbuser,
  String $dbpass,
) {

  include 'zoneminder::config'
  include 'zoneminder::install'
  include 'zoneminder::service'

  anchor { 'zoneminder::begin': }
  -> Class['::zoneminder::config']
  -> Class['::zoneminder::install']
  -> Class['::zoneminder::service']
  -> anchor { 'zoneminder::end': }

}
