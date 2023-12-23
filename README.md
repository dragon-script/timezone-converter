# Timezone Converter

## Overview

The Timezone Converter Script is a Bash script that allows users to convert a given date and time from one timezone to another. It utilizes the `date` command to perform the conversion. Users are prompted to enter the date and time, source timezone, and target timezone, and the script displays the converted datetime.

## Usage

### Prerequisites

- Bash shell
- Linux or Unix-like environment
- `date` command

### Running the Script

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/dragon-script/timezone_converter.git
    ```

2. **Navigate to the Script:**

    ```bash
    cd timezone_converter
    ```

3. **Make the script executable:**
   ```bash
   chmod +x timezone_converter.sh
   ```

4. **Run the script:**
   ```bash
   ./timezone_converter.sh
   ```

### User Input

- **Date and Time Format:** YYYY-MM-DD HH:MM:SS
- **Source Timezone:** The timezone of the input datetime.
- **Target Timezone:** The desired timezone for conversion.

### Example

1. Enter the required information when prompted:
   ```
   Enter date and time (YYYY-MM-DD HH:MM:SS): 2023-01-01 12:00:00
   Enter source timezone: America/New_York
   Enter target timezone: Europe/London
   ```

2. The script will display the converted datetime:
   ```
   Converted datetime: 2023-01-01 17:00:00
   ```

## Customization

You can customize the script by modifying the following:

- **convert_timezone function:** Modify the function to adjust the conversion logic if needed.


