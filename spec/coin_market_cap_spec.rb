require 'spec_helper'

describe CoinMarketCap do
	it "should return price of bitcoin" do
		coin = CoinMarketCap::Coin.new('bitcoin')
		expect(coin.price).to be_kind_of(Float)
	end

	it "should return price of litecoin" do
		coin = CoinMarketCap::Coin.new('litecoin')
		expect(coin.price).to be_kind_of(Float)
	end
end
