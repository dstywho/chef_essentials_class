# package 'nano'
# package 'tree'
#
# ['nano', 'tree'].each do |pkg|
#   package pkg
# end
package ['nano', 'tree', 'git']

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
end
