require 'spec_helper'

describe CoinMarketCap do

	it "should display sample message" do
		sample_message = CoinMarketCap::Coin.new('bitcoin').sample_message
		expect(sample_message).to eq("Hello, World!")
	end

	it "should return price of the coin" do
		coin = CoinMarketCap::Coin.new('bitcoin')
		expect(coin.price).to be_kind_of(Float)
		coin = CoinMarketCap::Coin.new('litecoin')
		expect(coin.price).to be_kind_of(Float)
	end

end
