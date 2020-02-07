control "PHTN-10-000121" do
  title "The Photon operating system must set the UMASK parameter correctly."
  desc  "The umask value influences the permissions assigned to files when they
are created. The umask setting in login.defs controls the permissions for a new
user's home directory. By setting the proper umask, home directories will only
allow the new user to read and write file there."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00228"
  tag gid: nil
  tag rid: "The Photon operating system must set the UMASK parameter correctly."
  tag stig_id: "PHTN-10-000121"
  tag cci: "CCI-000366"
  tag nist: ["CM-6 b", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep UMASK /etc/login.defs

Expected result:

UMASK 077

If the output does not match the expected result, this a finding."
  tag fix: "Open /etc/login.defs with a text editor and ensure that the
\"UMASK\" line is uncommented and set to the following:

UMASK 077"
end

