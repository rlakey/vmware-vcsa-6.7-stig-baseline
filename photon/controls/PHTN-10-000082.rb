control "PHTN-10-000082" do
  title "The Photon operating system must configure a secure umask for all
shells."
  desc  "A user's umask influences the permissions assigned to files that a
user creates. Setting an appropriate umask is important to make sure that
information is not exposed to unprivileged users."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must configure a secure umask for all
shells."
  tag stig_id: "PHTN-10-000082"
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

# cat /etc/profile.d/umask.sh

Expected result:

# By default, the umask should be set.
if [ \"$(id -gn)\" = \"$(id -un)\" -a $EUID -gt 99 ] ; then
  umask 002
else
  umask 027
fi

If the output does not match the expected result, this is a finding."
  tag fix: "Open /etc/profile.d/umask.sh with a text editor.

Set the contents as follows:

# By default, the umask should be set.
if [ \"$(id -gn)\" = \"$(id -un)\" -a $EUID -gt 99 ] ; then
  umask 002
else
  umask 027
fi"
end

