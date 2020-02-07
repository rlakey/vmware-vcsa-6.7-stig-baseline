control "PHTN-10-000045" do
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
  tag stig_id: "PHTN-10-000045"
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

# auditctl -l | grep -E \"(/etc/passwd|/etc/shadow|/etc/group|/etc/gshadow)\"

Expected result:

-w /etc/passwd -p wa -k passwd
-w /etc/shadow -p wa -k shadow
-w /etc/group -p wa -k group
-w /etc/gshadow -p wa -k gshadow

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# echo '-w /etc/passwd -p w -k passwd' >> /etc/audit/rules.d/audit.STIG.rules
# echo '-w /etc/shadow -p w -k shadow' >> /etc/audit/rules.d/audit.STIG.rules
# echo '-w /etc/group -p w -k group' >> /etc/audit/rules.d/audit.STIG.rules
# echo '-w /etc/gshadow -p w -k gshadow' >> /etc/audit/rules.d/audit.STIG.rules
# /sbin/augenrules --load"
end

