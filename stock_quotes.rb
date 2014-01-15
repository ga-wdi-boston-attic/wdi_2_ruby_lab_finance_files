require 'yahoo_finance'
require 'pry'

# accepts a command-line argument, or prompts user for input
stock_symbol = ARGV.first
if stock_symbol.nil?
		puts "Please enter a stock ticker symbol:"
		stock_symbol = gets.chomp.upcase
end

# gets the price from YahooFinance gem
price_array = YahooFinance.quotes([stock_symbol.upcase], [:last_trade_price]) # => [symbol="AAPL", last_trade_price="557.38"], array of 2 elements
price = price_array[0][:last_trade_price].to_f

# outputs the price
puts "The current stock price is:"
puts price

# stores the search data
quote = [stock_symbol.upcase, price, Time.now].inspect

# adds the search data to quotes.csv
prices_file = File.open("quotes.csv", "a+").puts(quote)

# verifies that the search data has been added to the file
puts "The quote has been added to quotes.csv"

