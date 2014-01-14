# Coin Market Cap

Ruby gem to fetch Crypto currency prices from Coin Market Cap

## Installation

Add this line to your application's Gemfile:

    gem 'coin_market_cap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coin_market_cap

## Usage

### Price:

	bitcoin = CoinMarketCap::Coin.new('bitcoin')

	bitcoin.price
	#=> 847.63

	bitcoin.price_btc
	#=> 1.00

## Contributing

1. Fork it ( http://github.com/<my-github-username>/coin_market_cap/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
