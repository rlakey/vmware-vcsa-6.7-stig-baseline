control "PHTN-10-000083" do
  title "The Photon operating system must configure sshd to disallow Generic
Security Service Application Program Interface (GSSAPI) authentication."
  desc  "GSSAPI authentication is used to provide additional authentication
mechanisms to applications. Allowing GSSAPI authentication through SSH exposes
the system\x92s GSSAPI to remote hosts, increasing the attack surface of the
system."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to disallow Generic
Security Service Application Program Interface (GSSAPI) authentication."
  tag stig_id: "PHTN-10-000083"
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

# sshd -T|&grep -i GSSAPIAuthentication

Expected result:

GSSAPIAuthentication no

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"GSSAPIAuthentication\" line is uncommented and set to the following:

GSSAPIAuthentication no

At the command line, execute the following command:

# service sshd reload"
end

