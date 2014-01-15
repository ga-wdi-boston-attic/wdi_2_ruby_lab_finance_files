require 'yahoo_finance'
require 'pry'

# Your Code Here
puts "What stock ticker symbol?"
ticker = gets.chomp.upcase

data = YahooFinance.quotes([ticker], [:last_trade_price])
puts data[0].last_trade_price
