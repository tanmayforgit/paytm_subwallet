module PaytmSubwallet
  class Configuration
    attr_accessor :aes_key, :merchant_guid, :sales_wallet_guid
    attr_reader :merchant_id
    def initialize
      @aes_key = nil
      @merchant_id = nil
      @merchant_guid = nil
      @sales_wallet_guid = nil
    end

    def merchant_id=(merchant_id)
      @merchant_id = merchant_id.to_s
    end

    def valid?
      !@merchant_id.nil? && !@aes_key.nil? && !merchant_guid.nil? && !sales_wallet_guid.nil?
    end
  end
end
