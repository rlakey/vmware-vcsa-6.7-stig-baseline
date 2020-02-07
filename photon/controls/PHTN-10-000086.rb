control "PHTN-10-000086" do
  title "The Photon operating system must configure sshd to perform strict mode
checking of home directory configuration files."
  desc  "If other users have access to modify user-specific SSH configuration
files, they may be able to log on to the system as another user."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure sshd to perform strict
mode checking of home directory configuration files."
  tag stig_id: "PHTN-10-000086"
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

# sshd -T|&grep -i StrictModes

Expected result:

 StrictModes yes

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/ssh/sshd_config with a text editor and ensure that the
\"StrictModes\" line is uncommented and set to the following:

StrictModes yes

At the command line, execute the following command:

# service sshd reload"
end

