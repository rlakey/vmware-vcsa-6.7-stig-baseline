control "PHTN-10-000080" do
  title "The Photon operating system must create a home directory for all new
local interactive user accounts."
  desc  "If local interactive users are not assigned a valid home directory,
there is no place for the storage and control of files they should own."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must create a home directory for all
new local interactive user accounts."
  tag stig_id: "PHTN-10-000080"
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

# grep -i \"^create_home\" /etc/login.defs

If there is no output or the output does not equal \"CREATE_HOME     yes\",
this is a finding."
  tag fix: "Open /etc/login.defs with a text editor.

Ensure that the following is present and any exising CREATE_HOME line is
removed.

CREATE_HOME     yes"
end

