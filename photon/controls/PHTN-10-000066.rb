control "PHTN-10-000066" do
  title "The Photon operating system must prohibit the use of cached
authenticators after one day."
  desc  "If cached authentication information is out-of-date, the validity of
the authentication information may be questionable."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-OS-000383-GPOS-00166"
  tag gid: nil
  tag rid: "The Photon operating system must prohibit the use of cached
authenticators after one day."
  tag stig_id: "PHTN-10-000066"
  tag cci: "CCI-002007"
  tag nist: ["IA-5 (13)", "Rev_4"]
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "At the command line, execute the following command:

# /opt/likewise/bin/lwregshell list_values
\"HKEY_THIS_MACHINE\\Services\\lsass\\Parameters\\Providers\\ActiveDirectory\"|grep
\"CacheEntryExpiry\"

If the value returned is not 14400 or less, this is a finding."
  tag fix: "At the command line, execute the following command:

# /opt/likewise/bin/lwregshell set_value
\"[HKEY_THIS_MACHINE\\Services\\lsass\\Parameters\\Providers\\ActiveDirectory]\"
CacheEntryExpiry 14400"
end

