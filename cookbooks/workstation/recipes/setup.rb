# package 'nano'
# package 'tree'
#
# ['nano', 'tree'].each do |pkg|
#   package pkg
# end
package ['nano', 'tree', 'git']

file '/etc/motd' do
  content <<-EOF
    Property of England
EOF
end
