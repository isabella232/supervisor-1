require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'supervisor' do

  describe package('supervisor') do
    it { should be_installed }
  end
  describe service('supervisor') do
    it { should be_running }
  end

end
