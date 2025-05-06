#!/bin/bash

# Function to display the current date
show_date() {
    date
}

# Function to create log files
create_logs() {
    local num_files=$1
    for ((i=1; i<=num_files; i++)); do
        echo "File: log$i.txt" > log$i.txt
        echo "Created by: script.sh" >> log$i.txt
        echo "Date: $(date)" >> log$i.txt
    done
}

# Function to display help
show_help() {
    echo "Available options:"
    echo "--date    Display the current date"
    echo "--logs    Create 100 log files (log1.txt to log100.txt)"
    echo "--logs N  Create N log files"
    echo "--help    Display this help message"
}

# Main script logic
case "$1" in
    --date)
        show_date
        ;;
    --logs)
        if [ -z "$2" ]; then
            create_logs 100
        else
            create_logs "$2"
        fi
        ;;
    --help)
        show_help
        ;;
    *)
        echo "Unknown option. Use --help for available options."
        exit 1
        ;;
esac
