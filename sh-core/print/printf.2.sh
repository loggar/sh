printf "23+32=%d\n" $((23+32))

printf "There are %d directories\n" $(ls -d */ | wc -l)

printf "Current user: %s\n" $(whoami)

printf "One: %s two: %s\n" "Alpha"

printf "One: %s two: %s\n" "Alpha" 777

printf "Integer: %d\n"

printf "Integer: %d\n" "Seven"

printf "The Euro symbol: \u20AC\n"

printf "%s" "\u20AC\n"

printf "%b" "\u20AC\n"

printf "%b" "Tha-" "tha-" "tha-" "that's all folks.\n"
