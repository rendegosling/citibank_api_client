RSpec.describe Citi::Client do
  it "has a version number" do
    expect(Citi::Client::VERSION).not_to be nil
  end

  it "is configurable" do
    test_id = "test_id"
    secret = "secret"

    Citi::Client.configure do |config|
      config.client_id = test_id
      config.secret_key = secret
    end

    expect(Citi::Client.configuration.client_id).to eq test_id
    expect(Citi::Client.configuration.secret_key).to eq secret
  end
end
