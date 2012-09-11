remote_file '/tmp/google_appengine_1.7.1.zip' do
  source 'http://googleappengine.googlecode.com/files/google_appengine_1.7.1.zip'
  checksum '1b41e08beb183affac7867bf78153b3389b9fd2a'
end

execute 'unzip /tmp/google_appengine_1.7.1.zip' do
  cwd '/usr/local'
  not_if {::File.exists? '/usr/local/google_appengine'}
end
