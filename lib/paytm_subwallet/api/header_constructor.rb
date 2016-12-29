module PaytmSubwallet
  module Api
    class HeaderConstructor
      def initialize(body)
        @body = body
      end

      def construct
        {
          'content-type' => 'application/json',
          'checksumhash' => generate_checksum,
          'mid' => merchant_id,
        }
      end

      def aes_key
        PaytmSubwallet::configuration.aes_key
      end

      def merchant_id
        PaytmSubwallet::configuration.merchant_id
      end

      def merchant_guid
        PaytmSubwallet::configuration.merchant_guid
      end

      def sales_wallet_guid
        PaytmSubwallet::configuration.sales_wallet_guid
      end

      def generate_checksum
        # how to call
        #checkSumServiceHelper.generateChecksum("AesKey",”body”);
      end

      def md5_calculation_string
        # httparty_url = "http://trust-uat.paytm.in/wallet-web"
      end
    end
  end
end
