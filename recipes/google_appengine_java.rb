remote_file '/tmp/appengine-java-sdk-1.7.1.zip' do
  source 'http://googleappengine.googlecode.com/files/appengine-java-sdk-1.7.1.zip'
  checksum 'c4edbf1424dba30648ff815442c5e2bf6f1637b5'
end

execute 'unzip /tmp/appengine-java-sdk-1.7.1.zip' do
  cwd '/usr/local'
  not_if {::File.exists? '/usr/local/appengine-java-sdk'}
end
