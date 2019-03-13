# This class is meant to be called from `zoneminder`
# It manage service status
#
# @summary It manage service status
#
# @example
#   include zoneminder::service
class zoneminder::service inherits zoneminder {

  service { 'zoneminder':
    ensure => $zoneminder::service_ensure,
    enable => $zoneminder::service_enable,
    name   => $zoneminder::service_name,
  }

}
