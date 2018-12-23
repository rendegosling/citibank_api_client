require 'citibank_api/configuration'

module CitibankApi
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= CitibankApi::Configuration.new
  end

  def self.reset
    @configuration = CitibankApi::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
