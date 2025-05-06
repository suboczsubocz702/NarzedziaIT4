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

# Function to initialize repository and set PATH
init_repo() {
    git clone <URL-repozytorium> .
    export PATH=$PATH:$PWD
    echo "Repository cloned and PATH updated."
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
# Function to create error files
create_errors() {
    local num_files=$1
    mkdir -p error$num_files
    for ((i=1; i<=num_files; i++)); do
        echo "File: error$i.txt" > error$num_files/error$i.txt
        echo "Created by: script.sh" >> error$num_files/error$i.txt
        echo "Date: $(date)" >> error$num_files/error$i.txt
    done
}
# Function to display help
show_help() {
    echo "Available options:"
    echo "--date, -d      Display the current date"
    echo "--logs, -l      Create 100 log files (log1.txt to log100.txt)"
    echo "--logs N, -l N  Create N log files"
    echo "--error, -e     Create 100 error files (error1.txt to error100.txt)"
    echo "--error N, -e N Create N error files"
    echo "--init          Clone repository and update PATH"
    echo "--help, -h      Display this help message"

esac
