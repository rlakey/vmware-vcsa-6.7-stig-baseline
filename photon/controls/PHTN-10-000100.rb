control "PHTN-10-000100" do
  title "The Photon operating system must be configured so that all files have
a valid owner and group owner."
  desc  "If files do not have valid user and group owners then unintended
access to files could occur."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that all files
have a valid owner and group owner."
  tag stig_id: "PHTN-10-000100"
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

# find / -fstype ext4 -nouser -o -nogroup -exec ls -ld {} \\;

If any files are returned, this is a finding."
  tag fix: "At the command line, execute the following commands for each
returned file:

# chown root:root <file>"
end

