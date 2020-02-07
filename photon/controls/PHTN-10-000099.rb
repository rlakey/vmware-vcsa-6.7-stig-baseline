control "PHTN-10-000099" do
  title "The Photon operating system must be configured so that all system
startup scripts are protected from unauthorized modification."
  desc  "If system startup scripts are accessible to unauthorized modification
this could compromise the system on startup."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that all system
startup scripts are protected from unauthorized modification."
  tag stig_id: "PHTN-10-000099"
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

# find /etc/rc.d/* -xdev -type f -a '(' -perm -002 -o -not -user root -o -not
-group root ')' -exec ls -ld {} \\;

If any files are returned, this is a finding."
  tag fix: "At the command line, execute the following commands for each
returned file:

# chmod o-w <file>
# chown root:root <file>"
end

