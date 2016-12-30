require "paytm_subwallet/engine"
require_relative "paytm_subwallet/assignable"
require_relative "paytm_subwallet/configuration"

module PaytmSubwallet
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  class NotConfiguredError < StandardError

  end
end
