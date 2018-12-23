require 'citibank_api/configuration'

module CitibankAPI
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= CitibankAPI::Configuration.new
  end

  def self.reset
    @configuration = CitibankAPI::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
