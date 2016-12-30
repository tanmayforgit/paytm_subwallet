module PaytmSubwallet
  class Response < ActiveRecord::Base
  	belongs_to :assignable, polymorphic: true
    belongs_to :paytm_subwallet_request, class_name: PaytmSubwallet::Request
  end
end
