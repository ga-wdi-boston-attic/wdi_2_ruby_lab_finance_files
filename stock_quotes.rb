require 'yahoo_finance'
require 'pry'

data_symbols = []
puts "Please enter valid symbols of the stocks, indexes, exchange rates, you are looking up."
data_symbols << gets.chomp # add answer to end of array

data_array = YahooFinance.quotes(data_symbols, [:last_trade_price])

last_trade_price = data_array[0][:last_trade_price]


File.open('quotes.csv', 'a') { |f| f.write("The last trading price for #{data_array[0]} is #{last_trade_price}.") }

