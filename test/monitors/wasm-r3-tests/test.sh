for subfolder in $(pwd)/*/; do
    folder_name=$(basename "$subfolder")
    wizeng '--monitors=r3{host_prefix=r3}' $folder_name/replay.wasm | python3 validate-trace.py $folder_name/trace.r3 
    if [ $? -ne 0 ]; then
        # If the command failed, print the folder name
        echo "Fail: $folder_name"
    fi
done