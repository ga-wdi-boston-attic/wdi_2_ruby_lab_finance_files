require 'yahoo_finance'
require 'pry'

fname = "stock_quotes.txt"
somefile = File.open(fname, "a")
puts "Enter a ticker: "
quote = gets.chomp
somefile.puts quote
data = YahooFinance.quotes([quote], [:last_trade_price])
time_str = Time.now.to_s
somefile.puts "#{data}:#{time_str}"
puts "#{data}:#{time_str}"
somefile.close

# puts "ge is " << YahooFinance.quotes(['GE'], [:last_trade_price]).join(', ')


# File.open(fname, "a") do |stock_quotes_file|
# 	puts "Enter a ticker: "
# 	ticker_symbol = gets.chomp
# 	quote_data = YahooFinance.quotes([ticker_symbol], [:last_trade_price])
# 	time_str = Time.now.to_s
# 	somefile.puts "#ticker_symbol}:#{quote_data}:#{time_str}"
# end
