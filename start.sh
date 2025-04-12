#!/bin/sh

# Use simpler configuration for Render
export MINIO_BROWSER=on

# Print connection info for debugging
echo "Current PORT: $PORT"
echo "MINIO_SERVER_URL: $MINIO_SERVER_URL"

# Run MinIO with just the bare minimum options
# Use the port that Render expects and let MinIO figure out the rest
exec minio server --address ":$PORT" /data
