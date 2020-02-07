control "PHTN-10-000011" do
  title "The Photon operating system must configure auditd to use the correct
log format."
  desc  "In order to compile an accurate risk assessment and provide forensic
analysis, it is essential for security personnel to know know exact, unfiltered
details of the event in question."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000038-GPOS-00016"
  tag gid: nil
  tag rid: "The Photon operating system must configure auditd to use the
correct log format."
  tag stig_id: "PHTN-10-000011"
  tag cci: "CCI-000131"
  tag nist: ["AU-3", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep \"^log_format\" /etc/audit/auditd.conf

Expected result:

log_format = RAW

If there is no output, this is not a finding.

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/audit/auditd.conf with a text editor and ensure that the
\"log_format\" line is uncommented and set to the following:

log_format = RAW

At the command line, execute the following command:

# service auditd reload"
end

