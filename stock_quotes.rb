require 'yahoo_finance'
require 'pry'

# Apple = AAPL
# YHOO = Yahoo

# Create a program that will prompt the user for a stock ticker symbol.
def get_input(prompt)
	puts prompt
	gets.chomp
end

stock_ticker_symbol = get_input("stock ticker symbol of the stock you want to check:")


data = YahooFinance.quotes([stock_ticker_symbol], [:last_trade_price] )
puts data

data_hash = {}
data_hash = { Time.now.to_s => data }

# Display all prior search results (symbol, price, Time)
puts "here is the search history :"
info =  File.open("prev_trades_search.csv")
search_array = []
info.each do |f|
	search_array << f.strip
end

puts search_array

# Append the ticker symbol, current price and current Time to the quotes.csv file
# so that on the next run of the program, this information will be saved.

f_name = "prev_trades_search.csv"
file = File.open(f_name, "a")
file.puts data_hash
file.close
