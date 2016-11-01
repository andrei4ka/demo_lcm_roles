class lcm_roles::khui {
  $roles_hiera = hiera('roles', [])
  $roles_fact = $::roles
  $test_value = hiera('test_value', undef)
  $test_array = hiera_array('test_array', [])
  $test_hash = hiera_hash('test_hash', {})

  file { 'demo' :
    ensure  => 'present',
    path    => '/tmp/khui.txt',
    content => template('lcm_roles/demo.txt.erb'),
  }
}
