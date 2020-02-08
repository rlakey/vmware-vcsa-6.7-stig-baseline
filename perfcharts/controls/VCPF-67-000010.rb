control "VCPF-67-000010" do
  title "Performance Charts must not be configured with unsupported realms."
  desc  "Performance Chartse performs user authentication at the application
level and not through Tomcat. Depending on the VCSa version, Performance Charts
may come configured with a UserDatabaseRealm. This should be removed in the
name of eliminating unnecessary features."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-APP-000141-WSR-000015"
  tag gid: nil
  tag rid: "VCPF-67-000010"
  tag stig_id: "VCPF-67-000010"
  tag cci: "CCI-000381"
  tag nist: ["CM-7 a", "Rev_4"]
  desc 'check', "At the command prompt, execute the following command:

# grep UserDatabaseRealm /usr/lib/vmware-perfcharts/tc-instance/conf/server.xml

If the command produces any output, this is a finding."
  desc 'fix', "Navigate to and open
/usr/lib/vmware-perfcharts/tc-instance/conf/server.xml

Remove the <Realm> node returned in the check."

  describe command('grep UserDatabaseRealm /usr/lib/vmware-perfcharts/tc-instance/conf/server.xml') do
    its ('stdout.strip') { should eq '' }
  end

end

