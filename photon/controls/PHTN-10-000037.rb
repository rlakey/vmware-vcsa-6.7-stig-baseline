control "PHTN-10-000037" do
  title "The Photon operating system must use TCP syncookies."
  desc  "A TCP SYN flood attack can cause a denial of service by filling a
system's TCP connection table with connections in the SYN_RCVD state.
Syncookies can be used to track a connection when a subsequent ACK is received,
verifying the initiator is attempting a valid connection and is not a flood
source. This feature is activated when a flood condition is detected, and
enables the system to continue servicing valid connection requests."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000142-GPOS-00071"
  tag gid: nil
  tag rid: "The Photon operating system must use TCP syncookies."
  tag stig_id: "PHTN-10-000037"
  tag cci: "CCI-001095"
  tag nist: ["SC-5 (2)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# /sbin/sysctl -a --pattern /tcp_syncookies

Expected result:

net.ipv4.tcp_syncookies = 1

If the output does not match the expected result, this is a finding."
  tag fix: "At the command line, execute the following commands:

# sed -i -e \"/^net.ipv4.tcp_syncookies/d\" /etc/sysctl.conf
# echo net.ipv4.tcp_syncookies=1>>/etc/sysctl.conf
"
end

