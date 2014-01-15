require 'yahoo_finance'
require 'pry'
File.open('quotes.csv', 'a') do |f|
	ticker = ARGV
	time = Time.new

	data = YahooFinance.quotes(ticker, [:last_trade_price])

	data.each do |symbol|
		puts "#{symbol.symbol.upcase} is trading at #{symbol.last_trade_price}"
		f.puts "#{symbol.symbol.upcase}, #{symbol.last_trade_price}, #{time.month}/#{time.day}/#{time.year} at #{time.hour > 12 ? (time.hour - 12) : time.hour}:#{time.min}#{time.hour > 12 ? 'pm' : 'am'}"
	end
end
