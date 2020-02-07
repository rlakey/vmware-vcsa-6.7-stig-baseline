control "PHTN-10-000087" do
  title "The Photon operating system must configure sshd to disallow Kerberos
authentication."
  desc  "If Kerberos is enabled through SSH, sshd provides a means of access to
the system's Kerberos implementation. Vulnerabilities in the system's Kerberos
implementation may then be subject to exploitation. To reduce the attack
surface of the system, the Kerberos authentication mechanism within SSH must be
disabled."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to disallow
Kerberos authentication."
  tag stig_id: "PHTN-10-000087"
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

# sshd -T|&grep -i KerberosAuthentication

Expected result:

KerberosAuthentication no

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"KerberosAuthentication\" line is uncommented and set to the following:

KerberosAuthentication no

At the command line, execute the following command:

# service sshd reload"
end

