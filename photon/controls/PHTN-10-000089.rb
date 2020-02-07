control "PHTN-10-000089" do
  title "The Photon operating system must configure sshd to disallow
authentication with an empty password."
  desc  "Blank passwords are one of the first things an attacker checks for
when probing a system. Even is the user somehow has a blank password on the OS,
sshd must not allow that user to login."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to disallow
authentication with an empty password."
  tag stig_id: "PHTN-10-000089"
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

# sshd -T|&grep -i PermitEmptyPasswords

Expected result:

PermitEmptyPasswords no

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"PermitEmptyPasswords\" line is uncommented and set to the following:

PermitEmptyPasswords no

At the command line, execute the following command:

# service sshd reload"
end

