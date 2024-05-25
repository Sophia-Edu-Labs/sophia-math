#!/bin/bash

# Array of locales to run
LOCALES_TO_RUN=("de" "en")

# Function to show a progress animation
show_progress() {
  local pid=$1
  local delay=0.1
  local spinstr='|/-\'
  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    local temp=${spinstr#?}
    printf " [%c]  " "$spinstr"
    spinstr=$temp${spinstr%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

# Main script loop
for LOCALE in "${LOCALES_TO_RUN[@]}"; do
  echo "Generating for locale '$LOCALE'..."
  export LOCALE=$LOCALE
  python get_prototypes_json.py &
  show_progress $!
  wait $!
  echo "Done generating for locale '$LOCALE'"
done

echo "All tasks completed."