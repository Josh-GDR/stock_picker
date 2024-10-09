def stockPicker(stocks)
    minValue = stocks.sort.last;
    maxValue = 0;

    p stocks.sort.reverse
    
    stocks.sort.reverse.each do |value|

        puts value
        for element in stocks.take(stocks.index(value))
            print element.to_s << " "
        
            if (minValue > element && (maxValue - minValue) < (value - element)) 
                print "<< this is it | "
                minValue = element
                maxValue = value
            end

        end
        puts ""

    end

    [stocks.index(minValue), stocks.index(maxValue)]
end

p stockPicker([17,3,6,9,15,8,6,1,10])