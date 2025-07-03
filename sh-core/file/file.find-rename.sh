# Find all files named `config.dev.json` in the current directory and its subdirectories and rename them to `config.test.json`.
find . -name 'config.dev.json' -exec sh -c 'mv "$1" "${1%.dev.json}.test.json"' _ {} \;
