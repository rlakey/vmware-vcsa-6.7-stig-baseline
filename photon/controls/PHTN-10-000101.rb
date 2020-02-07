control "PHTN-10-000101" do
  title "The Photon operating system must be configured so that the
/etc/cron.allow file is protected from unauthorized modification."
  desc  "If cron files and folders are accessible to unauthorized users then
malicious jobs may be created."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that the
/etc/cron.allow file is protected from unauthorized modification."
  tag stig_id: "PHTN-10-000101"
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

# stat -c \"%n permissions are %a and owned by %U:%G\" /etc/cron.allow

Expected result:

/etc/cron.allow permissions are 600 and owned by root:root

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# chmod 600 /etc/cron.allow
# chown root:root /etc/cron.allow"
end

