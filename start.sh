#!/bin/sh

# Set environment variables needed for proper Render deployment
export MINIO_BROWSER=on

# Ensure MINIO_SERVER_URL is set
if [ -z "$MINIO_SERVER_URL" ]; then
  export MINIO_SERVER_URL="https://minio-ciok.onrender.com"
fi

# Force MinIO to use the same port for both API and Console
export MINIO_ADDRESS=":$PORT"
export MINIO_CONSOLE_ADDRESS=":$PORT"

# Print configuration for debugging
echo "Starting MinIO with:"
echo "MINIO_SERVER_URL: $MINIO_SERVER_URL"
echo "MINIO_ADDRESS: $MINIO_ADDRESS"
echo "MINIO_CONSOLE_ADDRESS: $MINIO_CONSOLE_ADDRESS"

# Start MinIO server
exec minio server /data
