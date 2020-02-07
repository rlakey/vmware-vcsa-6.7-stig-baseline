control "PHTN-10-000005" do
  title "The Photon operating system must set a session inactivity timeout of
15 minutes or less."
  desc  "A session time-out is an action taken when a session goes idle for any
reason. Rather than relying on the user to manually disconnect their session
prior to going idle, the Photon operating system must be able to identify when
a session has idled and take action to terminate the session."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000029-GPOS-00010"
  tag gid: nil
  tag rid: "The Photon operating system must set a session inactivity timeout
of 15 minutes or less."
  tag stig_id: "PHTN-10-000005"
  tag cci: "CCI-000057"
  tag nist: ["AC-11 a", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# cat /etc/profile.d/tmout.sh

Expected result:

TMOUT=900
readonly TMOUT
export TMOUT
mesg n 2>/dev/null

If the file tmout.sh does not exist or the output does not look like the
expected result, this is a finding."
  tag fix: "Open /etc/profile.d/tmout.sh with a text editor and set it's
content to the following:

TMOUT=900
readonly TMOUT
export TMOUT
mesg n 2>/dev/null"
end

