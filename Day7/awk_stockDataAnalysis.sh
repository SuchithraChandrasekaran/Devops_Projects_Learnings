#!/bin/bash

# Calculate total and average closing price for each stock
echo "Total and Average Closing Price for Each Stock:"

#-F,: Specifies the delimiter as a comma (,)
#total[$1] += $6: Aggregates the closing price for each stock.
#count[$1]++: Counts the number of entries per stock.
#$6 > max: Compares the closing price ($6) with the current maximum.
#NR > 1: Skips the header row.
awk -F, '
NR > 1 {
    total[$1] += $6;
    count[$1]++;
}
END {
    for (stock in total) {
        avg = total[stock] / count[stock];
        print stock ": Total Closing Price=" total[stock] ", Average Closing Price=" avg;
    }
}' nse_stocks.csv

echo ""

# Identify the stock with the highest closing price
echo "Stock with Highest Closing Price:"
awk -F, '
NR > 1 && $6 > max {
    max = $6;
    stock = $1;
}
END {
    print "Highest Closing Price: Stock=" stock ", Price=" max;
}' nse_stocks.csv
