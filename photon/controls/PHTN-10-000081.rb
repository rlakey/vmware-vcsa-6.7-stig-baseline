control "PHTN-10-000081" do
  title "The Photon operating system must disabled the debug-shell service."
  desc  "The debug-shell service is intended to diagnose systemd related boot
issues with various systemctl commands. Once enabled and following a system
reboot, the root shell will be available on tty9. This service must remain
disabled until and unless otherwise directed by VMware support."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must disabled the debug-shell service."
  tag stig_id: "PHTN-10-000081"
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

# systemctl status debug-shell.service|grep -E --color=always disabled

If the debug-shell service is not disabled, this is a finding."
  tag fix: "At the command line, execute the following commands:

# systemctl stop debug-shell.service
# systemctl disable debug-shell.service

Reboot for changes to take effect."
end

