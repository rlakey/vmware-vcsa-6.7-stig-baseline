control "PHTN-10-000103" do
  title "The Photon operating system must be configured so that all cron paths
are protected from unauthorized modification."
  desc  "If cron files and folders are accessible to unauthorized users then
malicious jobs may be created."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that all cron
paths are protected from unauthorized modification."
  tag stig_id: "PHTN-10-000103"
  tag cci: "CCI-000366"
  tag nist: ["CM-6 b", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# stat -c \"%n permissions are %a and owned by %U:%G\" /etc/cron.d
/etc/cron.daily /etc/cron.hourly /etc/cron.monthly /etc/cron.weekly

Expected result:

/etc/cron.d permissions are 755 and owned by root:root
/etc/cron.daily permissions are 755 and owned by root:root
/etc/cron.hourly permissions are 755 and owned by root:root
/etc/cron.monthly permissions are 755 and owned by root:root
/etc/cron.weekly permissions are 755 and owned by root:root

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands for each
returned file:

# chmod 755 <path>
# chown root:root <path>"
end

