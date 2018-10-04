#!/usr/bin/env bash

echo "---------------------------------"
echo "People Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/cont-monitoring/people"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
