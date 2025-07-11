# To find all .json files while excluding specific filenames.

find . -name '*.json' \
    -not -name 'abc.json' \
    -not -name '123.json' \