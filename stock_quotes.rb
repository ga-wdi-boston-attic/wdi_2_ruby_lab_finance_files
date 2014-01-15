require 'yahoo_finance'
require 'pry'

ticker = ARGV[0].upcase

data = YahooFinance.quotes([ticker], [:last_trade_price])
puts data[0].last_trade_price


file = File.open('quotes.csv', 'a')
file.puts "#{ticker}, #{data[0].last_trade_price}, #{Time.new}"
file.close
