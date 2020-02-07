control "PHTN-10-000056" do
  title "The Photon operating system must audit the execution of privileged
functions."
  desc  "Misuse of privileged functions, either intentionally or
unintentionally by authorized users, or by unauthorized external entities that
have compromised information system accounts, is a serious and ongoing concern
and can have significant adverse impacts on organizations. Auditing the use of
privileged functions is one way to detect such misuse and identify the risk
from insider threats and the advanced persistent threat."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000327-GPOS-00127"
  tag gid: nil
  tag rid: "The Photon operating system must audit the execution of privileged
functions."
  tag stig_id: "PHTN-10-000056"
  tag cci: "CCI-002234"
  tag nist: ["AC-6 (9)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command to see a list
of setuid files:

# find / -xdev -perm -4000 -type f -o -perm -2000 -type f

Then, execute the following command for each setuid file found in the first
command:

# grep <setuid_path> /etc/audit/audit.rules

Replace <setuid_path> with each path found in the first command.

If each <setuid_path> does not have a corresponding line in the audit rules,
this is a finding.

A typical corresponding line will look like the below:

-a always,exit -F path=<setuid_path> -F perm=x -F auid>=1000 -F
auid!=4294967295 -k privileged
"
  tag fix: "At the command line, execute the following command to see a list of
setuid files:

# find / -xdev -perm -4000 -type f -o -perm -2000 -type f

Then, execute the following command for each setuid file found in the first
command that does not have a corresponding line in the audit rules:

# echo '-a always,exit -F path=<setuid_path> -F perm=x -F auid>=1000 -F
auid!=4294967295 -k privileged' >> /etc/audit/rules.d/audit.STIG.rules

Replace <setuid_path> with each path found in the first command.

Finally, execute the following command to load the new rules.

# /sbin/augenrules --load"
end

