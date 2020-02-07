control "PHTN-10-000004" do
  title "The Photon operating system must limit the number of concurrent
sessions to ten for all accounts and/or account types."
  desc  "Operating system management includes the ability to control the number
of users and user sessions that utilize an operating system. Limiting the
number of allowed users and sessions per user is helpful in reducing the risks
related to DoS attacks."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000027-GPOS-00008"
  tag gid: nil
  tag rid: "The Photon operating system must limit the number of concurrent
sessions to ten for all accounts and/or account types."
  tag stig_id: "PHTN-10-000004"
  tag cci: "CCI-000054"
  tag nist: ["AC-10", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

#  grep \"^[^#].*maxlogins.*\" /etc/security/limits.conf

Expected result:

* \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0hard \xA0 \xA0maxlogins \xA0 \xA0 \xA010

If the output does not match the expected result, this is a finding.

Note: The expected result may be repeated multiple times."
  tag fix: "At the command line, execute the following command:

# echo '* \xA0 \xA0 \xA0 \xA0 \xA0 \xA0 \xA0hard \xA0 \xA0maxlogins \xA0 \xA0
\xA010' >> /etc/security/limits.conf"
end

