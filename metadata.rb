maintainer       "Chris McClimans"
maintainer_email "chris@hippiehacker.org"
license          ""
description      "Sputnik profile tool cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{apt metapackage}.each do |cb|
  depends cb
end

