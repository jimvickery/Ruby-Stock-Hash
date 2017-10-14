stock_dict = { 'GM' => 'General Motors',
'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }


purchases = [ [ 'GE', 100, '10-sep-2001', 48 ],
[ 'CAT', 100, '1-apr-1999', 24 ],
[ 'GE', 200, '1-jul-1998', 56 ] ]


puts "Stock report"

for group in purchases
    stock_dict.each do |key, value|
        if group[0] == key
            group.push(value)
        end
    end  
    
stock_symbol = group[0]
date = group[2].upcase
total_price = group[1] * group[3]
stock_name = group[4]
print date, "- ", stock_symbol, ": ", stock_name, "- $#{total_price}", "\n"
end



