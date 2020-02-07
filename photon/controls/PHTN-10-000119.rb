control "PHTN-10-000119" do
  title "The Photon operating system must protect sshd configuration from
unauthorized access."
  desc  "The sshd_config file contains all the configuration items for sshd.
Incorrect or malicious configuration of sshd can allow unauthorized access to
the system, insecure communication, limited forensic trail, etc. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must protect sshd configuration from
unauthorized access."
  tag stig_id: "PHTN-10-000119"
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

# stat -c \"%n permissions are %a and owned by %U:%G\" /etc/ssh/sshd_config

Expected result:

/etc/ssh/sshd_config permissions are 600 and owned by root:root

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# chmod 600 /etc/ssh/sshd_config
# chown root:root /etc/ssh/sshd_config"
end

