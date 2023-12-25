#!/bin/bash

# Directory containing the Excel files
excel_dir="/home/monoxide/Desktop/projects/Olympic-Data-Engineering/excel-files"

# Loop through each Excel file in the directory
for file in "$excel_dir"/*.xlsx; do
    if [ -f "$file" ]; then
        # Convert the Excel file to CSV
        libreoffice --headless --convert-to csv "$file" --outdir "$excel_dir"
        echo "Converted $file to CSV"
    fi
done
