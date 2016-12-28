module PaytmSubwallet
  class TransferAmount

    def initialize()

    end

    def self.get_response(query)
      raise PaytmSubwallet::NotConfiguredError unless PaytmSubwallet::configuration.valid?

      api_response = Api::TransferAmount.new.all(query)
    end
  end
end
