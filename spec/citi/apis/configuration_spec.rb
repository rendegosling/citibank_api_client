RSpec.describe Citi::Apis::Configuration do
  it "can set client id and secret key" do
    test_id = "test_id"
    secret = "secret"

    Citi::Apis.configure do |config|
      config.client_id = test_id
      config.secret_key = secret
    end

    expect(Citi::Apis.configuration.client_id).to eq test_id
    expect(Citi::Apis.configuration.secret_key).to eq secret
  end
end
