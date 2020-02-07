control "PHTN-10-000051" do
  title "The Photon operating system must protect audit tools from unauthorized
modification."
  desc  "Protecting audit information also includes identifying and protecting
the tools used to view and manipulate log data. Therefore, protecting audit
tools is necessary to prevent unauthorized operation on audit information."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000257-GPOS-00098"
  tag gid: nil
  tag rid: "The Photon operating system must protect audit tools from
unauthorized modification."
  tag stig_id: "PHTN-10-000051"
  tag cci: "CCI-001494"
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

# stat -c \"%n permissions are %a\" /usr/sbin/auditctl /usr/sbin/auditd
/usr/sbin/aureport /usr/sbin/ausearch /usr/sbin/autrace

If any fileis more permissive than 750, this is a finding."
  tag fix: "At the command line, execute the following command for each file
returned:

# chmod 750 <file>"
end

