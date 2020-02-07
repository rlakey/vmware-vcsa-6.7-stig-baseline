control "PHTN-10-000041" do
  title "The Photon operating system /var/log directory must be owned by root."
  desc  "Only authorized personnel should be aware of errors and the details of
the errors. Error messages are an indicator of an organization's operational
state and can provide sensitive information to an unprivileged attacker."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000206-GPOS-00084"
  tag gid: nil
  tag rid: "The Photon operating system /var/log directory must be owned by
root."
  tag stig_id: "PHTN-10-000041"
  tag cci: "CCI-001314"
  tag nist: ["SI-11 b", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# stat -c \"%n is owned by %U and group owned by %G\" /var/log

If the /var/log is not owned by root, this is a finding."
  tag fix: "At the command line, execute the following command:

# chown root:root /var/log"
end

