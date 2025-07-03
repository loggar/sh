# If you don't have jq installed, you can install it with Homebrew:
# brew install jq

# This command uses jq, a command-line JSON processor, to safely remove
# the top-level dev key and its corresponding value from all JSON files.
# Using a JSON-aware tool like jq is more robust than using regular
# expressions with tools like sed or grep, as it correctly handles
# complex and multi-line JSON structures.

# This command will find all files ending in .json and modify them
# in-place.

find . -name '*.json' -exec sh -c 'jq --indent 2 "del(.dev)" "$1" > "$1.tmp" && mv "$1.tmp" "$1"' _ {} \;