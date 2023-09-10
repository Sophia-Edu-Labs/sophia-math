#!/bin/bash

###############################################################################
# Because the requirements in our requirements txt file are not compatible when 
# using pip's dependency resolving mechanism, we will just install them in 
# order, because that works (for now)
###############################################################################

# Check if the file path is provided
if [ -z "$1" ]; then
    echo "Error: Path to requirements.txt file must be provided."
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Loop through each line in the provided file
while read package; do
    # Skip lines that are empty or start with a comment
    [[ -z "$package" || "$package" == "#"* ]] && continue

    # Install the package
    pip install $package
done < "$1"

echo "Finished installing packages."
