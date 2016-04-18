#!/bin/bash

if [ -z "$NODE_ENV" ]; then
  export NODE_ENV=development
fi


file="/app/package.json"
if [ -f "$file" ]
then
  echo "$file found."
else
  echo "$file not found."
  echo "Copying default files..."
  cp -r /var/www/** /app
fi

node --harmony /app/server.js
