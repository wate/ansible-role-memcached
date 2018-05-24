require 'spec_helper'

describe package('memcached') do
  it { should be_installed }
end

describe file('/path/to/file') do
  it { should exist }
  it { should be_file }
  its(:content) { should match(/ServerName www.example.jp/) }
  it { should contain 'ServerName www.example.jp' }
  it { should contain('rspec').from(/^group :test do/).to(/^end/) }
  it { should contain('rspec').after(/^group :test do/) }
  it { should contain('rspec').before(/^end/) }
  it { should be_directory }
  it { should be_readable }
  it { should be_writable }
  it { should be_symlink }
  it { should be_linked_to '/etc/redhat-release' }
  it { should be_executable }
  it { should be_mode 440 }
end

describe service('memcached') do
  it { should be_enabled }
  it { should be_running }
end

describe port(11211) do
  it { should be_listening }
end
