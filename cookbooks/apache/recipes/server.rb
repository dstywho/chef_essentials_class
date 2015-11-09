package 'httpd'

file '/var/www/html/index.html' do
  content '<h1>Hi</h1>'
end

service 'httpd' do
  action :start
end
