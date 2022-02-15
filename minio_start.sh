cd ~/
export MINIO_ROOT_USER=c00cjz00
export MINIO_ROOT_PASSWORD=12345678@
export MINIO_REGION=us-east-1
minio server /fc2/minioData/data/ --address ":19001" --console-address ":19002"
minio server /fc2/minioData/data/ --address "0.0.0.0:19001" --console-address "0.0.0.0:19002"
