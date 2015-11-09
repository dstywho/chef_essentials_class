require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it{ should  be_installed }
  end

  describe service('httpd') do
    it{ should be_enabled }
    it{ should be_running }
  end

  describe file('/var/www/html/index.html') do
    its(:content) { should match /.*Hi.*/ }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe command('curl localhost') do
    its(:stdout) { should match /.*Hi.*/i }
  end
end
