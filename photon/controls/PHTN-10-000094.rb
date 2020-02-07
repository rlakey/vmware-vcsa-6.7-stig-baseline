control "PHTN-10-000094" do
  title "The Photon operating system must configure sshd to limit the number of
allowed login attempts per connection."
  desc  "By setting the login attempt limit to a low value, an attacker will be
forced to reconnect frequently which severely limits the speed and
effectiveness of brute-force attacks. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to limit the number
of allowed login attempts per connection."
  tag stig_id: "PHTN-10-000094"
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

# sshd -T|&grep -i MaxAuthTries

Expected result:

MaxAuthTries 2

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"MaxAuthTries\" line is uncommented and set to the following:

MaxAuthTries 2

At the command line, execute the following command:

# service sshd reload"
end

