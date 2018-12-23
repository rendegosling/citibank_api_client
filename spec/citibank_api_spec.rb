RSpec.describe CitibankApi do
  it "has a version number" do
    expect(CitibankApi::VERSION).not_to be nil
  end

  it "can set client id and secret key" do
    test_id = "test_id"
    secret = "secret"

    CitibankApi.configure do |config|
      config.client_id = test_id
      config.secret_key = secret
    end

    expect(CitibankApi.configuration.client_id).to eq test_id
    expect(CitibankApi.configuration.secret_key).to eq secret
  end
end
