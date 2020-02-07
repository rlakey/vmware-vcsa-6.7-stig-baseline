control "PHTN-10-000118" do
  title "The Photon operating system must protect all boot configuration files
from unauthorized access."
  desc  "Boot configuration files control how the system boots including
single-user mode, auditing, log levels, etc. Improper or malicious
configurations can netagively affect system security and availability."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must protect all boot configuration
files from unauthorized access."
  tag stig_id: "PHTN-10-000118"
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

# find /boot/*.cfg -xdev -type f -a '(' -not -perm 600 -o -not -user root -o
-not -group root ')' -exec ls -ld {} \\;

If any files are returned, this is a finding."
  tag fix: "At the command line, execute the following commands for each
returned file:

# chmod 600 <file>
# chown root:root <file>"
end

