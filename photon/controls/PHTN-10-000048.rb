control "PHTN-10-000048" do
  title "The Photon operating system must initiate auditing as part of the boot
process."
  desc  "Each process on the system carries an \"auditable\" flag which
indicates whether its activities can be audited. Although auditd takes care of
enabling this for all processes that launch after it starts, adding the kernel
argument ensures the flag is set at boot for every process on the system. This
includes processes created before auditd starts. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000254-GPOS-00095"
  tag gid: nil
  tag rid: "The Photon operating system must initiate auditing as part of the
boot process."
  tag stig_id: "PHTN-10-000048"
  tag cci: "CCI-001464"
  tag nist: ["AU-14 (1)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# grep \"audit=1\" /proc/cmdline

If no results are returned, this is a finding."
  tag fix: "Open /boot/grub2/grub.cfg with a text editor and locate the
following line inside the 'menuentry \"Photon\" {}' block:

linux \"/\"$photon_linux root=$rootpartition net.ifnames=0 $photon_cmdline
coredump_filter=0x37 consoleblank=0

Add \"audit=1\" to the end of the line so it reads as follows:

linux \"/\"$photon_linux root=$rootpartition net.ifnames=0 $photon_cmdline
coredump_filter=0x37 consoleblank=0 audit=1

Reboot the system for the change to take effect."
end

