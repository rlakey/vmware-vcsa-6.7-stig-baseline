control "PHTN-10-000069" do
  title "The Photon operating system must implement address space layout
randomization to protect its memory from unauthorized code execution."
  desc  "Address space layout randomization (ASLR) makes it more difficult for
an attacker to predict the location of attack code he or she has introduced
into a process's address space during an attempt at exploitation. Additionally,
ASLR also makes it more difficult for an attacker to know the location of
existing code in order to repurpose it using return-oriented programming (ROP)
techniques."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000433-GPOS-00193"
  tag gid: nil
  tag rid: "The Photon operating system must implement address space layout
randomization to protect its memory from unauthorized code execution."
  tag stig_id: "PHTN-10-000069"
  tag cci: "CCI-002824"
  tag nist: ["SI-16", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# cat /proc/sys/kernel/randomize_va_space

If the value of randomize_va_space is not 2, this is a finding."
  tag fix: "Open /etc/sysctl.d/50-security-hardening.conf with a text editor
and ensure that the \"randomize_va_space\" is uncommented and set to the
following:

kernel.randomize_va_space=2

At the command line, execute the following command:

# sysctl --system"
end

