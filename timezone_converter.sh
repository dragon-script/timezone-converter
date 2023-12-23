#!/bin/bash

# Function to convert a date and time from one timezone to another
convert_timezone() {
    local input_datetime="$1"
    local input_timezone="$2"
    local output_timezone="$3"

    # Convert using the date command
    local converted_datetime=$(date -d "$input_datetime" -u +"%Y-%m-%d %H:%M:%S" --date="TZ=\"$input_timezone\" $input_datetime" --date="TZ=\"$output_timezone\"")
    
    echo "$converted_datetime"
}

# Check if required command is available
if ! command -v date &> /dev/null; then
    echo "Error: 'date' command not found. Please ensure that the script is run in a Unix-like environment."
    exit 1
fi

# Get user input
read -p "Enter date and time (YYYY-MM-DD HH:MM:SS): " input_datetime
read -p "Enter source timezone: " input_timezone
read -p "Enter target timezone: " output_timezone

# Convert and display the result
converted_datetime=$(convert_timezone "$input_datetime" "$input_timezone" "$output_timezone")
echo "Converted datetime: $converted_datetime"
