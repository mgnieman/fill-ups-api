#!/bin/bash

curl --include --request PATCH "http://localhost:4741/fill_ups/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "fill_up": {
      "date": "'"${DATE}"'",
      "mileage": "'"${MILEAGE}"'",
      "gallons": "'"${GALLONS}"'",
      "mpg": "'"${MPG}"'",
      "price": "'"${PRICE}"'"
    }
  }'

  echo
