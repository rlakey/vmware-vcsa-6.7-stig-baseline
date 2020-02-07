control "PHTN-10-000007" do
  title "The Photon operating system must have sshd authentication logging
enabled."
  desc  "Automated monitoring of remote access sessions allows organizations to
detect cyber attacks and ensure ongoing compliance with remote access policies
by auditing connection activities.

    Shipping sshd authentication events to syslog allows organizations to use
their log aggregators to correlate forensic activities among multiple systems.
  "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000032-GPOS-00013"
  tag gid: nil
  tag rid: "The Photon operating system must have sshd authentication logging
enabled."
  tag stig_id: "PHTN-10-000007"
  tag cci: "CCI-000067"
  tag nist: ["AC-17 (1)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep \"^authpriv\" /etc/rsyslog.conf

Expected result:

authpriv.*   /var/log/audit/sshinfo.log

If the command does not return any output, this is a finding.
"
  tag fix: "Open \xA0/etc/rsyslog.conf with a text editor and locate the
following line:

$IncludeConfig /etc/vmware-syslog/syslog.conf

Ensure that the following entry is put beneath the stated line and before the
\"# vmware services\" line.

authpriv.*   /var/log/audit/sshinfo.log

If the following line is at the end of the file it must be removed or commented
out:

auth.* \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 /var/log/auth.log

At the command line, execute the following command:

# systemctl restart syslog
# service sshd reload"
end

