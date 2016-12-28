Rails.application.routes.draw do

  mount PaytmSubwallet::Engine => "/paytm_subwallet"
end
