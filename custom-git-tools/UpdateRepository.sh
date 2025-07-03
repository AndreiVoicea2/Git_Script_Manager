source ./text_utils.sh
cd "$(dirname "$0")/.."
git add .

clear_and_header
type_text "Enter Commit Message: "
read title
clear_and_header

type_text "Enter pull request description"
read description
clear_and_header

git commit -m "$title"

current_branch=$(git branch --show-current)

git push origin "$current_branch"

gh pr create --base main --head "$current_branch" --title "$title" --body "$description"
read -p "Press Enter to continue..."
