module PaytmSubwallet
  class Request < ActiveRecord::Base

  	def self.next_merchant_order_id
  		# generate alphanumeric(small letters + numbers) string
      # check if some request already has it
      # retry if true return string if not
  	end
  end
end
