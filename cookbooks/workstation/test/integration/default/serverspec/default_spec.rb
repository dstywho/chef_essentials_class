require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  ['nano', 'tree', 'git'].each do
    describe package('tree') do
      it { should be_installed }
    end
  end
    
  describe file('/etc/motd') do
    its(:content) { should match /.*Property.*/ }
  end
end

