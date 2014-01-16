require 'yahoo_finance'
require 'pry'

puts "Enter the ticker symbol for your desired stock."
stock_info = []
stock_info.push(gets.chomp)
data = YahooFinance.quotes(stock_info, [:last_trade_price])
price = data[0].last_trade_price
ticker = data[0].symbol

puts  "As of now, " + "#{ticker}" +"'s" + " value is " + "#{price}" + "."

File.open('quotes.csv', 'a+') { |file| file.write "#{ticker} value is: #{price} at #{Time.now}" }