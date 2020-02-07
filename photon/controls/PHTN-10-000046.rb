control "PHTN-10-000046" do
  title "The Photon operating system must audit all account disabling actions."
  desc  "When operating system accounts are disabled, user accessibility is
affected. Accounts are utilized for identifying individual users or for
identifying the operating system processes themselves. In order to detect and
respond to events affecting user accessibility and system processing, operating
systems must audit account disabling actions."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000240-GPOS-00090"
  tag gid: nil
  tag rid: "The Photon operating system must audit all account disabling
actions."
  tag stig_id: "PHTN-10-000046"
  tag cci: "CCI-001404"
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

# auditctl -l | grep watch=/usr/bin/passwd

Expected result:

-w /usr/bin/passwd -p x -k passwd

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# echo '-w /usr/bin/passwd -p x -k passwd' >>
/etc/audit/rules.d/audit.STIG.rules
# /sbin/augenrules --load"
end

