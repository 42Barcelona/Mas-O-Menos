## Create a file
> To run a command type a command then press enter
- With nano Create a file named `mas_o_menos.sh`
```
nano mas_o_menos.sh
```
- Press `Ctrl` + `x` to save your file
- Press `y` to confirm
- Press `Enter` to exit

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
