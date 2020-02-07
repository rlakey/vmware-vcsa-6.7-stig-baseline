control "PHTN-10-000076" do
  title "The Photon operating system must set the FAIL_DELAY parameter."
  desc  "Limiting the number of logon attempts over a certain time interval
reduces the chances that an unauthorized user may gain access to an account."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00226"
  tag gid: nil
  tag rid: "The Photon operating system must set the FAIL_DELAY parameter."
  tag stig_id: "PHTN-10-000076"
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

# grep FAIL_DELAY /etc/login.defs

Expected result:

FAIL_DELAY 4

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/login.defs with a text editor.

Add the following line after the last auth statement:
FAIL_DELAY 4"
end

