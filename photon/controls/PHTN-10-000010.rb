control "PHTN-10-000010" do
  title "The Photon operating system must configure auditd to log to disk."
  desc  "Without establishing what type of events occurred, it would be
difficult to establish, correlate, and investigate the events leading up to an
outage or attack.

    Audit record content must be shipped to a central location but it must also
be logged locally.
  "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000037-GPOS-00015"
  tag gid: nil
  tag rid: "The Photon operating system must configure auditd to log to disk."
  tag stig_id: "PHTN-10-000010"
  tag cci: "CCI-000130"
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

# grep \"^write_logs\" /etc/audit/auditd.conf

Expected result:

write_logs = yes

If there is no output, this is not a finding.

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/audit/auditd.conf with a text editor and ensure that the
\"write_logs\" line is uncommented and set to the following:

write_logs = yes

At the command line, execute the following command:

# service auditd reload"
end

