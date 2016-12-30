require 'open-uri'

module PaytmSubwallet
  class TransferAmountService
    def initialize(paytm_assignable, amount)
      @paytm_assignable = paytm_assignable
      @amount = amount
    end

    def call
      PaytmSubwallet::ServiceRoutine.follow(request_body, "end_point")
    end

    private

    def request_body
      {
        "request"=> {
          "requestType" => 'null',
          "merchantGuid"=> "abcd",#PaytmSubwallet::configuration.merchant_guid
          "merchantOrderId"=> "abcd", #Request.next_merchant_order_id,
          "salesWalletName"=> 'null',
          "salesWalletGuid"=> "03aaaeb1-d8cf-11e2-a058-e89a8ff30b7d",
          "payeeEmailId"=> 'null',
          "payeePhoneNumber"=> @paytm_assignable.mobile_number, #@paytm_assignable.mobile_number,
          "payeeSsoId"=> @paytm_assignable.mobile_number,#@paytm_assignable.mobile_number,
          "appliedToNewUsers"=> "Y",
          "amount"=> "10",
          "currencyCode"=> "INR"
        },
        "metadata"=> "Testing Data",
        "ipAddress"=> "#{open('http://whatismyip.akamai.com').read}",# search rails method for getting public ip
        "platformName"=> "PayTM",
        "operationType"=> "SALES_TO_USER_CREDIT"
      }
    end
  end
end
