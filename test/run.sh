#!/usr/bin/env bash
DIR="$HOME/trabajo/polite-mystery-queen"

#https://misc.flogisoft.com/bash/tip_colors_and_formatting
#echo -e "Default \e[102mLight green"

#https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#YEL='\033[1;33m'
GRE='\033[1;32m'
#RED='\033[0;31m'
NC='\033[0m' # No Color
#printf "I ${RED}love${NC} Stack Overflow\n"

printf "${GRE}namegen${NC}\n"
cd "$DIR/namegen/cmd/namegen"
go run main.go
#go run dictionary_test.go
#go run namegen_test.go
#go run namegen.go
#go run dictionary.go
echo

printf "${GRE}codename${NC}\n"
cd "$DIR/codename"
#go run codename_test.go
go run codename.go
#go run adjectives.go
#go run nouns.go
echo

printf "${GRE}namesgenerator${NC}\n"
cd "$DIR/namesgenerator"
#go run names-generator_test.go
go run names-generator.go
echo

printf "${GRE}node 1${NC}\n"
cd "$DIR/misc"
node npm.js
echo

printf "${GRE}node 2${NC}\n"
node getRandomName.js
echo
