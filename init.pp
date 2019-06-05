class veeam {
if $::veeam_version == 'v2.0.1.665' {

  $dest_loc = "/tmp/veeam_pkg"
  file { $dest_loc:
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/veeam/veeam_packages",
    owner   => 'root',
    mode    => '0755',
  }
exec {'veeam_snap':
        path => ['/usr/bin'],
        command => 'rpm -Uvh --nodeps kmod-veeamsnap-3.0.1.1046-1.el7.x86_64.rpm',
        cwd => '/tmp/veeam_pkg',
        }
exec {'veeam':
        path => ['/usr/bin'],
        command => 'rpm -Uvh veeam-3.0.1.1046-1.el7.x86_64.rpm',
        cwd => '/tmp/veeam_pkg',
        }
        }
elsif $::veeam_version == 'v3.0.1.1046'  {
notify  { "Veeam is uptodate":
                }
                }
else    {
notify  { "Veeam is not installed or uptodate":
                }
                }
}
