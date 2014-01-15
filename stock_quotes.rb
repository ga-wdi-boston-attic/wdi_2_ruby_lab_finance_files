require 'yahoo_finance'
require 'pry'
File.open('quotes.csv', 'a') do |f|
	ticker = ARGV

	data = YahooFinance.quotes(ticker, [:last_trade_price])

	data.each do |symbol|
		puts "#{symbol.symbol.upcase} is trading at #{symbol.last_trade_price}"
		f.puts "#{symbol.symbol.upcase}, #{symbol.last_trade_price}, #{Time.new}"
	end
end
