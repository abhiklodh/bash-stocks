#!/bin/bash
# stocks.sh
# This script displays the historical EOD stock price for a stock symbol.
# It uses the Market Stack API.
# Usage: bash stocks.sh <stock symbol>
# Example: bash stocks.sh aapl
symbol=$1;
curl -vo response.json curl -vo response.json http://api.marketstack.com/v1/tickers/"$symbol"/eod?access_key=00216d2d64b834a9938bd3bf0829d2a7;
cat response.json | jq '.'data'.'eod'[] | join(",")' > output.csv;
sed -i 's/"//g' output.csv;
head output.csv;