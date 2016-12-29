module PaytmSubWallet
  module Api
    class TransferAmount
      def initialize(body)
        @body = body
      end

      def call
        headers = HeadersConstructor.new(body).construct
        Response.new(HTTParty.post(httparty_url, headers: headers, querry: body))
      end

      private

      def httparty_url
        "http://trust-uat.paytm.in/wallet-web/salesToUserCredit"
      end

      class Response
        def initialize(httparty_response)
          # @request_guid = httparty_response[]
          # .
          # .
          # .
          # .

        end

        def success?
          
        end

        # def some_other_case?
          
        # end
      end
    end
  end
end
