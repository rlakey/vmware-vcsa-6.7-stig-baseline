control "PHTN-10-000023" do
  title "The Photon operating system must enforce password complexity by
requiring that at least one numeric character be used."
  desc  "Use of a complex password helps to increase the time and resources
required to compromise the password. Password complexity, or strength, is a
measure of the effectiveness of a password in resisting attempts at guessing
and brute-force attacks."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000071-GPOS-00039"
  tag gid: nil
  tag rid: "The Photon operating system must enforce password complexity by
requiring that at least one numeric character be used."
  tag stig_id: "PHTN-10-000023"
  tag cci: "CCI-000194"
  tag nist: ["IA-5 (1) (a)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep pam_cracklib /etc/pam.d/system-password|grep --color=always
\"dcredit=..\"

Expected result:

password requisite pam_cracklib.so dcredit=-1 ucredit=-1 lcredit=-1 ocredit=-1
minlen=8 minclass=4 difok=4 retry=3 maxsequence=0 enforce_for_root

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/pam.d/system-password with a text editor.

Add the following, replacing any existing 'pam_cracklib.so' line :

password requisite pam_cracklib.so dcredit=-1 ucredit=-1 lcredit=-1 ocredit=-1
minlen=8 minclass=4 difok=4 retry=3 maxsequence=0 enforce_for_root"
end

