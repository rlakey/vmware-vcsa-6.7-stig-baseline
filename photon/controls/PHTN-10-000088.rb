control "PHTN-10-000088" do
  title "The Photon operating system must configure sshd to use privilege
separation."
  desc  "Privilege separation in sshd causes the process to drop root
privileges when not needed, which would decrease the impact of software
vulnerabilities in the unprivileged section."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to use privilege
separation."
  tag stig_id: "PHTN-10-000088"
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

# sshd -T|&grep -i UsePrivilegeSeparation

Expected result:

UsePrivilegeSeparation yes

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"UsePrivilegeSeparation\" line is uncommented and set to the following:

UsePrivilegeSeparation yes

At the command line, execute the following command:

# service sshd reload"
end

