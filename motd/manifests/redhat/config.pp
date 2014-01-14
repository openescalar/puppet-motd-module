class motd::redhat::config (

) {

  file {
    '/usr/local/bin/gen_motd.sh':
      source => 'puppet:///modules/motd/gen_motd.sh',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
  }

  cron {
    'genmotd':
      command => '/usr/local/bin/gen_motd.sh > /etc/motd',
      user    => root,
      minute  => '0',
      hour    => '2';
  }

}
