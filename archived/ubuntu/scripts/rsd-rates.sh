#!/bin/bash
# Fetch EUR and USD rates in RSD

# Amount
AMOUNT=${1:-1}

# Fetch the JSON from the API
response=$(curl -s "https://open.er-api.com/v6/latest/RSD")

# Extract EUR and USD rates from the JSON
eur_rate=$(echo "$response" | grep -Eo '"EUR": ?[0-9]+\.[0-9]+' | sed 's/[^0-9.]//g')
usd_rate=$(echo "$response" | grep -Eo '"USD": ?[0-9]+\.[0-9]+' | sed 's/[^0-9.]//g')

# Check if we got the rates
if [[ -z "$eur_rate" || -z "$usd_rate" ]]; then
    echo "Error: Could not fetch currency rates."
    exit 1
fi

# Calculate amount in RSD
eur_in_rsd=$(awk -v r="$eur_rate" -v a="$AMOUNT" 'BEGIN {printf "%.2f", a/r}')
usd_in_rsd=$(awk -v r="$usd_rate" -v a="$AMOUNT" 'BEGIN {printf "%.2f", a/r}')

# Extract the last update time
update_time=$(echo "$response" | grep -Eo '"time_last_update_utc":"[^"]+"' | sed 's/"time_last_update_utc":"\(.*\)"/\1/')

# Print results
echo "📅 Updated: $update_time"
echo "💶 $AMOUNT EUR = $eur_in_rsd RSD"
echo "💵 $AMOUNT USD = $usd_in_rsd RSD"

