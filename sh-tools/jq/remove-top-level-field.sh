# If you don't have jq installed, you can install it with Homebrew:
# brew install jq

# This command will find all .json files and, for each one, run a small
# shell script that checks for the "dev" key with jq and prints the
# filename if found.
find . -name '*.json' -exec sh -c 'if jq -e ".dev" "$1" >/dev/null 2>&1; then echo "$1"; fi' _ {} \;

find . -name '*.json' \
    -not -name 'abc.json' \
    -not -name '123.json' \
    -exec sh -c 'if jq -e ".dev" "$1" >/dev/null 2>&1; then echo "$1"; fi' _ {} \;


# This command uses jq, a command-line JSON processor, to safely remove
# the top-level dev key and its corresponding value from all JSON files.
# Using a JSON-aware tool like jq is more robust than using regular
# expressions with tools like sed or grep, as it correctly handles
# complex and multi-line JSON structures.

# This command will find all files ending in .json and modify them
# in-place.

find . -name '*.json' -exec sh -c 'jq --indent 2 "del(.dev)" "$1" > "$1.tmp" && mv "$1.tmp" "$1"' _ {} \;

# This command will find all files ending in .json, excluding specific
# filenames, and modify them in-place.

find . -name '*.json' \
    -not -name 'abc.json' \
    -not -name '123.json' \
    -exec sh -c 'jq --indent 2 "del(.dev)" "$1" > "$1.tmp" && mv "$1.tmp" "$1"' _ {} \;

# This command will find all files ending in .json, excluding specific
# filenames, and modify them in-place only when the "dev" key exists in
# the JSON file.

find . -name '*.json' \
    -not -name 'abc.json' \
    -not -name '123.json' \
    -exec sh -c 'if jq -e ".dev" "$1" >/dev/null 2>&1; then jq --indent 2 "del(.dev)" "$1" > "$1.tmp" && mv "$1.tmp" "$1"; fi' _ {} \;