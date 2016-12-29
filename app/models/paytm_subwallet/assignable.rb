module PaytmSubwallet
  module Assignable
    has_many :requests, as: assignable
    has_many :responses, as: assignable

    def transfer_ammount(amount)
      PaytmSubwallet::TransferAmountService.call(self, amount)
    end
  end
end