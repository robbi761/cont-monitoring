#!/usr/bin/env bash

echo "---------------------------------"
echo "Project Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/projects/project_page"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
