FROM docker.io/minio/minio:latest

ENV MINIO_ROOT_USER=Bakintolaminio
ENV MINIO_ROOT_PASSWORD=Bakin493541minio

EXPOSE 9000
CMD ["server", "--address", ":9000", "/data"]