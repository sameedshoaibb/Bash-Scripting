#!/bin/bash


echo "What is your preferred programming / scripting language"
echo "1) bash"
echo "2) perl"
echo "3) phyton"
echo "4) c++"
echo "5) I do not know !"
read case;
#simple case bash structure
# note in this case $case is variable and does not have to
# be named case this is just an example
case $case in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac 



#########################################
# To select from menu bar
#########################################
: '
PS3=Choose one word: 

# bash select
select word in "linux" "bash" "scripting" "tutorial" "aatif" "ather" 
do
  echo "The word you have selected is: $word"
# Break, otherwise endless loop
  if [ $word = bash ]
  then
	echo "Kaam pachees"
 	exit 0
  else 
    echo -e 
  fi
    
 # break  
done

exit 0 '

#########################################
# IF/else & while loop
#########################################

: '
# Declare variable choice and assign value 4
choice=4
# Print to stdout
 echo "1. Bash"
 echo "2. Scripting"
 echo "3. Tutorial"
 echo -n "Please choose a word [1,2 or 3]? "
# Loop while the variable choice is equal 4
# bash while loop
while [ $choice -eq 4 ]; do
 
# read user input
read choice
# bash nested if/else
if [ $choice -eq 1 ] ; then
 
        echo "You have chosen word: Bash"

else                   

        if [ $choice -eq 2 ] ; then
                 echo "You have chosen word: Scripting"
        else
         
                if [ $choice -eq 3 ] ; then
                        echo "You have chosen word: Tutorial"
                else
                        echo "Please make a choice between 1-3 !"
                        echo "1. Bash"
                        echo "2. Scripting"
                        echo "3. Tutorial"
                        echo -n "Please choose a word [1,2 or 3]? "
                        choice=4
                fi   
        fi
fi
done  '

: '
echo -e "Hi, please type the word: \c  " # \c keeps the cursor on the same line,to use it, we need -e flag
read  word
echo "The word you entered is: $word"
echo -e "Can you please enter two words? "
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""
echo -e "How do you feel about bash scripting? "
# read command now stores a reply into the default build-in variable $REPLY
read
echo "You said $REPLY, Im glad to hear that! "
echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}" 
'


: '
	# Ta get run time values and paste it in variable

# use predefined variables to access passed arguments
#echo arguments to the shell
echo $1 $2 $3  '-> echo $1 $2 $3'

# We can also store arguments from bash command line in special array
args=($@)

#echo arguments to the shell
#echo ${args[0]} ${args[1]} ${args[2]}  -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}
echo "The specified arguments"$args

# use $# variable to print out
# number of arguments passed to the bash script
echo Number of arguments passed: $# ' -> echo Number of arguments passed: $#' '

: '
for i in {0..10}
do
DATA_GET=${wholist[i]}.pointtoserver.com
DATA_GET1=$(ping -c 1 $DATA_GET) 
echo $DATA_GET1  | cut -d " " -f 14-18 >> green.txt
done '

: 'ACTION=$(ping -c 1 google.com)
echo $ACTION | cut -d " " -f 15 '

# Check if the run time variables are provide or not
: '
E_BADARGS=65
if [ ! -z "$1" ] && echo "The first parameter is $1" && [ ! -z "$2" ] && echo "Second argument is $2"
then
echo "One parameter is passed"
else
echo "Pata nae what is passed in the parmeter"
fi '



# basename will only extract the file name, and remove the path
: '
cmd="$(basename)"
echo $cmd '

# arays in bash
: '
arr[0]=20
arr[1]=30

#echo -e "${arr[0]} \n ${arr[1]}"
echo -e "${arr[0]} \n${arr[1]}" '


# take run time inputs from cmd
: '
echo $1 $2 "Hurn das?" '

#Standard output and standard error will be redirected to a file

: '
something >> sam.txt 2>&1 '

#LOOPS mini chapter

: '
file=/home/sameed/bashscript/sam1.txt
#echo "This line is sent to $file" 1>$file  #1> will not show output at the run time
echo "This line is sent to $file" > $file '


# Creating a Function

# creating function, the parameters will be provided via the cmd
: '
_(){	echo "This is $1, This is var2 $2"}
var1=10
var2=20
_ $1 $2

Now provide the parameters via the cmd and except the function to work '

: '			 # Cool way to call a function

_(){ echo "this a function example"}
_ '


: '			# Calling a fucntion from functioni
function1 ()
{
	echo "call \"f2\" from \"f1\"."
  	function2
}
function2 ()
{
	echo "this is \"f2\""
}
function1 '
: '
someFunc()
{
	echo "Function name is: $FUNCNAME"
}
someFunc
echo "Outside, \$Function_name: $FUNCNAME" '

# The [arameter -n will print th
: '
ROOT_UID=0
read val
echo -n "Sameed, the value is" $val
echo '
: '
ROOT_UID=0
echo -n "YOU ARE: " 
if [ "$UID -eq $ROOT_UID" ]
then 
	echo "root. YOUR \$UID = $UID"
else
	echo "user. YOUR \$UID = $UID"
fi '


: '
for n in {0..5}
do
echo "BASH_VERSION[$n]= ${BASH_VERSINFO[$n]}"
done '

# IF the result is ZERO,the exit status will be ONE {false}
# if the result is any non-zero value
: '
(( 2 < 1 ))
echo "Exit status is $?" '


# To check if the file id present or noti
: '
var=/home/sameed/ansible-play/ansible_deployment/this_yml.yml
if [ -e $var ]
then
echo "The file exists"
else
echo "The file does not exists"
fi '

# if the command line arguments is not provided as expected, it will print the error code

: '
NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "NO_OF_ARGS" ]
then
	echo "Useage: `basname $0` testFile1" 
exit $E_BADARGS
fi '

#systecmtl status httpd.service
: '
echo sameed
echo $? >> /home/sameed/bashscript/results.txt ' 


# Counter plus for loop
: '
counter=0
for var in 1 2 3 4 5 6 7 8 9
do
counter=$((counter+1))
echo "valaue of var is" $counter
done '

# Airthmatic calculation
: '
a=5
b=10
let val=a*b
let val1=$a/$b
echo $val
echo $val1 '

# To print some value in quotation mark
: '
echo "\"Linux is awsome\"" '

: '
name=10
echo "The word $name contains ${#name}" # To print no of words in a letter
echo "Enter your value"
read value '

#If-else condition factory

: '
if [ $value -eq 10 ] 
then
echo "Value is equal"
else
echo "value is smaller"
fi '

: '
read val
if [ $val != 0 ]
then
	echo "Value is not equal"
else
	echo "Value is equal"
fi '

: '
read val
if [ $val -eq 10 -o $val -gt 10 ]
then
echo "Value is equal to 10 or greater"
else
echo "fin"
fi '


# for loop 

: '   			       			
data="my name is sammeed"
for col in $data
do
	echo $col
done '

# value conversion
: '
echo "Enter something"; read value ; 
echo $value

echo "After conversion"
echo ${value,,} '


