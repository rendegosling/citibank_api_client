module CitibankApi
  class Configuration
    attr_accessor :client_id, :secret_key
    def initialize
      @client_id = nil
      @secret_key = nil
    end
  end
end
