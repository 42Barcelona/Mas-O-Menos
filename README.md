# 42 Barcelona - Mas O Menos
> In this tutorial, you'll learn step by step how to do a little game in Shell Script

## Level 0: *Hello 42 !*

### Open a Shell
- Open a terminal on your computer

#### Linux
> This step is for Linux users only
- Press `Ctrl` + `Alt` + `T`

#### MacOS
> This step is for MacOS users only
- Press `Command` + `Space`, then type `term` and click on the app you want to launch

You should end up with something like this:
![This is a Terminal](./assets/shot_1.png)


### Create & Edit a file
In the terminal, we are using this syntax:
```bash
command --options arguments
```
- Let's use the command `nano`, which is a basic text editor
- We will give as arguments the name of the file we want to create `mas_o_menos.sh`
- The full command line will look like that: `nano mas_o_menos.sh`
![This is a command line](./assets/shot_2.png)
- Press `enter` to execute it

### Use Nano
- Your file should contain this line, type it:
 ```bash
 echo 'Hello 42 !'
 ```

- Press `Ctrl` + `x` to save your file
![This is how to save](./assets/shot_3.png)
- Press `y` to confirm
![This is how to confirm](./assets/shot_4.png)
- Press `Enter` to exit

### Run your program
It's time to see what you did
- Run your program with the command `bash mas_o_menos.sh`

Well done, you did your first Hello World !

## Level 1: Let's play !

### Choose an interpreter
- Indicate the interpretor to use to execute your script, the first line should be exactly:
`#!/usr/bin/env bash`
 
 Your file should look like that:
 ```bash
 #!/usr/bin/env bash

 echo 'Hello 42 !'
 ```

### It's not a file, it's a program
- Tell the computer to treat your file as a program by giving execution permission
- Run `chmod +x mas_o_menos.sh`

Your file is now executable, you can run it typing: `./mas_o_menos.sh`

### Varaiable
> You will modify your file, in order to print in the terminal the content of the variable MESSAGE, you will be able to change the message printed by changing the value of the variable
- In your file, replace `'Hello 42 !'` by `$MESSAGE`
- Add a line just above to set the value of the variable MESSAGE: `MESSAGE='Hello 42 !'`
- Your file to match the following:
```bash
#!/usr/bin/env bash

MESSAGE='Hello 42 !'
echo $MESSAGE
```
- Save & test your program by running `./mas_o_menos.sh`

### Talk to me
> You will make your program able to ask something to the user and get an answer
- Add a line at the bottom of the file: `read ANSWER`
- And another one to display the answer: `echo $ANSWER`
- Your file should look like that:
```bash
#!/usr/bin/env bash

MESSAGE='Hello 42 !'
echo $MESSAGE
read ANSWER
echo $ANSWER
```
- Save & run your program to test it !

### You shall not pass
> You will learn how to make your program smart
- Update the MESSAGE value to ask the age of the user: `echo 'Hello 42 ! What's the answer ?'`
- Add thoses lines at the bottom of the file to check if the age is equal to 42
> Be careful about special characters like spaces and the quotes
```bash
if [ "$ANSWER" = 42 ]
then
	echo 'Welcome at 42 !'
else
	echo 'You shall not pass !'
fi
```

- Save & test, you can also remove the line: `echo $ANSWER`

 Your file should look like this:
 ```bash
 #!/usr/bin/env bash

MESSAGE='Hello 42 ! What's the answer ?'

echo $MESSAGE
read ANSWER

if [ "$ANSWER" = 42 ]
then
	echo 'Welcome at 42 !'
else
	echo 'You shall not pass !'
fi
```

### Again
> You will learn how to do a loop to not write two times the same piece of code
- Add between `MESSAGE='Hello 42 ! What's the answer ?'` and `echo $MESSAGE` the following
```bash
while true
do
```
- And after the line `fi`, add `done`
Your file should be like that:
```bash
#!/usr/bin/env bash

MESSAGE="Hello 42 ! What's the answer ?"
while true
do
  echo $MESSAGE
  read ANSWER

  if [ "$ANSWER" = 42 ]
  then
    echo 'Welcome at 42 !'
  else
    echo 'You shall not pass !'
  fi
done
```

- Run your program to test it, press `Ctrl` & `C` to quit

### The end
> Add an exit to your program
- Between the line `echo 'Welcome at 42 !'` and the line `else` add `exit 0`

### Mas O Menos
> You will implement the game plus or minus, the goal is to find a hidden number in the less tries possible
- Under `MESSAGE=`, add `SECRET=$(date +%s | rev | cut -c1-2)`
> This **magic** command line `$(date +%s | rev | cut -c1-2)` will generate an **arbitrary number between `00` and `99`** (both included), don't try to understand it
- In the line: `if [ "$ANSWER" = 42 ]`
  - Replace `42` by `"$SECRET"`
  - It should be like `if [ "$ANSWER" = "$SECRET" ]`
- Replace the line `MESSAGE=...` by `MESSAGE="Hello at 42 ! What's the password ?"`
- You will add a clue:
  - Add a line to check if it's greater or lower than the secret number
  - Under `echo 'You shall not pass !'`, add the following:
```bash
if [ "$SECRET" -gt "$ANSWER" ]
then
	echo "The secret number is greater !"
else
	echo "The secret number is lower !"
fi
```
- You can save and try to play
> You can play with a friend, tour per tour the frst one to guess it wins
