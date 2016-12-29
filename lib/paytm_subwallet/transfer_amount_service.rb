module PaytmSubwallet
  class TransferAmountService
    def initialize(paytm_assignable, amount)
      @paytm_assignable = paytm_assignable
      @amount = amount
    end

    def get_response(query)
      raise PaytmSubwallet::NotConfiguredError unless PaytmSubwallet::configuration.valid?

      api_response = Api::TransferAmount.new.get_response(query)


    end

    def call(paytm_assignable, amount)

    end

    private

    def request_body
      {
        "request"=> {
        "requestType" => 'null',
        "merchantGuid"=> PaytmSubwallet::configuration.merchant_guid
        "merchantOrderId"=> ,
        "salesWalletName"=> 'null',
        "salesWalletGuid"=> "03aaaeb1-d8cf-11e2-a058-e89a8ff30b7d",
        "payeeEmailId"=> 'null',
        "payeePhoneNumber"=> "",
        "payeeSsoId"=> "XXX",
        "appliedToNewUsers"=> "Y",
        "amount"=> "10",
        "currencyCode"=> "INR"
        },
        "metadata"=> "Testing Data",
        "ipAddress"=> “127.0.0.1”,
        "platformName"=> "PayTM",
        "operationType"=> "SALES_TO_USER_CREDIT"
      }
    end
  end
end
