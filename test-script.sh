#!/bin/bash

# Load variables from .env
if [ -f .env ]; then
    export $(echo $(cat .env | sed 's/#.*//g' | xargs))
fi

echo "Starting $PROJECT_NAME version $APP_VERSION..."
echo "Running on port $DOCKER_PORT"

# Test ShellCheck and Formatting
target_dir="./backup"

if [ ! -d "$target_dir" ]; then
    echo "Creating directory: $target_dir"
    mkdir -p "$target_dir"
fi

echo "Setup is working!"
