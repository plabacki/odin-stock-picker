
array = [17,3,6,9,15,8,6,1,10]
def stock_picker(stock_value)

    most_profitable_days = [];
    buy_day = 0
    sell_day = 0
    profit = 0;

    for i in 0..stock_value.length-1
        for j in 0..i
            if stock_value[i] - stock_value[j] > profit
                profit = stock_value[i] - stock_value[j] 
                buy_day = j
                sell_day = i 
            end
        end          
    end
    most_profitable_days.push(buy_day)
    most_profitable_days.push(sell_day)
    
    puts most_profitable_days
end    

stock_picker(array)

