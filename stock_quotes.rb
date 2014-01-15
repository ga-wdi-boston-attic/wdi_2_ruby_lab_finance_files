require 'yahoo_finance'
require 'pry'

# Your Code Here
quote_symbols = ARGV
data = [:last_trade_price]

File.open("stock_quote_history.csv", 'a') do |f|
  YahooFinance.quotes(quote_symbols, data).each do |qt|
    puts "#{Time.now}: #{qt.symbol} @ #{qt.last_trade_price}"
    %x{say "#{qt.symbol} is trading at #{qt.last_trade_price}"}
    f.puts("#{Time.now}: #{qt.symbol} @ #{qt.last_trade_price}")
    end
end

# quote = YahooFinance.quotes(["AAPL"], [:last_trade_price])
# puts quote[0].last_trade_price
# puts quote[0].symbol
