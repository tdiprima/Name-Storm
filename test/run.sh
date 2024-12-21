#!/usr/bin/env bash
# Determine the directory of this script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Colors for output
YEL='\033[1;33m'
GRE='\033[1;32m'
BLU='\033[0;34m'
PUR='\033[0;35m'
NC='\033[0m' # No Color

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
node dockerNamesGenerator.js
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
