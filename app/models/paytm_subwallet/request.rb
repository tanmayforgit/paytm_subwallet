module PaytmSubwallet
  class Request < ActiveRecord::Base
  	belongs_to :assignable, polymorphic: true
   	has_many :paytm_subwallet_responses, class_name: PaytmSubwallet::Response

    def self.next_merchant_order_id
      # generate alphanumeric(small letters + numbers) string
      # check if some request already has it
      # retry if true return string if not
    end
  end
end
