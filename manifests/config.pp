class newrelic-riak::config {
  # Ensure /var/run/newrelic diretory exists
  if ! defined(File['/var/run/newrelic']) {
    file { '/var/run/newrelic':
      ensure  => 'directory'
    }
  }

  # Ensure /var/share/newrelic diretory exists
  if ! defined(File['/usr/share/newrelic']) {
    file { '/usr/share/newrelic':
      ensure  => 'directory'
    }
  }

  # Ensure /var/share/newrelic/riak diretory exists
  if ! defined(File['/usr/share/newrelic/riak']) {
    file { '/usr/share/newrelic/riak':
      ensure  => 'directory',
      require => File['/usr/share/newrelic']
    }
  }

  # Ensure /var/share/newrelic/riak/config diretory exists
  if ! defined(File['/usr/share/newrelic/riak/config']) {
    file { '/usr/share/newrelic/riak/config':
      ensure  => 'directory',
      require => File['/usr/share/newrelic']
    }
  }
}
