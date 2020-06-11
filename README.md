# ext-rm-script

Lol torrented series folders are polluted with subtitle files, so was pain in the ass to run remove command individually in every
folder. Run this script in master directory and all the files with specified extension in the sub directory gets removed. Tadaaa!

How to use?
```
- Download the script
sudo mv rm-files.sh /user/local/bin

- Make it executable
sudo chmod -x /user.local/bin/rm-files.sh

- To make it globally executable
Add an alias to the bash or zsh file 
alias rmext="rm-files.sh"

```
TODO:

- [ ] Add a logger funtion that generated a file containing the name of all the files that the script removed.
