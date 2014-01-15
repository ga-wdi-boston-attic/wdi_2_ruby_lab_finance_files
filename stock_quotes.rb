require 'yahoo_finance'
require 'pry'

# Your Code Here
puts "Enter the ticker symbol(s) for your desired stocks. If entering more than one, separate them with a comma (',')."
gets.chomp

input = gets.chomp
a = []
stock_ticker = input.split(',')
data = YahooFinance.quotes([stock_ticker], [:bid])
stock_ticker = data[0]

puts data[0].symbol + " value is: " + data[0].bid

binding.pry