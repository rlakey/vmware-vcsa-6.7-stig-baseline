control "PHTN-10-000059" do
  title "The Photon operating system must configure a cron job to rotate auditd
logs daily."
  desc  "Audit logs are most useful when accessible by date, rather than size.
This can be acomplished through a combination of an audit log rotation cron
job, setting a reasonable number of logs to keep and configuring auditd to not
rotate the logs on it's own. This ensures that audit logs are accessible to the
ISSO in the event of a central log processing failure."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000341-GPOS-00132"
  tag gid: nil
  tag rid: "The Photon operating system must configure a cron job to rotate
auditd logs daily."
  tag stig_id: "PHTN-10-000059"
  tag cci: "CCI-001849"
  tag nist: ["AU-4", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# cat /etc/cron.daily/audit-rotate

Expected result:

#!/bin/bash
service auditd rotate

If the output of the command does not match the expected result, this is a
finding."
  tag fix: "If /etc/cron.daily/audit-rotate does not exist, run the following
commands:

# touch /etc/cron.daily/audit-rotate
# chown root:root /etc/cron.daily/audit-rotate
# chmod 0700 /etc/cron.daily/audit-rotate

Open /etc/cron.daily/audit-rotate with a text editor. Set it's contents as
follows:

#!/bin/bash
service auditd rotate
"
end

