require 'yahoo_finance'
require 'pry'

data_symbols = []
puts "Please enter valid symbols of the stocks, indexes, exchange rates, you are looking up."
data_symbols << gets.chomp # add answer to end of array

data = YahooFinance.quotes(data_symbols, [:last_trade_price])

puts data

# data = YahooFinance.quotes(data_symbols, data_fields, { raw: false } )
# data[0].ask

# filename = 'quotes.csv'
# File.open(filename, 'a')
#   file.puts
# file.close


