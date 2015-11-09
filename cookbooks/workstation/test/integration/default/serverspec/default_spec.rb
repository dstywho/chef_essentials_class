require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'instaslls nano' do
    `rpm -qa`.include?('nano')
  end
  it 'instaslls tree' do
    `rpm -qa`.include?('tree')
  end
end
