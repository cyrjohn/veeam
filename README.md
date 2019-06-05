
# veeam
Veeam Scripts
The aim of this project is to upgrade veeam client version from v2.0.1.665 to v3.0.1.1046. 
All the below steps has to be carrited out in puppet server.
Pre-requisites - Veeam installables (veeam-3.0.1.1046-1.el7.x86_64.rpm & kmod-veeamsnap-3.0.1.1046-1.el7.x86_64.rpm) should be present in the location -/etc/puppetlabs/code/environments/production/modules/veeam/files/veeam_packages.
veeam_version.rb (For getting the veeam version via facter) should be copied in the location /etc/puppetlabs/code/environments/production/modules/facts/lib/facter
Init.pp and site.pp should be in /etc/puppetlabs/code/environments/production/modules/veeam/manifests and /etc/puppetlabs/code/environments/production/manifests/ respectively.
