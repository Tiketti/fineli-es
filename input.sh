#!/bin/bash

counter=1

# 35566 is the highest known id
for counter in {1..35566}
do
  echo "Getting file number $counter"
  curl https://fineli.fi/fineli/api/v1/foods/$counter -s -o data/$counter.json
  result=$?
  
  if test "$result" = "0"; then
    echo "result: $result"
  else
   echo "the curl command failed with: $result"
   break
  fi
  
  ((counter++))

  sleep 1
done

echo All done