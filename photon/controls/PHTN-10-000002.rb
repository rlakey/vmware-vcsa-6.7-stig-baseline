control "PHTN-10-000002" do
  title "The Photon operating system must automatically lock an account when
three unsuccessful logon attempts occur."
  desc  "By limiting the number of failed logon attempts, the risk of
unauthorized system access via user password guessing, otherwise known as
brute-force attacks, is reduced. Limits are imposed by locking the account."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000021-GPOS-00005"
  tag gid: nil
  tag rid: "The Photon operating system must automatically lock an account when
three unsuccessful logon attempts occur."
  tag stig_id: "PHTN-10-000002"
  tag cci: "CCI-000044"
  tag nist: ["AC-7 a", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep pam_tally2 /etc/pam.d/system-auth|grep --color=always \"deny=.\"

Expected result:

auth \xA0 \xA0required \xA0 \xA0 \xA0 \xA0pam_tally2.so file=/var/log/tallylog
deny=3 onerr=fail even_deny_root unlock_time=86400 root_unlock_time=300

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/pam.d/system-auth with a text editor

Add the following line after the last auth statement:

auth \xA0 \xA0required \xA0 \xA0 \xA0 \xA0pam_tally2.so file=/var/log/tallylog
deny=3 onerr=fail even_deny_root unlock_time=86400 root_unlock_time=300"
end

