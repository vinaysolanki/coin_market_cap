$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require "open-uri"
require "nokogiri"

require "coin_market_cap/version"
require "coin_market_cap/coin"
