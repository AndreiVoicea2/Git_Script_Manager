#!/bin/bash
source ./text_utils.sh
cd "$(dirname "$0")/.."

#Authentification
if ! gh auth status >/dev/null 2>&1; then
gh auth login
fi 

#Local Setup
git init

touch README.md
echo "custom-git-tools/" > .gitignore
git add .
git commit -m "First Upload"

git checkout -b main
git branch update
git branch refactor

read -p "Press Enter to continue..."
clear_and_header

#Online Setup
type_text "Repository name: "
read repo_name

while true; do

    clear_and_header
    type_text "Select the privacy: "
    type_text "1. Public"
    type_text "2. Private"
    read privacy

    case $privacy in
        1)
            repo_type="--public"
            break
            ;;
        2)
            repo_type="--private"
            break
            ;;
        *)
            type_text "Wrong Input, try again!" 
            sleep 1
            ;;
    esac

done

gh repo create "$repo_name" $repo_type --source=. --remote=origin --push

git checkout update