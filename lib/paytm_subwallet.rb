require "paytm_subwallet/engine"

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
