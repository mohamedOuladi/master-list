#!/bin/bash

set -e

echo "Removing ./postgres/data and ./postgres/fga-data..."
rm -rf ./postgres/data ./postgres/fga-data

echo "Recreating directories..."
mkdir -p ./postgres/data ./postgres/fga-data

echo "Done."