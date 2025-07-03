# This command first generates a list of all JSON filenames in the
# project. It then generates a second list of all strings ending in
# .json found within any Go file. Finally, it uses comm to show only the
# filenames from the first list that do not appear in the second list.

comm -23 <(find . -name '*.json' -exec basename {} \; | sort -u) <(grep -h -r -o -E '[a-zA-Z0-9_.-]+\.json' --include='*.go' . | sort -u)