# = Definition to manage riak_agent.rb file 
define newrelic-riak::resource::riak_agent (
  $ensure     = 'present',
  $agent_guid = '',
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
