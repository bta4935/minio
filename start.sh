#!/bin/sh

# Enable MinIO web browser
export MINIO_BROWSER=on

# Print connection info for debugging
echo "Current PORT: $PORT"
echo "Console PORT: $CONSOLE_PORT"
echo "MINIO_ROOT_USER: $MINIO_ROOT_USER"

# Run MinIO server binding API and Console to all interfaces on specified ports
exec minio server /data --address "0.0.0.0:$PORT" --console-address "0.0.0.0:$CONSOLE_PORT"
