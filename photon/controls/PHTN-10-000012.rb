control "PHTN-10-000012" do
  title "The Photon operating system must be configured to audit the execution
of privileged functions."
  desc  "Misuse of privileged functions, either intentionally or
unintentionally by authorized users, or by unauthorized external entities that
have compromised information system accounts, is a serious and ongoing concern
and can have significant adverse impacts on organizations. Auditing all actions
by superusers is one way to detect such misuse and identify the risk from
insider threats and the advanced persistent threat."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000042-GPOS-00020"
  tag gid: nil
  tag rid: "The Photon operating system must be configured to audit the
execution of privileged functions."
  tag stig_id: "PHTN-10-000012"
  tag cci: "CCI-000135"
  tag nist: ["AU-3 (1)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# auditctl -l | grep execve

Expected result:

-a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -k execpriv
-a always,exit -F arch=b64 -S execve -C uid!=euid -F euid=0 -k execpriv
-a always,exit -F arch=b32 -S execve -C gid!=egid -F egid=0 -k execpriv
-a always,exit -F arch=b64 -S execve -C gid!=egid -F egid=0 -k execpriv

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# echo -a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -k
execpriv>>/etc/audit/rules.d/audit.STIG.rules
# echo -a always,exit -F arch=b64 -S execve -C uid!=euid -F euid=0 -k
execpriv>>/etc/audit/rules.d/audit.STIG.rules
# echo -a always,exit -F arch=b32 -S execve -C gid!=egid -F egid=0 -k
execpriv>>/etc/audit/rules.d/audit.STIG.rules
# echo -a always,exit -F arch=b64 -S execve -C gid!=egid -F egid=0 -k
execpriv>>/etc/audit/rules.d/audit.STIG.rules
# /sbin/augenrules --load"
end

