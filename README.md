# Open Park Project IaC
This repository contains everything needed to deploy the Open Park Project infrastructure.

## Get the container image
You can build the image yourself or use the pre-built image from the ghcr.io registry.

### Pull the container image
Pull the container image from the ghcr.io registry:
```bash
docker pull ghcr.io/open-park-project/opp-nginx:latest
```

### Build the container image
Build the container image using docker/podman:
```bash
docker build -t localhost/opp-nginx .
```

## Run the container
Run the container:
```bash
docker run -p <ext_port>:80 localhost/opp-nginx
```