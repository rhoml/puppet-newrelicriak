# = Class definition to manage newrelic_plugin.yml file
define newrelic-riak::resource::newrelic_plugin (
  $ensure    = 'present',
  $license   = '',
  $riak_port = '8098',
  $verbose   = '0'
  ){

  File{
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  ## Shared Variables
  $ensure_real = $ensure ? {
    'absent' => absent,
    default  => file,
  }

  file { "/usr/share/newrelic/riak/${name}":
    ensure  => "${ensure_real}",
    content => template("newrelic_riak/${name}.erb")
  }
}
