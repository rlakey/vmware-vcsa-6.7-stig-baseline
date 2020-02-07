control "PHTN-10-000105" do
  title "The Photon operating system must not respond to IPv4 Internet Control
Message Protocol (ICMP) echoes sent to a broadcast address."
  desc  "Responding to broadcast (ICMP) echoes facilitates network mapping and
provides a vector for amplification attacks."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must not respond to IPv4 Internet
Control Message Protocol (ICMP) echoes sent to a broadcast address."
  tag stig_id: "PHTN-10-000105"
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

# /sbin/sysctl -a --pattern ignore_broadcasts

Expected result:

net.ipv4.icmp_echo_ignore_broadcasts = 1

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# sed -i -e \"/^net.ipv4.icmp_echo_ignore_broadcasts/d\" /etc/sysctl.conf
# echo net.ipv4.icmp_echo_ignore_broadcasts=1>>/etc/sysctl.conf"
end

