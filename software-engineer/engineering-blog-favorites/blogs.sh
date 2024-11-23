#!/bin/bash

# Set the title of the terminal window (supported on some terminal emulators)
TITLE="Software Engineering - Tech Blogs"
echo -ne "\033]0;$TITLE\007"

echo "Starting access to resources..."

# File containing the URLs
URL_FILE="resources.txt"

# Check if the file exists
if [ -f "$URL_FILE" ]; then
    # Loop through each line in the file and open the URLs
    while IFS= read -r url; do
        # Skip empty lines
        if [ -z "$url" ]; then
            continue
        fi

        open -a "Microsoft Edge" "$url" &
    done < "$URL_FILE"
else
    echo "File '$URL_FILE' not found."
fi

echo "Successfully accessed - $TITLE"

# Wait for user input before closing (simulate 'pause' in .bat)
read -p "Press any key to continue..."
