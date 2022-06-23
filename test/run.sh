#!/usr/bin/env bash
DIR="$HOME/trabajo/polite-mystery-queen"

#https://misc.flogisoft.com/bash/tip_colors_and_formatting
#echo -e "Default \e[102mLight green"

#https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#https://en.wikipedia.org/wiki/ANSI_escape_code
#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37

YEL='\033[1;33m'
GRE='\033[1;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
#printf "I ${RED}love${NC} Stack Overflow\n"

printf "${YEL}codename${NC}\n"
cd "$DIR/codename/cmd/codename"
go run main.go
echo

printf "${GRE}namegen${NC}\n"
cd "$DIR/namegen/cmd/namegen"
go run main.go
echo

printf "${GRE}node 1${NC}\n"
cd "$DIR/misc"
node npm.js
echo

printf "${GRE}node 2${NC}\n"
node getRandomName.js
echo

printf "${GRE}php${NC}\n"
curl -k "https://frightanic.com/goodies_content/docker-names.php"
<<<<<<< HEAD
=======
echo

printf "${RED}codename${NC}\n"
cd "$DIR/codename"
go run codename.go
>>>>>>> 62c8334143a05124af58ce29b26d958f942b9fb8
echo

printf "${RED}namesgenerator${NC}\n"
cd "$DIR/namesgenerator"
go run names-generator.go
echo
