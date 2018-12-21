RSpec.describe CitibankRuby do
  it "has a version number" do
    expect(CitibankRuby::VERSION).not_to be nil
  end

  it "can set client id and secret key" do
    test_id = "test_id"
    secret = "secret"

    CitibankRuby.configure do |config|
      config.client_id = test_id
      config.secret_key = secret
    end

    expect(CitibankRuby.configuration.client_id).to eq test_id
    expect(CitibankRuby.configuration.secret_key).to eq secret
  end
end
