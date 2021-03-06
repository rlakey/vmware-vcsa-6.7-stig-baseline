control "VCST-67-000028" do
  title "The Security Token Service must must be configured with the
appropriate ports."
  desc  "Web servers provide numerous processes, features, and functionalities
that utilize TCP/IP ports. Some of these processes may be deemed unnecessary or
too unsecure to run on a production system. The ports that the Security Token
Service listens on are configured in the catalina.properties file and must be
veriified as accurate to their shipping state."
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-APP-000383-WSR-000175"
  tag gid: nil
  tag rid: "VCST-67-000028"
  tag stig_id: "VCST-67-000028"
  tag cci: "CCI-001762"
  tag nist: ["CM-7 (1) (b)", "Rev_4"]
  desc 'check', "At the command prompt, execute the following command:

# grep 'bio' /usr/lib/vmware-sso/vmware-sts/conf/catalina.properties

Expected result:

bio-custom.http.port=7080
bio-custom.https.port=8443
bio-ssl-localhost.https.port=7444

If the output of the command does not match the expected result, this is a
finding.
"
  desc 'fix', "Navigate to and open
/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties

Navigate to the ports specification section.

Set the Security Token Service port specifications according to the below list:

bio-custom.http.port=7080
bio-custom.https.port=8443
bio-ssl-localhost.https.port=7444
"

  describe parse_config_file('/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties').params['bio-custom.http.port'] do
    it { should eq '7080' }
  end

  describe parse_config_file('/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties').params['bio-custom.https.port'] do
    it { should eq '8443' }
  end

  describe parse_config_file('/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties').params['bio-ssl-localhost.https.port'] do
    it { should eq '7444' }
  end

end