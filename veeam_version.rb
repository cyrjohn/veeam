Facter.add('veeam_version') do
  setcode do
    Facter::Core::Execution.execute('/usr/bin/veeamconfig -v')
  end
end
