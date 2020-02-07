control "PHTN-10-000095" do
  title "The Photon operating system must be configured so that the x86
Ctrl-Alt-Delete key sequence is disabled on the command line."
  desc  "When the Ctrl-Alt-Del target is enabled, locally logged-on user who
presses Ctrl-Alt-Delete, when at the console, can reboot the system. If
accidentally pressed, as could happen in the case of a mixed OS environment,
this can create the risk of short-term loss of availability of systems due to
unintentional reboot. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must be configured so that the x86
Ctrl-Alt-Delete key sequence is disabled on the command line."
  tag stig_id: "PHTN-10-000095"
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

# systemctl status ctrl-alt-del.target

Expected result:

ctrl-alt-del.target
Loaded: masked (/dev/null; bad)
Active: inactive (dead)

If the output does not match the expected result, this is a finding"
  tag fix: "At the command line, execute the following command:

# systemctl mask ctrl-alt-del.target"
end

