control "PHTN-10-000027" do
  title "The Photon operating system must be configured so that passwords for
new users are restricted to a 24 hour minimum lifetime."
  desc  "Enforcing a minimum password lifetime helps to prevent repeated
password changes to defeat the password reuse or history enforcement
requirement. If users are allowed to immediately and continually change their
password, the password could be repeatedly changed in a short period of time to
defeat the organization's policy regarding password reuse."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000075-GPOS-00043"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that passwords
for new users are restricted to a 24 hour minimum lifetime."
  tag stig_id: "PHTN-10-000027"
  tag cci: "CCI-000198"
  tag nist: ["IA-5 (1) (d)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep \"^PASS_MIN_DAYS\" /etc/login.defs

If PASS_MIN_DAYS is not set to 1, this is a finding

"
  tag fix: "Open /etc/login.defs with a text editor.\xA0Modify the
PASS_MIN_DAYS line to the following:

PASS_MIN_DAYS   1"
end

