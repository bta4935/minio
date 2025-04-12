#!/bin/sh

# Set environment variables needed for proper Render deployment
export MINIO_BROWSER=on

# Ensure MINIO_SERVER_URL is set
if [ -z "$MINIO_SERVER_URL" ]; then
  export MINIO_SERVER_URL="https://minio-ciok.onrender.com"
fi

# Unlike older versions, newer MinIO requires different ports for API and console
# Using command-line arguments instead of environment variables for flexibility
echo "Starting MinIO with port $PORT"

# Run the server with command line arguments
# API on the assigned PORT and console on internal port
exec minio server /data --address ":$PORT" --console-address ":9001"
