module CoinMarketCap

	# Coin class
  class Coin
		attr_accessor :coin

    def initialize(coin)
      @coin = coin.downcase
    end

    def sample_message
      "Hello, World!"
    end

		def price
			coin_price = fetch_coin_price(@coin, 'USD')
			coin_price
		end

		def price_btc
			coin_price = fetch_coin_price(@coin, 'BTC')
			coin_price
		end

		private

		def fetch_coin_price(coin, price_type)
			doc = Nokogiri::HTML(open("http://www.coinmarketcap.com"))
			currencies = {}

			doc.css("#currencies tbody tr").each do |coin|
				currency = coin.css(".no-wrap.currency-name a").text.downcase
				if price_type == 'USD'
					price = coin.css("td[4] a").attribute('data-usd').value.to_f
				else
					price = coin.css("td[4] a").attribute('data-btc').value.to_f
				end
				currencies[currency] = price
			end

			currencies[coin]
		end

  end
end

