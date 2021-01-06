# oneliner
This is an example of a nice netcat one line server (Mostly just to show how cool pipes can be)
## How to use

You just need to do a script that we will call `test.sh`

```bash
#!/bin/bash
echo "************PRINT SOME TEXT***************\n"
echo "Hello World!!!"
echo "\n"
echo "Resources:"
echo "\n"
echo "Addresses:"
echo "$(ifconfig)"
echo "\n"

```
And then while in the same folder you run the one line server:
```bash
while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; sh test.sh; } | nc -l 1234 -q 1; done &
```

### Consider changing
+ `test.sh` is the script that we will run and take its output 
+ `1234` is the port that we will use.
+ `-q 1` is the timeout value, change it if your script is slow
+ pretty much everything else should remain immutable.

## Conclusion!!!

**So thats it!!!** Thanks for ~joining my ted talk....I mean,~ reading my README.md

# PS

**YES, I KNOW THERE ARE MORE THAN ONE LINE BECAUSE OF MY TEST.SH**, but that is not a part of the server, just the data.
