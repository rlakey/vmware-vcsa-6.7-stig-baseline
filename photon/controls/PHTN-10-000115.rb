control "PHTN-10-000115" do
  title "The Photon operating system must be configured to protect the SSH
public host key from unauthorized modification."
  desc  "If a public host key file is modified by an unauthorized user, the SSH
service may be compromised."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured to protect the SSH
public host key from unauthorized modification."
  tag stig_id: "PHTN-10-000115"
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

# stat -c \"%n permissions are %a and owned by %U:%G\" /etc/ssh/*key.pub

Expected result:

/etc/ssh/ssh_host_dsa_key.pub permissions are 644 and owned by root:root
/etc/ssh/ssh_host_ecdsa_key.pub permissions are 644 and owned by root:root
/etc/ssh/ssh_host_ed25519_key.pub permissions are 644 and owned by root:root
/etc/ssh/ssh_host_rsa_key.pub permissions are 644 and owned by root:root

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands for each
returned file:

# chmod 644 <file>
# chown root:root <file>"
end
