#!/usr/bin/env bash

echo "---------------------------------"
echo "Job Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/jobs/6aa002d4-2f0b-464d-8ca4-9ff7b2181e7e"

set -x

curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/logs" -o /dev/null
