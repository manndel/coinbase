#!/bin/bash

input="currency.txt"

while IFS=" " read -r CURRENCY
do
    echo "${CURRENCY}"
    curl -s -X GET "https://api.coinbase.com/v2/prices/spot?currency=${CURRENCY}" -H "accept: application/json"\
    | jq ".data.currency, .data.amount"
done < "$input"