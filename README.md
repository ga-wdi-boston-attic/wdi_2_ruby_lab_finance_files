# Yahoo Finance + Files Lab

The [Yahoo Finance Gem](https://github.com/herval/yahoo-finance) allows to you retrieve current stock prices of tickers with live data *from the internet*!

Files (like we used earlier today in class), allow us to store data between runs of a program. Let's put these two things together for fun and profit!

## Assignment

* Create a program that will prompt the user for a stock ticker symbol.
* Display the current ticker price for this symbol.
* Display all prior search results (symbol, price, Time)
* Append the ticker symbol, current price and current Time to the `quotes.csv` file so that on the next run of the program, this information will be saved.

## Bonus

Figure out how to use commandline arguments to pass in the stock ticker symbol, so you don't need to prompt the user anymore from Ruby.

## Tips

<!-- * Run `bundle install` when you first clone this repo and change into the directory. This will do something special with the Gemfile that we'll talk about more later. -->
* Use the Force, I mean `pry` if you get stuck
* Figure out how to use the Finance gem first, then deal with file i/o
* You can get the Time with `Time.now`
* An example command for Yahoo Finance might be `trade = YahooFinance.quotes(["AAPL"], [:last_trade_price])`
