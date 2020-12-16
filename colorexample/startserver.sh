#!/bin/bash

while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; sh test.sh; } | nc -l 1234 -q 1; done &

