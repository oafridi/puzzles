def max_profit(arr)
  smallest = arr[0]
  max_profit = 0

  arr.each do |price|
    
    if price < smallest
      smallest = price 
      next
    end
    
    current_profit = price - smallest    
    
    if current_profit > max_profit
      max_profit = current_profit 
    end
  end

  max_profit
end

stock_prices_yesterday = [100,20,30,40,200]
p max_profit(stock_prices_yesterday) == 180