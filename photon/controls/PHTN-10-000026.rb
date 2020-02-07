control "PHTN-10-000026" do
  title "The Photon operating system must store only encrypted representations
of passwords."
  desc  "Passwords must be protected at all times via strong, one way
encryption. If passwords are not encrypted, they can be plainly read (i.e.,
clear text) and easily compromised. If they are encrypted with a weak cipher,
those password are much more vulnerability to offline bute forcing attacks"
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000073-GPOS-00041"
  tag gid: nil
  tag rid: "The Photon operating system must store only encrypted
representations of passwords."
  tag stig_id: "PHTN-10-000026"
  tag cci: "CCI-000196"
  tag nist: ["IA-5 (1) (c)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep SHA512 /etc/login.defs|grep -v \"#\"

Expected result :

ENCRYPT_METHOD SHA512

If there is no output or if the output does match the expected result, this is
a finding."
  tag fix: "Open /etc/login.defs with a text editor. Add or replace the
ENCRYPT_METHOD line as follows:

ENCRYPT_METHOD SHA512
"
end

