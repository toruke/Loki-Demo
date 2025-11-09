#!/bin/bash

LOG_FILE="/var/log/demo/demo.log"
mkdir -p /var/log/demo

while true; do
  LOG_MESSAGE=$(jq -n \
    --arg level "$(shuf -e "info" "warning" "error" -n 1)" \
    --arg message "Log de démonstration : $(date)" \
    --arg app "demo" \
    --arg env "test" \
    '{
      level: $level,
      message: $message,
      app: $app,
      env: $env,
      timestamp: (now | todateiso8601)
    }')
  echo "$LOG_MESSAGE" >> "$LOG_FILE"
  sleep 1
done

