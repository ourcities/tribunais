require 'webmock/cucumber'
WebMock.disable_net_connect!(:allow_localhost => true)

Before do
  stub_request(:post, "https://api.mailchimp.com/2.0/lists/subscribe").
  to_return(:status => 200, :body => "", :headers => {})
  stub_request(:post, "https://api.mailchimp.com/2.0/lists/static-segment-members-add").
  to_return(:status => 200, :body => "", :headers => {})
end
