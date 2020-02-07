control "PHTN-10-000033" do
  title "The Photon operating system must disable the loading of unnecessary
kernel modules."
  desc  "To support the requirements and principles of least functionality, the
operating system must provide only essential capabilities and limit the use of
modules, protocols, and/or services to only those required for the proper
functioning of the product."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000096-GPOS-00050"
  tag gid: nil
  tag rid: "The Photon operating system must disable the loading of unnecessary
kernel modules."
  tag stig_id: "PHTN-10-000033"
  tag cci: "CCI-000382"
  tag nist: ["CM-7 b", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# modprobe --showconfig | grep \"^install\" | grep \"/bin\"

Expected result:

install sctp /bin/false
install dccp /bin/false
install dccp_ipv4 /bin/false
install dccp_ipv6 /bin/false
install ipx /bin/false
install appletalk /bin/false
install decnet /bin/false
install rds /bin/false
install tipc /bin/false
install bluetooth /bin/false
install usb-storage /bin/false
install ieee1394 /bin/false
install cramfs /bin/false
install freevxfs /bin/false
install jffs2 /bin/false
install hfs /bin/false
install hfsplus /bin/false
install squashfs /bin/false
install udf /bin/false

If the output does not match the expected result, this is a finding."
  tag fix: "Open  /etc/modprobe.d/modprobe.conf with a text editor and set the
contents as follows:

install sctp /bin/false
install dccp /bin/false
install dccp_ipv4 /bin/false
install dccp_ipv6 /bin/false
install ipx /bin/false
install appletalk /bin/false
install decnet /bin/false
install rds /bin/false
install tipc /bin/false
install bluetooth /bin/false
install usb-storage /bin/false
install ieee1394 /bin/false
install cramfs /bin/false
install freevxfs /bin/false
install jffs2 /bin/false
install hfs /bin/false
install hfsplus /bin/false
install squashfs /bin/false
install udf /bin/false
"
end

