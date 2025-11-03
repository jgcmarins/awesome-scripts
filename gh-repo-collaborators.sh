USERNAME="jgcmarins"; \
gh repo list "$USERNAME" --limit 250 --json name -q '.[].name' \
| while read -r repo; do
  echo "== $USERNAME/$repo =="
  gh api repos/"$USERNAME"/"$repo"/collaborators --paginate \
    --jq '.[] | select(.login!="'$USERNAME'") | "\(.login) [\((.permissions|to_entries|map(select(.value==true))|map(.key)|join(", "))) ]"'
done
