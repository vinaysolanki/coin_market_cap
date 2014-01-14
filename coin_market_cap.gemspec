# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coin_market_cap/version'

Gem::Specification.new do |spec|
  spec.name          = "coin_market_cap"
  spec.version       = CoinMarketCap::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Vinay Solanki"]
  spec.email         = ["vinaysolanki2005@gmail.com"]
  spec.summary       = %q{Coin Market Cap gem}
  spec.description   = %q{Ruby gem to fetch Crypto currency prices from Coin Market Cap}
  spec.homepage      = "http://github.com/vinaysolanki/coin_market_cap"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6", ">=1.6.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.1", ">=10.1.1"
  spec.add_development_dependency "rspec", "~> 2.14", ">=2.14.1"
end
