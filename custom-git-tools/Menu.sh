#!/bin/bash
source ./text_utils.sh

./Logo.sh


while true; do
clear_and_header
type_text "Select the Git Script: "
echo 
type_text "1. Create Local and Online Repository"
type_text "2. Update the repository"
type_text "3. Exit"
read answear

    case $answear in
        1)
            ./CreateGitRepository.sh
            ;;
        2)
            ./UpdateRepository.sh
            ;;
        3)
            clear
            exit
            ;;
        *)
            echo "Wrong Input, try again!" 
            sleep 1
            ;;
    esac

done 