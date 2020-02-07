control "PHTN-10-000077" do
  title "The Photon operating system must enforce a delay of at least 4 seconds
between logon prompts following a failed logon attempt."
  desc  "Limiting the number of logon attempts over a certain time interval
reduces the chances that an unauthorized user may gain access to an account."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00226"
  tag gid: nil
  tag rid: "The Photon operating system must enforce a delay of at least 4
seconds between logon prompts following a failed logon attempt."
  tag stig_id: "PHTN-10-000077"
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

# grep pam_faildelay /etc/pam.d/system-auth|grep --color=always \"delay=\"

Expected result:

auth \xA0 \xA0 \xA0optional \xA0 \xA0pam_faildelay.so \xA0delay=4000000

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/pam.d/system-auth with a text editor.

Remove any existing pam_faildelay line and add the follwing line at the end of
the file:

auth \xA0 \xA0 \xA0optional \xA0 \xA0pam_faildelay.so \xA0delay=4000000"
end

