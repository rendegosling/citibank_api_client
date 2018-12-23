RSpec.describe CitibankAPI do
  it "has a version number" do
    expect(CitibankAPI::VERSION).not_to be nil
  end

  it "can set client id and secret key" do
    test_id = "test_id"
    secret = "secret"

    CitibankAPI.configure do |config|
      config.client_id = test_id
      config.secret_key = secret
    end

    expect(CitibankAPI.configuration.client_id).to eq test_id
    expect(CitibankAPI.configuration.secret_key).to eq secret
  end
end
