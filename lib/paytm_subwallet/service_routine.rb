module PaytmSubwallet
  module ServiceRoutine
    def self.follow(body, end_point)
      # raise PaytmSubwallet::NotConfiguredError.new unless PaytmSubwallet.configuration.valid?
      # Save request from body
      puts "Created Headers"
      # headers = PaytmSubwallet::Api::HeadersConstructor.new(body).construct
      puts "Saved request in database"

      puts "Made httparty request"
      # httparty_response = HTTParty.post(end_point, 
      #   :body => body.to_json,
      #   :headers => headers)
      puts "Saved response in the database"
    end
  end
end
