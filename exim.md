
### Show the exim mail queue
_To view the exim mail queue issue the following command:_
```
mailq
```
_or_
```
exim -bp
```
_If exim is in /usr/sbin and /usr/sbin is not in your path, you’ll need to prefix the command with the full path like so:_
```
/usr/sbin/exim -bp
```
Example output
```
4d  1.2K 1Ka6u5-00032Z-Eb <from@example.com>
          to@example.com

62h  1.2K 1KaRH0-0007QZ-B5 <from@example.com>
          to@example.com

3h   22K 1KbLHr-0004ev-An <from@example.com>
          to@example.com
```

Finding the files with the find command
_Using the "find" command you could do this to locate all the relevent files:_
```
find /var/spool/exim -name "1Ka6u5-00032Z-Eb*"
```
_which would display something like this:_
```
/var/spool/exim/msglog/1Ka6u5-00032Z-Eb
/var/spool/exim/input/1Ka6u5-00032Z-Eb-D
/var/spool/exim/input/1Ka6u5-00032Z-Eb-H
```

### Flush the exim mail queue
Command to flush the exim queue
_There are two ways to flush the exim mail queue:_
```
runq
```
_or_
```
exim -q
```
_Path to exim command
/usr/sbin/exim -q
/usr/sbin/exim -qff
etc_

### Show the exim mail queue




### Show the exim mail queue
