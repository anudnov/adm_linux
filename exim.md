
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
Path to exim command
```
/usr/sbin/exim -q
/usr/sbin/exim -qff
etc
```

### Delete messages from the exim mail queue
Delete a single message from the exim mail queue
_Use mailq / exim -bp to show the mail queue, e.g.:_
```
$ mailq
 0m   528 1XoIxD-0001rc-8J
```
_And then run exim -Mrm [message id] to delete the specific message:_
```
exim -Mrm 1XoIxD-0001rc-8J
```
_If the message is successfully deleted, you’ll see this:_
```
Message 1XoIxD-0001rc-8J has been removed
```
_If exim is currently processing the message, you’ll see this and it won’t be deleted:_
```
Message 1XoIxD-0001rc-8J is locked
```
#### Delete all messages in the exim mail queue
```
exiqgrep -i | xargs exim -Mrm
```
_And the result, if one could be removed and another one couldn’t:_
```
Message 1XoJ1U-0001sC-ME has been removed
Message 1XoJ1i-0001sQ-UJ is locked
```
### FROM:
https://electrictoolbox.com/exim-delete-message/
