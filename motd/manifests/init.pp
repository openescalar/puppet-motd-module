
class motd ( 

) {

  case $::operatingsystem {
  
    'Redhat', 'CentOS':		{ require motd::redhat::config }
    'Ubuntu':			{ require motd::redhat::config }
    default:			{ require motd::redhat::config }


  }

}
