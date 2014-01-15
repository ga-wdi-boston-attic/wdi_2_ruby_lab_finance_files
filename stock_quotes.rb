require 'yahoo_finance'
require 'pry'

# Your Code Here
puts 'Please enter a stock symbol: '
array = []
array.push(gets.chomp)

data = YahooFinance.quotes(array, [:last_trade_price])

symbol = data[0].symbol
price = data[0].last_trade_price

puts "#{symbol} value is: #{price}"

File.open('quotes.csv', 'a+') { |file| file.write "#{symbol} value is: #{price} at #{Time.now}" }


