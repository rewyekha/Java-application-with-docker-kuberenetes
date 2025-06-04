#!/bin/bash

# Run productcatalogue
cd productcatalogue
mvn spring-boot:run > ../logs/productcatalogue.log 2>&1 &
echo "Started productcatalogue"

# Run stockmanager
cd ../stockmanager
mvn spring-boot:run > ../logs/stockmanager.log 2>&1 &
echo "Started stockmanager"

# Run shopfront
cd ../shopfront
mvn spring-boot:run > ../logs/shopfront.log 2>&1 &
echo "Started shopfront"

cd ..
echo "All services started. Logs are in the 'logs' folder."
