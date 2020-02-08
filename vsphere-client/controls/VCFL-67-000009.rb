control "VCFL-67-000009" do
  title "vSphere Client must record user access in a format that enables
monitoring of remote access."
  desc  "Remote access can be exploited by an attacker to compromise the
server.  By recording all remote access activities, it will be possible to
determine the attacker's location, intent, and degree of success.

    Virgo can be configured with an AccessLogValve, a component that can be
inserted into the request processing pipeline to provide robust access logging.
The Access Log Valve creates log files in the same format as those created by
standard web servers. When AccessLogValve is properly configured, log files
will contain all the forensic information necessary in the case of a security
incident."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-APP-000016-WSR-000005"
  tag gid: nil
  tag rid: "VCFL-67-000009"
  tag stig_id: "VCFL-67-000009"
  tag cci: "CCI-000067"
  tag nist: ["AC-17 (1)", "Rev_4"]
  desc 'check', "At the command prompt, execute the following command:

# xmllint --format
/usr/lib/vmware-vsphere-client/server/configuration/tomcat-server.xml | sed '2
s/xmlns=\".*\"//g' |  xmllint --xpath
'/Server/Service/Engine/Host/Valve[@className=\"org.apache.catalina.valves.AccessLogValve\"]'/@pattern
-

Expected result:

pattern=\"%h %{x-forwarded-for}i %l %u %t &quot;%r&quot; %s %b
%{#hashedSessionId#}s %I %D\"

If the output does not match the expected result, this is a finding.
"
  desc 'fix', "Navigate to and open
/usr/lib/vmware-vsphere-client/server/configuration/tomcat-server.xml

Ensure the log pattern in log pattern in the
\"org.apache.catalina.valves.AccessLogValve\" node is set to the following:

pattern=\"%h %{x-forwarded-for}i %l %u %t &quot;%r&quot; %s %b
%{#hashedSessionId#}s %I %D\""

  describe xml('/usr/lib/vmware-vsphere-client/server/configuration/tomcat-server.xml') do
    its(['Server/Service/Engine/Host/Valve[@className="org.apache.catalina.valves.AccessLogValve"]/@pattern']) { should cmp ['%h %{x-forwarded-for}i %l %u %t &quot;%r&quot; %s %b %{#hashedSessionId#}s %I %D'] }
  end

end