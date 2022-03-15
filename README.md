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
> The difference between a script langage and a compiled one is that the compilation produce a binary directly readable by the computer when the script needs an interpret to translate it to the computer each time you want to execute it

> By definition a script needs to be interpreted and to do so an interpretor
>
> You can specify which interpretor to use in two different ways:
> - By adding at the very beginning of the file `#!` followed by the full path of the interpretor
>   - For example: `#!/bin/bash` will be interpreted by the program stored at `/bin/bash` location
>   - In such case, you need to ensure that your file is executable
>     - Use `chmod +x ./mysuperfile.txt` to make it executable
>     - Finally you can call your script as any other program like: `./mas_o_menos.sh`
> - The other ways is to call yourself the interpretor with your script
>   - For example: `/bin/bash mysuperscript.sh` or `bash mas_o_menos.sh`
>   - It works with any interpretor: `python3 42barcelona_script.py3`


- Indicate the interpretor to use to execute your script, the first line should be exactly:
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
