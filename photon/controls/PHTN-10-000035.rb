control "PHTN-10-000035" do
  title "The Photon operating system must configure sshd to disallow root
logins. "
  desc  "Logging on with a user-specific account provides individual
accountability for actions performed on the system. Users must log in with
their individual accounts and elevate to root as necessary. Disallowing root
SSH login also reduces the distruibution of the root password to users who may
not otherwise need that level of privilege."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000109-GPOS-00056"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to disallow root
logins. "
  tag stig_id: "PHTN-10-000035"
  tag cci: "CCI-000770"
  tag nist: ["IA-2 (5)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# sshd -T|&grep -i PermitRootLogin

Expected result:

permitrootlogin no

If the output does not match the expected result, this is a finding.

"
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"PermitRootLogin\" line is uncommented and set to the following:

PermitRootLogin no

At the command line, execute the following command:

# service sshd reload"
end

