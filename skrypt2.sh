if [[ $1 == "--logs" ]]; then
    count=100
    if [[ $2 =~ ^[0-9]+$ ]]; then
        count=$2
    fi

    for i in $(seq 1 $count); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Skrypt: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done
fi
