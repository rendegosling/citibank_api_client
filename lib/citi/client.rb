require "citi/client/version"
require "citi/client/configuration"

module Citi
  module Client
    class Error < StandardError; end

    class << self
      attr_accessor :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.reset
      @configuration = Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end
