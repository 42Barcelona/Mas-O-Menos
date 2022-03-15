# 42 Barcelona - Mas O Menos
> In this tutorial, you'll learn step by step how to do a little game in Shell Script

## Open a Shell
- Open a terminal on your computer

### Linux
> This step is for Linux users only
- Press `Ctrl` + `Alt` + `T`

### MacOS
> This step is for MacOS users only
- Press `Command` + `Space`, then type `term` and click on the app you want to launch

## Create & Edit a file
> In the terminal, we are using this syntax: `command --options arguments` 
- Let's use the command `nano`, which is a basic text editor
- We will give as arguments the name of the file we want to create `mas_o_menos.sh`
- The full command line will look like that: `nano mas_o_menos.sh`
- Press enter to execute it

### Use Nano
- Type whatever you want
- Press `Ctrl` + `x` to save your file
- Press `y` to confirm
- Press `Enter` to exit

> Well done, you did your first file !

## Choose interpreter
- Indicate the interpreter to use, the first line should be exactly:
`#!/usr/bin/env bash`

> - `#!` indicate that this line is special, it has to be the first line of the file
> - `/usr/bin/env` is the absolute path of a program that find other programs
> - `bash` is the program who will interpret our file

## Say Hello 42 !
- Make your script print `Hello 42 !`
- Add the following line: `echo Hello 42 !`

The script should looki like that:
```
#!/usr/bin/env bash

echo 'Hello 42 !'
```

- Run the command 
