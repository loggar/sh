# Find all files named 'config.dev.json' in the current directory and
# its subdirectories and rename them to 'config.test.json'.
find . -name 'config.dev.json' -exec sh -c 'mv "$1" "${1%.dev.json}.test.json"' _ {} \;

find . -name '*-dev.json' -exec sh -c 'mv "$1" "${1/-dev/-test}"' _ {} \;

# subdirectories and show what their new names would be.
find . -name '*-dev-*.json' -exec sh -c 'echo "$1" → "${1/-dev-/-test-}"' _ {} \;
# Find all files named '*-dev-*.json' in the current directory and its
# subdirectories and rename them to '*-test-*.json'.
find . -name '*-dev-*.json' -exec sh -c 'mv "$1" "${1/-dev-/-test-}"' _ {} \;