require 'yahoo_finance'
require 'pry'

# prompt the user for a stock ticker symbol (e.g. "AAPL")
# display the current stock price for this symbol
# save the result to a quotes.csv file (symbol, stock price, time)
# display all prior search results from that quotes.csv file

# example command for Yahoo Finance:
# trade = YahooFinance.quotes(["AAPL"], [:last_trade_price])

# binding.pry

######################################

puts "Please enter a stock ticker symbol:"
stock_symbol = gets.chomp()

price_array = YahooFinance.quotes([stock_symbol.to_s], [:last_trade_price]) # => [symbol="AAPL", last_trade_price="557.38"], array of 2 elements
price = price_array[0][:last_trade_price]

puts "The current stock price is:"
puts price


