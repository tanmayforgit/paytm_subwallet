require_relative 'transfer_amount_service'
module PaytmSubwallet
  module Assignable
    def transfer_amount(amount)
      PaytmSubwallet::TransferAmountService.new(self, amount).call
    end
  end
end
