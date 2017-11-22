#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/fill_ups"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
