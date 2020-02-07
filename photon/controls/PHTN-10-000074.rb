control "PHTN-10-000074" do
  title "The Photon operating system auditd service must generate audit records
for all account creations, modifications, disabling, and termination events."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one.

    Audit records can be generated from various components within the
information system (e.g., module or policy filter).
  "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000476-GPOS-00221"
  tag gid: nil
  tag rid: "The Photon operating system auditd service must generate audit
records for all account creations, modifications, disabling, and termination
events."
  tag stig_id: "PHTN-10-000074"
  tag cci: "CCI-000172"
  tag nist: ["AU-12 c", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# auditctl -l | grep -E /etc/security/opasswd

If any of these are not listed with a permissions filter of at least 'w', this
is a finding."
  tag fix: "At the command line, execute the following command:

# echo '-w /etc/security/opasswd -p wa -k opasswd' >>
/etc/audit/rules.d/audit.STIG.rules
# /sbin/augenrules --load"
end

