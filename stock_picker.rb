def stock_picker(prices)
    #condition: the best choice is the LOWEST buy value BEFORE the HIGHEST sell value
    # you have to buy before you sell
    # iterate through the array twice to calculate the profit yields between each day 
    largest_profit = 0
    # starting on day zero, lock in a potential buy date
    for buy in 0..prices.length-1 do
        # starting on day one, lock in a potential sell date
        for sell in (buy+1)..prices.length-1 do
            # calculate the profit between the current sell date and buy date
            result = prices[sell] - prices[buy]
            # print "#{prices[sell]} - #{prices[buy]} = #{result}\n"
            # if this profit is higher than the previous profit
            if result > largest_profit
                # save this as the new largest profit
                largest_profit = result
                # record the dates that yielded this largest profit
                best_buy_date = buy
                best_sell_date = sell
            end
        end
    end
    best_choice = [best_buy_date, best_sell_date]
end

#arr = [5, 10, 20, 1]
arr = [17,3,6,9,15,8,6,1,10]
print stock_picker(arr)