FROM docker.io/minio/minio:latest

# Set environment variables
ENV MINIO_ROOT_USER=Bakintolaminio
ENV MINIO_ROOT_PASSWORD=Bakin493541minio
ENV MINIO_BROWSER=on

# Create data directory
RUN mkdir -p /data

# Use environment variable PORT provided by Render (default 9000)
ENV PORT=9000
ENV CONSOLE_PORT=9090

# Copy entrypoint script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose the API and Console ports
EXPOSE 9000
EXPOSE 9090

# Use the entrypoint script
ENTRYPOINT ["/start.sh"]
