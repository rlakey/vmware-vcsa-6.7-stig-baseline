control "PHTN-10-000049" do
  title "The Photon operating system audit files and directories must have
correct permissions."
  desc  "Protecting audit information also includes identifying and protecting
the tools used to view and manipulate log data. Therefore, protecting audit
tools is necessary to prevent unauthorized operation on audit information."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000256-GPOS-00097"
  tag gid: nil
  tag rid: "The Photon operating system audit files and directories must have
correct permissions."
  tag stig_id: "PHTN-10-000049"
  tag cci: "CCI-001493"
  tag nist: ["AU-9", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# stat -c \"%n is owned by %U and group owned by %G\" /etc/audit/auditd.conf

If auditd.conf is not owned by root and group owned by root, this is a finding."
  tag fix: "At the command line, execute the following command:

# chown root:root /etc/audit/auditd.conf"
end

