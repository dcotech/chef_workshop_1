# # encoding: utf-8

# Inspec test for recipe lcd_mongodb2::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe package('mongodb-org') do
  it { should be_installed }
end

describe service('mongod') do
  it { should be_enabled }
  it { should be_running }
end
