FROM docker.io/minio/minio:latest

# Set environment variables
ENV MINIO_ROOT_USER=Bakintolaminio
ENV MINIO_ROOT_PASSWORD=Bakin493541minio
ENV MINIO_BROWSER=on

# Create data directory
RUN mkdir -p /data

# This allows the container to use the PORT provided by Render
ENV PORT=9000

# We'll use an entrypoint script to handle the port substitution
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose the port (Render will map this to its assigned port)
EXPOSE 9000

# Use the entrypoint script
ENTRYPOINT ["/start.sh"]
