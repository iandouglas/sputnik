remote_file '/tmp/android-sdk_r20.0.3-linux.tgz' do
  source 'http://dl.google.com/android/android-sdk_r20.0.3-linux.tgz'
  checksum '919ea464007c2c4d04d5b366b4f64e916d99995e'
end

execute 'tar xvfz /tmp/android-sdk_r20.0.3-linux.tgz' do
  cwd '/usr/local'
  not_if {::File.exists? '/usr/local/android-sdk-linux'}
end

execute 'sudo apt-get install default-jdk' do
  not_if {::File.exists? '/usr/bin/java'}
end

execute 'tools/android update sdk --no-ui' do
  cwd '/usr/local/android-sdk-linux'
end


