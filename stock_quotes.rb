require 'yahoo_finance'
require 'pry'

data_symbols = []
puts "Please enter valid symbols of the stocks, indexes, exchange rates, you are looking up."
data_symbols << gets.chomp.to_s # add answer to end of array

data = YahooFinance.quotes(data_symbols, [:last_trade_price]) #data is an array

last_trade_price = data[0][:last_trade_price]

File.open('quotes.csv', 'a') { |f| f.write("The last trading price for #{data_symbols} is #{last_trade_price}.") }
