# = Class newrelic
# REQUIREMENTS:
#   * alup/puppet-rbenv https://github.com/alup/puppet-rbenv
#
# USAGE:
#       newrelic-riak::resource::newrelic_plugin {
#         'newrelic_plugin.yml':
#           ensure  => 'present',
#           license => 'INSERT-YOUR-NEWRELIC-LICENSE'
#       }
#       newrelic-riak::resource::riak_agent {
#         'riak_agent.pp':
#           ensure     => 'present',
#           agent_guid => "${fqdn}"
#       }
class newrelic-riak {

  # include Rbenv module to install required gems
  #   bundler/setup
  #   newrelic_plugin
  #   rest-client
  #   json
  include rbenv
  include newrelic-riak::config

}
