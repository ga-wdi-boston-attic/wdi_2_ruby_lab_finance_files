require 'yahoo_finance'
require 'pry'

# prompt the user for a stock ticker symbol (e.g. "AAPL") - check
# display the current stock price for this symbol - check
# save the result to a quotes.csv file (symbol, stock price, time)
# display all prior search results from that quotes.csv file

# example command for Yahoo Finance:
# trade = YahooFinance.quotes(["AAPL"], [:last_trade_price])

# binding.pry

######################################

puts "Please enter a stock ticker symbol:"
stock_symbol = gets.chomp().upcase

price_array = YahooFinance.quotes([stock_symbol], [:last_trade_price]) # => [symbol="AAPL", last_trade_price="557.38"], array of 2 elements
price = price_array[0][:last_trade_price].to_f

puts "The current stock price is:"
puts price

quote = [stock_symbol, price, Time.now].inspect

prices_file = File.open("quotes.csv", "a+").puts(quote)

puts "The quote has been added to quotes.csv"

#######################################
