module PaytmSubWallet
  module Api
    class TransferAmount
      def initialize
      end

      def all(query)
        headers = HeadersConstructor.new(query).construct
        HTTParty.post(httparty_url, headers: headers, query: query)
      end

      private

      def httparty_url
        "http://trust-uat.paytm.in/wallet-web/salesToUserCredit"
      end
    end
  end
end
