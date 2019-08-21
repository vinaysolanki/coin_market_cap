module CoinMarketCap

  COIN_MARKET_CAP_URL = "https://coinmarketcap.com/"

	# Coin class
  class Coin
		attr_accessor :coin

    def initialize(coin)
      @coin = coin.downcase
      @currencies = fetch_coin_prices
    end

		def price
			@currencies[@coin]
		end

		private

		def fetch_coin_prices
			doc = Nokogiri::HTML(open(COIN_MARKET_CAP_URL))
			currencies = {}

			doc.css("#currencies tbody tr").each do |coin|
        currency = coin.css("td a.currency-name-container").text.downcase.gsub(" ", "_")
        price = coin.css("td .price").attribute('data-usd').value.to_f
				currencies[currency] = price
			end
			currencies
		end

  end
end

