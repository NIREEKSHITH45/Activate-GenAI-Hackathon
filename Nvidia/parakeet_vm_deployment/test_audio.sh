#!/bin/bash

# Function to prompt user for input if not provided as argument
prompt_for_input() {
    local var_name=$1
    local prompt_message=$2
    local var_value=$3

    if [ -z "$var_value" ]; then
        read -p "$prompt_message" var_value
        echo "$var_value"
    else
        echo "$var_value"
    fi
}

# Function to display help message
function display_help() {
    echo "Usage: $0 --server <server_address> --path <path_to_speech_file>"
    echo
    echo "   --server        The server address (e.g., 0.0.0.0:50051)"
    echo "   --path          The path to the speech file"
    echo
    exit 1
}

# Parse command-line arguments
while [[ "$1" != "" ]]; do
    case $1 in
        --server )           shift
                             server=$1
                             ;;
        --path )             shift
                             path_to_speech_file=$1
                             ;;
        * )                  display_help
                             exit 1
    esac
    shift
done

# Check if PIP is installed, otherwise proceed after installing
if ! command -v pip &> /dev/null
then
    echo "PIP not found, installing PIP..."
    sudo apt-get install python3-pip -y
fi

# Install required Python packages quietly
pip install -q -r https://raw.githubusercontent.com/nvidia-riva/python-clients/main/requirements.txt
pip install -q --force-reinstall git+https://github.com/nvidia-riva/python-clients.git

# Clone RIVA sample clients repository if it doesn't exist
if [ ! -d "python-clients" ]; then
    echo "Cloning NVIDIA RIVA python clients repository..."
    git clone https://github.com/nvidia-riva/python-clients.git
else
    echo "RIVA python clients repository already cloned. Skipping clone."
fi

# Prompt user for server and path just before running the final command
server=$(prompt_for_input "server" "Enter the server address (e.g., 0.0.0.0:50051): " "$server")
path_to_speech_file=$(prompt_for_input "path_to_speech_file" "Enter the path to the speech file: " "$path_to_speech_file")

# Verify that both inputs are provided
if [ -z "$server" ] || [ -z "$path_to_speech_file" ]; then
    echo "Error: Missing server address or path to speech file."
    display_help
    exit 1
fi

# Run the transcription using the provided server and file path
python3 python-clients/scripts/asr/transcribe_file_offline.py --server $server --input-file $path_to_speech_file --language-code en-US
