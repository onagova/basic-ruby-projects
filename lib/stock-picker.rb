def stock_picker(stock_prices)
  if stock_prices.length < 2
    puts "ERROR: stock prices data #{stock_prices} doesn't have enough days to buy AND sell"
    return
  end

  best_days = [0, 1]

  for day_buy in 0...stock_prices.length
    for day_sell in (day_buy + 1)...stock_prices.length
      profit = stock_prices[day_sell] - stock_prices[day_buy]
      best_profit = stock_prices[best_days[1]] - stock_prices[best_days[0]]
      best_days = [day_buy, day_sell] if profit > best_profit
    end
  end

  best_days
end

loop do
  stock_prices = []
  puts "Enter stock prices data (enter 'c' to stop)"

  day = 0
  loop do
    print "Day #{day} price: "
    price = gets.chomp
    break if price.downcase == 'c'
    stock_prices << price.to_i
    day += 1
  end

  best_days = stock_picker(stock_prices)
  puts "=> #{best_days} for a profit of $#{stock_prices[best_days[1]]} - $#{stock_prices[best_days[0]]} == $#{stock_prices[best_days[1]] - stock_prices[best_days[0]]}"

  print "Continue? [Y/n] "
  continue_response = gets.chomp
  break unless continue_response.downcase == 'y'
end
