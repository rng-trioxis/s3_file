require 'rest-client'

chef_gem "rest-client" do
  action :install
  version "1.7.3"
end

RestClient::Request.execute(:url => 'https://s3-ap-southeast-2.amazonaws.com', :method => :get, :verify_ssl => false)