module PaytmSubwallet
  module Assignable
    def transfer_amount(amount)
      binding.pry
      PaytmSubwallet::TransferAmountService.new(self, amount).call
    end
  end
end
