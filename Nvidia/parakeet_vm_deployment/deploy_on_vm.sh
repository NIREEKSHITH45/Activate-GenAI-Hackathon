#!/bin/bash

# Function to check if environment variable is already set
check_and_export() {
    local var_name=$1
    local var_value=$2
    if [ -z "${!var_name}" ]; then
        export $var_name=$var_value
        echo "$var_name is not set. Exporting $var_name=$var_value"
    else
        echo "$var_name is already set to ${!var_name}"
    fi
}

# Function to prompt for NGC API key if not set
prompt_ngc_api_key() {
    if [ -z "$NGC_API_KEY" ]; then
        read -sp "Enter your NGC API Key: " NGC_API_KEY
        echo
        export NGC_API_KEY=$NGC_API_KEY
        echo "NGC API Key has been set."
    else
        echo "NGC API Key is already set."
    fi
}

# Check if NVIDIA container toolkit is installed
if ! command -v nvidia-ctk &> /dev/null
then
    echo "NVIDIA Container Toolkit is not installed. Please download it from the following link:"
    echo "https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html"
    exit 1
else
    echo "NVIDIA Container Toolkit is installed. Proceeding with the setup..."

    # Check if runtime configuration has been done
    if [ ! -f "/etc/docker/daemon.json" ] || ! grep -q "nvidia" /etc/docker/daemon.json; then
        echo "Configuring NVIDIA runtime..."
        sudo nvidia-ctk runtime configure --runtime=docker

        # Restart docker only if configuration was applied
        echo "Restarting Docker to apply the configuration..."
        sudo systemctl restart docker
    else
        echo "NVIDIA runtime is already configured."
    fi

    # Prompt for NGC API key if not already set
    prompt_ngc_api_key

    # Set the container name
    check_and_export "CONTAINER_NAME" "parakeet-ctc-1.1b-asr"

    # Run the Docker container
    docker run -it --rm --name=$CONTAINER_NAME \
      --runtime=nvidia \
      --gpus '"device=0"' \
      --shm-size=8GB \
      -e NGC_API_KEY=$NGC_API_KEY \
      -e NIM_MANIFEST_PROFILE=9136dd64-4777-11ef-9f27-37cfd56fa6ee \
      -e NIM_HTTP_API_PORT=9000 \
      -e NIM_GRPC_API_PORT=50051 \
      -p 9000:9000 \
      -p 50051:50051 \
      nvcr.io/nim/nvidia/parakeet-ctc-1.1b-asr:1.0.0
fi
