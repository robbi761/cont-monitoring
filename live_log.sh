#!/usr/bin/env bash

# The idea behind continiouosly monitoring the jobs page is to run a tests every
# hour, that prints a bunch of output for a whole hour.
#
# Then, to simulate a user that follows the live log, we will open the same job
# in a local fireofx that follow the live log.
#
# The JobPage and Loghub have internal metrics that we can follow.

page_url="https://renderedtext.semaphoreci.com/jobs/$SEMAPHORE_JOB_UUID"

echo "Opening $page_url"

firefox -headless $page_url &
