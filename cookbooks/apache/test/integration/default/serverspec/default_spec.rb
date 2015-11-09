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
end
