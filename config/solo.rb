# just enough to use the checkout dir as a cache area for chef-solo
require 'pathname'
current_dir = Pathname.new(File.dirname(__FILE__))
current_dir = current_dir.parent.realpath # we're in config directory, so get parent
puts current_dir.inspect
cookbook_path            "#{current_dir}/../.." 

# log_level                :info
# log_location             STDOUT
# cache_type               'BasicFile'
# cache_options            :path =>  "#{ENV['HOME']}/.chef/checksums"

#file_cache_path "#{current_dir}/../cache"
#role_path "#{current_dir}/../roles"
# data_bag_path "#{current_dir}/../profiles"

