require 'citibank_ruby/configuration'

module CitibankRuby
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= CitibankRuby::Configuration.new
  end

  def self.reset
    @configuration = CitibankRuby::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
