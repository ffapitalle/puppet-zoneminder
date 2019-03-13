# This class is meant to be called from `zoneminder`
# It manage zoneminder configuration file
#
# @summary It manage zoneminder configuration file
#
# @example
#   include zoneminder::config
class zoneminder::config inherits zoneminder {
    file { ['/etc/zm', '/etc/zm/conf.d']:
    ensure  => directory,
    owner   => 'root',
    group   => $zoneminder::run_group,
    purge   => false,
    recurse => true,
    force   => true,
  }

  file { "/etc/zm/conf.d/${zoneminder::zoneminder_conf}":
    ensure  => file,
    owner   => 'root',
    group   => $zoneminder::run_group,
    content => template("${module_name}/zoneminder.conf.erb"),
    notify  => Class['zoneminder::service'],
  }

}
