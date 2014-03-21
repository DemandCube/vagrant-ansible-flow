require 'yaml'



###This shows how to make a valid configuration file in YAML format for vagrant-flow to consume with the ansible-inventory command

x = {
 "sparkngn1"=>"demandcube/centos-65_x86_64-VB-4.3.8",
 "sparkngn2"=>"demandcube/centos-65_x86_64-VB-4.3.8",
 "jenkins"=>"demandcube/centos-65_x86_64-VB-4.3.8",
}

begin
  File.open('vagrantcloudconfig.yml', 'w') {|f| f.write x.to_yaml }
rescue
  warn "Could not write file vagrantcloudconfig.yml"
end

y = YAML.load(x.to_yaml)

y.each {|key,value|
  puts key
  puts value
  puts "\n"
}
