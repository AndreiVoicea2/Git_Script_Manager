#!/bin/bash

TypingSpeed=0.01
GREEN="\e[32m"
RESET="\e[0m"

type_text() {
  
    stty -echo
    text="$1"
    delay="${2:-$TypingSpeed}"
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${GREEN}${text:$i:1}"
        sleep "$delay"
    done
    echo
    stty echo

}

clear_and_header() {
  clear
  echo -e "        \e[32mROBCO INDUSTRIES UNIFIED OPERATING SYSTEM       "
  echo -e "          \e[32mCOPYRIGHT 2075-2077 ROBCO INDUSTRIES          "
  echo -e "                        \e[32m-Server 6-                      "
  echo
  echo
  echo
}
