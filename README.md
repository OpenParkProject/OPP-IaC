# Open Park Project IaC
This repository contains everything needed to deploy the Open Park Project infrastructure.

## Run as a Container
You can build the image yourself or use the pre-built image from the ghcr.io registry.

### Pull the container image
Pull the container image from the ghcr.io registry:
```bash
docker run -p <ext_port>:80 ghcr.io/openparkproject/opp-nginx:latest
```

### Build the container image
Build the container image using docker/podman:
```bash
docker build -t localhost/opp-nginx .
docker run -p <ext_port>:80 localhost/opp-nginx
```