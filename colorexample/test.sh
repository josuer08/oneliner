#!/bin/bash
#echo -e 'HTTP/1.1 200 OK\r\n'

#echo "************PRINT SOME TEXT***************\n"

echo "Hello World!!!" > hola.txt

#echo "\n"

echo "Resources:" >> hola.txt

grc --colour=on vmstat -S M >> hola.txt

#echo "\n"

echo "Addresses:" >> hola.txt

echo "$(grc --colour=on ip addr)" >> hola.txt

#echo "\n"

grc --colour=on ping -c 1 google.com >> hola.txt
cat hola.txt | ./ansi2html.sh > hola.html
echo "$(cat hola.html)"

