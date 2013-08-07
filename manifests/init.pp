
class wireless_tools {
  require python_tools
  require hg

  $packages = ['aircrack-ng', 'wireless-tools', 'iw', 'wireshark', 'net-tools']

  package { $packages:
    ensure => present,
  }

  python_tools::source_install { 'scapy':
    repo_url => 'http://hg.secdev.org/scapy',
    provider => 'hg', 
  }
}