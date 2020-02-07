control "PHTN-10-000039" do
  title "The Photon operating system must configure sshd to disconnect idle SSH
sessions."
  desc  "Terminating an idle session within a short time period reduces the
window of opportunity for unauthorized personnel to take control of a
management session enabled on the console or console port that has been left
unattended"
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000163-GPOS-00072"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to disconnect idle
SSH sessions."
  tag stig_id: "PHTN-10-000039"
  tag cci: "CCI-001133"
  tag nist: ["SC-10", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# sshd -T|&grep -i ClientAliveCountMax

Expected result:

ClientAliveCountMax 0

If the output does not match the expected result, this is a finding.

"
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"ClientAliveCountMax\" line is uncommented and set to the following:

ClientAliveCountMax 0

At the command line, execute the following command:

# service sshd reload"
end

