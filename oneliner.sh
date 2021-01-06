#!/bin/bash

# This is the only important line, its inside this file just because. As a matter of fact, is also in the readme.
while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; sh test.sh; } | nc -l 1234 -q 1; done &
