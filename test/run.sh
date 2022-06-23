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

#RED='\033[0;31m'
YEL='\033[1;33m'
GRE='\033[1;32m'
BLU='\033[0;34m'
PUR='\033[0;35m'

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

printf "${BLU}docker-names${NC}\n"
cd "$DIR/misc"
node npm.js
echo

printf "${PUR}getRandomName${NC}\n"
node getRandomName.js
echo

printf "${YEL}names-generator${NC}\n"
node names-generator.js
echo

printf "${GRE}php${NC}\n"
curl -k "https://frightanic.com/goodies_content/docker-names.php"
echo
