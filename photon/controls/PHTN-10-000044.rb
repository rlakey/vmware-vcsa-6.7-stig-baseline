control "PHTN-10-000044" do
  title "The Photon operating system must audit all account modifications."
  desc  "Once an attacker establishes access to a system, the attacker often
attempts to create a persistent method of reestablishing access.  One way to
accomplish this is for the attacker to modify an existing account.  Auditing
account modification actions provides logging that can be used for forensic
purposes. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000239-GPOS-00089"
  tag gid: nil
  tag rid: "The Photon operating system must audit all account modifications."
  tag stig_id: "PHTN-10-000044"
  tag cci: "CCI-001403"
  tag nist: ["AC-2 (4)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# auditctl -l | grep -E \"(usermod|groupmod)\"

Expected result:

-w /usr/sbin/usermod -p x -k usermod
-w /usr/sbin/groupmod -p x -k groupmod

If the output does not match the expected result, this is a finding.
"
  tag fix: "At the command line, execute the following commands:

# echo '-w /usr/sbin/usermod -p x -k usermod' >>
/etc/audit/rules.d/audit.STIG.rules
# echo '-w /usr/sbin/groupmod -p x -k groupmod' >>
/etc/audit/rules.d/audit.STIG.rules
# /sbin/augenrules --load"
end

