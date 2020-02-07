control "PHTN-10-000104" do
  title "The Photon operating system must not forward IPv4 or IPv6
source-routed packets."
  desc  "Source routing is an Internet Protocol mechanism that allows an IP
packet to carry information, a list of addresses, that tells a router the path
the packet must take. There is also an option to record the hops as the route
is traversed. The list of hops taken, the \"route record\", provides the
destination with a return path to the source. This allows the source (the
sending host) to specify the route, loosely or strictly, ignoring the routing
tables of some or all of the routers. It can allow a user to redirect network
traffic for malicious purposes and should therefore be disabled."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000480-GPOS-00227"
  tag gid: nil
  tag rid: "The Photon operating system must not forward IPv4 or IPv6
source-routed packets."
  tag stig_id: "PHTN-10-000104"
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

# /sbin/sysctl -a --pattern
\"net.ipv[4|6].conf.(all|default|eth.*).accept_source_route\"

Expected result:

net.ipv4.conf.all.accept_source_route = 0
net.ipv4.conf.default.accept_source_route = 0
net.ipv4.conf.eth0.accept_source_route = 0
net.ipv6.conf.all.accept_source_route = 0
net.ipv6.conf.default.accept_source_route = 0
net.ipv6.conf.eth0.accept_source_route = 0

If the output does not match the expected result, this is a finding.

Note: The number of ethx lines returned is dependant on the number of
interfaces. Every ethx entry must be set to 0."
  tag fix: "At the command line, execute the following command:

# for SETTING in $(/sbin/sysctl -aN --pattern
\"net.ipv[4|6].conf.(all|default|eth.*).accept_source_route\"); do sed -i -e
\"/^${SETTING}/d\" /etc/sysctl.conf;echo $SETTING=0>>/etc/sysctl.conf; done"
end

