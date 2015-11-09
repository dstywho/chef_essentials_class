file 'hello.txt' do
  content 'Hello, world!'
  mode "0777"
  owner "root"
  group "chef"
end
